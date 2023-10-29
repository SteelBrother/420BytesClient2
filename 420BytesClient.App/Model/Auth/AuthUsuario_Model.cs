using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Model.Auth.Interfaces;
using _420BytesClient.App.Model.Interfaces;
using _420BytesClient.DT.Usuario;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Model.Auth
{
    public class AuthUsuario_Model : IAuthUsuario_Model
    {
        private readonly IConexionRest ConexionRest;
        private readonly ISettings ISettings;
        private readonly ILogger<AuthUsuario_Model> logger;
        public AuthUsuario_Model(IConexionRest conexionRest, ILogger<AuthUsuario_Model> logger, ISettings ISettings)
        {
            this.ConexionRest = conexionRest;
            this.logger = logger;
            this.ISettings = ISettings;
        }

        public async Task<Usuario> Login(string NickName, string Password)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var HttpReponse = await ConexionRest.Get<Usuario>($"{ApiUrl}/Auth/Login?NickName={NickName}?Password={Password}");
                if (HttpReponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                    return new Usuario();

                }
                else
                {
                    return HttpReponse.Response;
                }

            }
            catch (Exception ex)
            {

                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
                return new Usuario();
            }
        }

    }
}