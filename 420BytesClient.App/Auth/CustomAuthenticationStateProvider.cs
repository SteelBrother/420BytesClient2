using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.Components.Authorization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Microsoft.JSInterop;
using _420BytesClient.App.Helpers;

namespace _420BytesClient.App.Auth
{
    public class CustomAuthenticationStateProvider : AuthenticationStateProvider
    {
        public static readonly string EXPIRATIONTOKENKEY = "EXPIRATIONTOKENKEY";
        public static readonly string TOKENKEY = "TOKENKEY";
        public static readonly string CEDULA = "CEDULA";
        public static readonly string NICKNAME = "NICKNAME";
        private readonly IJSRuntime js;
        private ClaimsPrincipal anonymous = new ClaimsPrincipal(new ClaimsIdentity());
        public CustomAuthenticationStateProvider(IJSRuntime js)
        {
            this.js = js; ;
        }
        public override async Task<AuthenticationState> GetAuthenticationStateAsync()
        {
            try
            {
                //Get Usersession from secure storage
                string getUserSessionFromStorage = await SecureStorage.Default.GetAsync("UserSession");
                if (string.IsNullOrEmpty(getUserSessionFromStorage))
                    return await Task.FromResult(new AuthenticationState(anonymous));

                //Desrialize into and UserSession object.
                var DesrializedUserSession = JsonSerializer.Deserialize<UserToken>(getUserSessionFromStorage);
                var claimsPrincipal = new ClaimsPrincipal(new ClaimsIdentity(new List<Claim>
                {
                     new Claim(ClaimTypes.Name, DesrializedUserSession.NickName!),
                    new Claim(ClaimTypes.Email, "prueba@prueba.com"),
                    new Claim(ClaimTypes.Role, "Admin")
                }, "CustomAuth"));
                return await Task.FromResult(new AuthenticationState(claimsPrincipal));
            }
            catch
            {
                return await Task.FromResult(new AuthenticationState(anonymous));
            }
        }

        public async Task Login(UserToken userToken)
        {
            await js.SetInLocalStorage(TOKENKEY, userToken.Token);
            await js.SetInLocalStorage(EXPIRATIONTOKENKEY, userToken.Expiration.ToString());
            await js.SetInLocalStorage(CEDULA, userToken.Cedula.ToString());
            await js.SetInLocalStorage(NICKNAME, userToken.NickName.ToString());
            await UpdateAuthenticationState(userToken);
            //NotifyAuthenticationStateChanged(Task.FromResult(authState));
        }
        public async Task UpdateAuthenticationState(UserToken userSession)
        {
            ClaimsPrincipal claimsPrincipal;
            if (!string.IsNullOrEmpty(userSession.NickName) || !string.IsNullOrEmpty(userSession.Cedula))
            {
                string serializeUserSession = JsonSerializer.Serialize(userSession);
                await SecureStorage.Default.SetAsync("UserSession", serializeUserSession);

                claimsPrincipal = new ClaimsPrincipal(new ClaimsIdentity(new List<Claim>
                {
                    new Claim(ClaimTypes.Name, userSession.NickName!),
                    new Claim(ClaimTypes.Email, "prueba@prueba.com"),
                    new Claim(ClaimTypes.Role, "Admin")
                }));
            }
            else
            {
                SecureStorage.Default.Remove("UserSession");
                claimsPrincipal = anonymous;
            }

            NotifyAuthenticationStateChanged(Task.FromResult(new AuthenticationState(claimsPrincipal)));
        }

    }
}
