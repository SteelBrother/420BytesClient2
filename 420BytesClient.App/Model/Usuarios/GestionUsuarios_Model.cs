using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Hub;
using _420BytesClient.App.Model.Interfaces;
using _420BytesClient.App.Model.Usuarios.Interfaces;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Reflection;

namespace _420BytesClient.App.Model.Usuarios
{
    public class GestionUsuarios_Model : IGestionUsuariosModel
    {
        private readonly IConexionRest ConexionRest;
        private readonly ISettings ISettings;
        private readonly ILogger<IGestionUsuariosModel> logger;
        private readonly UpdateUserListHubConnection UpdateUserListHubConnection;
        public GestionUsuarios_Model(IConexionRest conexionRest, ILogger<IGestionUsuariosModel> logger, ISettings ISettings)
        {
            this.ConexionRest = conexionRest;   
            this.logger = logger;   
            this.ISettings = ISettings;
        }
        public async Task<bool> ActualizarUsuario(Usuario Usuario)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var httpResponse = await ConexionRest.Put<Usuario, bool>($"{ApiUrl}/Usuarios/ActualizarUsuario", Usuario);
                if (httpResponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return false;
        }

        public async Task<bool> BorrarUsuario(int Cedula)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var httpResponse = await ConexionRest.Delete($"{ApiUrl}/Usuarios/BorrarUsuario/{Cedula}");
                if (httpResponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return true;
                }
            }
            catch (Exception)
            {

                throw;
            }
            return false;

        }

        public async Task<Usuario> ConsultarUsuarioPorCedula(int Cedula)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var HttpReponse = await ConexionRest.Get<Usuario>($"{ApiUrl}/Usuarios/ConsultarUsuarioPorCedula?Cedula={Cedula}");
                if (HttpReponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return HttpReponse.Response;
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return null;
        }

        public async Task<List<Usuario>> ConsultarUsuarios()
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var httpResponse = await ConexionRest.Get<List<Usuario>>($"{ApiUrl}/Usuarios/ConsultaUsuarios");
                if (httpResponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return httpResponse.Response.ToList();
                }
            }
            catch (Exception ex)
                {
                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return new List<Usuario>();
        }

        public async Task<bool> RegistrarUsuario(Usuario Usuario)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var httpResponse = await ConexionRest.Post<Usuario,bool>($"{ApiUrl}/Usuarios/RegistrarUsuario",Usuario);
                if (httpResponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return false;
        }
    }
    
}
