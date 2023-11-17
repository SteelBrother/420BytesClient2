using _420BytesClient.App.Helpers;
using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Hub;
using _420BytesClient.App.Model.Interfaces;
using _420BytesClient.App.Model.Usuarios.Interfaces;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Microsoft.JSInterop;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Net.Http.Headers;
using System.Reflection;
using System.Text;

namespace _420BytesClient.App.Model.Usuarios
{
    public class GestionUsuarios_Model : IGestionUsuariosModel
    {
        private readonly IConexionRest ConexionRest;
        private readonly ISettings ISettings;
        private readonly IJSRuntime js;
        private readonly ILogger<IGestionUsuariosModel> logger;
        private readonly HttpClient httpClient;
        public GestionUsuarios_Model(IConexionRest conexionRest, ILogger<IGestionUsuariosModel> logger, ISettings ISettings, IJSRuntime js)
        {
            this.ConexionRest = conexionRest;   
            this.logger = logger;   
            this.ISettings = ISettings;
            this.js = js;
            httpClient = new HttpClient();
        }
        public async Task<bool> ActualizarUsuario(Usuario Usuario)
        {
            try
            {
                var apiUrl = ISettings.GetApiUrl();
                var request = new HttpRequestMessage(HttpMethod.Put, $"{apiUrl}/Usuarios/ActualizarUsuario");
                var token = await js.GetFromLocalStorage("TOKENKEY");
                request.Headers.Add("Authorization", $"Bearer {token}");
                request.Content = new StringContent(JsonConvert.SerializeObject(Usuario), Encoding.UTF8, "application/json");
                var response = await httpClient.SendAsync(request);

                if (response.IsSuccessStatusCode)
                {
                    return true;
                }
                else
                {
                    logger.LogError($"Clase: {GetType().Name}, Método: {MethodBase.GetCurrentMethod().Name}");
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Método: {MethodBase.GetCurrentMethod().Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return false;
        }

        public async Task<bool> BorrarUsuario(int Cedula)
        {
            try
            {
                
                var ApiUrl = ISettings.GetApiUrl();
                var request = new HttpRequestMessage(HttpMethod.Delete, $"{ApiUrl}/Usuarios/BorrarUsuario/{Cedula}");
                var token = await js.GetFromLocalStorage("TOKENKEY");
                request.Headers.Add("Authorization", $"Bearer {token}");
                var response = await httpClient.SendAsync(request);
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    //var usuarios = JsonConvert.DeserializeObject<List<Usuario>>(content);
                    return true;
                }
                else
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
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
                var apiUrl = ISettings.GetApiUrl();
                var request = new HttpRequestMessage(HttpMethod.Get, $"{apiUrl}/Usuarios/ConsultarUsuarioPorCedula?Cedula={Cedula}");
                var token = await js.GetFromLocalStorage("TOKENKEY");
                request.Headers.Add("Authorization", $"Bearer {token}");
                var response = await httpClient.SendAsync(request);
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    var usuario = JsonConvert.DeserializeObject<Usuario>(content);
                    return usuario;
                }
                else
                {
                    logger.LogError($"Clase: {GetType().Name}, Método: {MethodBase.GetCurrentMethod().Name}");
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Método: {MethodBase.GetCurrentMethod().Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return null;
        }

        public async Task<List<Usuario>> ConsultarUsuarios()
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var request = new HttpRequestMessage(HttpMethod.Get, $"{ApiUrl}/Usuarios/ConsultaUsuarios");
                var token = await js.GetFromLocalStorage("TOKENKEY");
                request.Headers.Add("Authorization", $"Bearer {token}");
                var response = await httpClient.SendAsync(request);
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    var usuarios = JsonConvert.DeserializeObject<List<Usuario>>(content);
                    return usuarios;
                }
                else
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
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

                var apiUrl = ISettings.GetApiUrl();
                var request = new HttpRequestMessage(HttpMethod.Post, $"{apiUrl}/Usuarios/RegistrarUsuario");
                var token = await js.GetFromLocalStorage("TOKENKEY");
                request.Headers.Add("Authorization", $"Bearer {token}");
                request.Content = new StringContent(JsonConvert.SerializeObject(Usuario), Encoding.UTF8, "application/json");
                var response = await httpClient.SendAsync(request);

                if (response.IsSuccessStatusCode)
                {
                    return true;
                }
                else
                {
                    logger.LogError($"Clase: {GetType().Name}, Método: {MethodBase.GetCurrentMethod().Name}");
                    return false;
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
