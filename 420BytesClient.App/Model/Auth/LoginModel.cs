using _420BytesClient.App.Auth;
using _420BytesClient.App.Auth.Interfaces;
using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Model.Auth.Interfaces;
using _420BytesClient.App.Model.Interfaces;
using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.Extensions.Logging;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;

namespace _420BytesClient.App.Model.Auth
{
    public class Login_Model : ILoginModel
    {

        private readonly IProveedorAutenticacionJWT authModel;
        private readonly IConexionRest ConexionRest;
        private readonly ISettings ISettings;
        private readonly NavigationManager navigationManager;
        private readonly ILogger<IConexionRest> logger;
        private readonly AuthenticationStateProvider authStateProvider;
        public Login_Model(IConexionRest conexionRest, NavigationManager navigationManager, ILogger<IConexionRest> logger, ISettings ISettings ,
            IProveedorAutenticacionJWT authModel, 
            AuthenticationStateProvider authStateProvider)
        {
            this.ConexionRest = conexionRest;
            this.logger = logger;
            this.ISettings = ISettings;
            this.authModel = authModel;
            this.navigationManager = navigationManager;
            this.authStateProvider = authStateProvider;
        }
        public async Task<string> LoginUsuario(UserInfo userInfo)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var httpResponse = await ConexionRest.Post<UserInfo, UserToken>($"{ApiUrl}/Auth/login", userInfo);

                if (httpResponse.Error)
                {
                    return "Usuario y/o contraseña incorrecta.";
                }
                else
                {
                    if (httpResponse.Response == null)
                    {
                        return "Usuario Inactivo, Por favor comuniquese con el administrador";
                    }
                    else
                    {
                        if (httpResponse.Response.Expiration.Date >= DateTime.Now.Date)
                        {
                            await authModel.Login(httpResponse.Response);
                            navigationManager.NavigateTo("/");
                        }
                        else
                        {
                            return "Su cuenta ha vencido, comuniquese con el administrador para que sea renovada.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return $"{ex.Message} No se encuentra conexion con el servidor, por favor verifique  internet e intentelo de nuevo.";
            }
            return null;
        }
    }
}
