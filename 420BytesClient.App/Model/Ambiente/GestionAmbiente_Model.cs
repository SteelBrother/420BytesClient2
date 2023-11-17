using _420BytesClient.App.Helpers;
using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Hub;
using _420BytesClient.App.Model.Ambiente.Interfaces;
using _420BytesClient.App.Model.Interfaces;
using _420BytesClient.App.Model.Usuarios.Interfaces;
using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Microsoft.JSInterop;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Net.Http.Headers;
using System.Reflection;
using System.Text;

namespace _420BytesClient.App.Model.Ambiente
{
    public class GestionAmbiente_Model : IGestionAmbiente_Model
    {
        private readonly IConexionRest ConexionRest;
        private readonly ISettings ISettings;
        private readonly IJSRuntime js;
        private readonly ILogger<IGestionUsuariosModel> logger;
        private readonly HttpClient httpClient;
        public GestionAmbiente_Model(IConexionRest conexionRest, ILogger<IGestionUsuariosModel> logger, ISettings ISettings, IJSRuntime js)
        {
            this.ConexionRest = conexionRest;
            this.logger = logger;
            this.ISettings = ISettings;
            this.js = js;
            httpClient = new HttpClient();
        }

        public async Task<RegistroHumedadAmbiente> ObtenerUltimaHumedadRegistrada(int IdAmbiente)
        {
            try
            {
                var apiUrl = ISettings.GetApiUrl();
                var request = new HttpRequestMessage(HttpMethod.Get, $"{apiUrl}/Ambientes/ConsultarLastTemp?IdAmbiente={IdAmbiente}");
                var token = await js.GetFromLocalStorage("TOKENKEY");
                request.Headers.Add("Authorization", $"Bearer {token}");
                var response = await httpClient.SendAsync(request);
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    var Hum = JsonConvert.DeserializeObject<RegistroHumedadAmbiente>(content);
                    return Hum;
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

        public async Task<RegistroIntensidadLuz> ObtenerUltimaIntensidadLuzRegistrada(int IdAmbiente)
        {
            try
            {
                var apiUrl = ISettings.GetApiUrl();
                var request = new HttpRequestMessage(HttpMethod.Get, $"{apiUrl}/Ambientes/ConsultarLastLight?IdAmbiente={IdAmbiente}");
                var token = await js.GetFromLocalStorage("TOKENKEY");
                request.Headers.Add("Authorization", $"Bearer {token}");
                var response = await httpClient.SendAsync(request);
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    var Hum = JsonConvert.DeserializeObject<RegistroIntensidadLuz>(content);
                    return Hum;
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

        public async Task<RegistroTemperaturaAmbiente> ObtenerUltimaTemperaturaRegistrada(int IdAmbiente)
        {
            try
            {
                var apiUrl = ISettings.GetApiUrl();
                var request = new HttpRequestMessage(HttpMethod.Get, $"{apiUrl}/Ambientes/ConsultarLastTemp?IdAmbiente={IdAmbiente}");
                var token = await js.GetFromLocalStorage("TOKENKEY");
                request.Headers.Add("Authorization", $"Bearer {token}");
                var response = await httpClient.SendAsync(request);
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    var Hum = JsonConvert.DeserializeObject<RegistroTemperaturaAmbiente>(content);
                    return Hum;
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
    }
}
