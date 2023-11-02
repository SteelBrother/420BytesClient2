using _420BytesClient.App.Auth.Interfaces;
using Microsoft.AspNetCore.Components.Authorization;
using System.Security.Claims;
using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Model.Interfaces;
using System.Net.Http.Headers;
using Microsoft.JSInterop;
using _420BytesClient.App.Helpers;
using System.Text.Json;
using System.Reflection;
using _420BytesClient.DT.Usuario;

namespace _420BytesClient.App.Auth
{
    public class ProveedorAutenticacionJWT : AuthenticationStateProvider, IProveedorAutenticacionJWT
    {
        public static readonly string EXPIRATIONTOKENKEY = "EXPIRATIONTOKENKEY";
        public static readonly string TOKENKEY = "TOKENKEY";
        public static readonly string CEDULA = "CEDULA";
        public static readonly string NICKNAME = "NICKNAME";
        private readonly HttpClient httpClient;
        private readonly IJSRuntime js;
        private readonly IConexionRest ConexionRest;
        private readonly ISettings ISettings;
        public ProveedorAutenticacionJWT(IJSRuntime js, HttpClient httpClient, ISettings iSettings, IConexionRest conexionRest)
        {
            this.js = js;
            this.httpClient = httpClient;
            this.ISettings = iSettings;
            this.ConexionRest = conexionRest;
        }

        private static AuthenticationState Anonimo =>
            new(new ClaimsPrincipal(new ClaimsIdentity()));

        public AuthenticationState ConstruirAuthenticationState(string token)
        {
            httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("bearer", token);
            return new AuthenticationState(new ClaimsPrincipal(new ClaimsIdentity(ParseClaimsFromJwt(token), "jwt")));
        }

        public override async Task<AuthenticationState> GetAuthenticationStateAsync()
        {
            try
            {

                var token = await js.GetFromLocalStorage(TOKENKEY);
                var user = await js.GetFromLocalStorage(NICKNAME);

                if (string.IsNullOrEmpty(token))
                {
                    return Anonimo;
                }

                var tiempoExpiracionString = await js.GetFromLocalStorage(EXPIRATIONTOKENKEY);

                if (DateTime.TryParse(tiempoExpiracionString, out DateTime tiempoExpiracion))
                {
                    if (TokenExpirado(tiempoExpiracion))
                    {
                        await Limpiar();
                        return Anonimo;
                    }

                    if (DebeRenovarToken(tiempoExpiracion))
                    {
                        token = await RenovarToken(token, user);
                    }
                }
                return ConstruirAuthenticationState(token);
            }
            catch
            {
                return Anonimo;
            }
        }

        public async Task Login(UserToken userToken)
        {
            await js.SetInLocalStorage(TOKENKEY, userToken.Token);
            await js.SetInLocalStorage(EXPIRATIONTOKENKEY, userToken.Expiration.ToString());
            await js.SetInLocalStorage(CEDULA, userToken.Cedula.ToString());
            await js.SetInLocalStorage(NICKNAME, userToken.NickName.ToString());
            var authState = ConstruirAuthenticationState(userToken.Token);
            NotifyAuthenticationStateChanged(Task.FromResult(authState));
        }

        public async Task Logout()
        {
            await Limpiar();
            NotifyAuthenticationStateChanged(Task.FromResult(Anonimo));
        }

        public async Task ManejarRenovacionToken()
        {
            var tiempoExpiracionString = await js.GetFromLocalStorage(EXPIRATIONTOKENKEY);
            var user = await js.GetFromLocalStorage(NICKNAME);

            if (DateTime.TryParse(tiempoExpiracionString, out DateTime tiempoExpiracion))
            {
                if (TokenExpirado(tiempoExpiracion))
                {
                    await Logout();
                }
                if (DebeRenovarToken(tiempoExpiracion))
                {
                    var token = await js.GetFromLocalStorage(TOKENKEY);
                    var nuevoToken = await RenovarToken(token,user);
                    var authState = ConstruirAuthenticationState(nuevoToken);
                    NotifyAuthenticationStateChanged(Task.FromResult(authState));
                }
            }
        }

        private static bool DebeRenovarToken(DateTime tiempoExpiracion)
        {
            return tiempoExpiracion.Subtract(DateTime.Now) < TimeSpan.FromDays(5);
        }

        private static byte[] ParseBase64WithoutPadding(string base64)
        {
            switch (base64.Length % 4)
            {
                case 2: base64 += "=="; break;
                case 3: base64 += "="; break;
            }
            return Convert.FromBase64String(base64);
        }

        private static IEnumerable<Claim> ParseClaimsFromJwt(string jwt)
        {
            var claims = new List<Claim>();
            var payload = jwt.Split('.')[1];
            var jsonBytes = ParseBase64WithoutPadding(payload);
            var keyValuePairs = JsonSerializer.Deserialize<Dictionary<string, object>>(jsonBytes);

            keyValuePairs.TryGetValue(ClaimTypes.Role, out object roles);

            if (roles != null)
            {
                if (roles.ToString().Trim().StartsWith("["))
                {
                    var parsedRoles = JsonSerializer.Deserialize<string[]>(roles.ToString());

                    foreach (var parsedRole in parsedRoles)
                    {
                        claims.Add(new Claim(ClaimTypes.Role, parsedRole));
                    }
                }
                else
                {
                    claims.Add(new Claim(ClaimTypes.Role, roles.ToString()));
                }

                keyValuePairs.Remove(ClaimTypes.Role);
            }

            claims.AddRange(keyValuePairs.Select(kvp => new Claim(kvp.Key, kvp.Value.ToString())));
            return null;
        }

        private static bool TokenExpirado(DateTime tiempoExpiracion)
        {
            return tiempoExpiracion.Date < DateTime.Now.Date;
        }

        private async Task Limpiar()
        {
            await js.RemoveItem(TOKENKEY);
            await js.RemoveItem(EXPIRATIONTOKENKEY);
            httpClient.DefaultRequestHeaders.Authorization = null;
        }

        private async Task<string> RenovarToken(string token, string user)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("bearer", token);
                var nuevoTokenResponse = await ConexionRest.Get<UserToken>($"{ApiUrl}/Identity/RenovarToken/{token}/{user}");
                if (!nuevoTokenResponse.Error)
                {
                    if (nuevoTokenResponse.Response != null)
                    {
                        var nuevoToken = nuevoTokenResponse.Response;
                        await js.SetInLocalStorage(TOKENKEY, nuevoToken.Token);
                        await js.SetInLocalStorage(EXPIRATIONTOKENKEY, nuevoToken.Expiration.ToString());
                        return nuevoToken.Token;

                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return token;
        }
    }
}
