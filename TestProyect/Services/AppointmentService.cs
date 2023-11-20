using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Scheduler;
using Microsoft.AspNetCore.Components;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace TestProyect.Services
{
    public class AppointmentService : IAppointmentService
    {
        string ApiUrl = "https://localhost:7205/api";
        private readonly HttpClient _httpClient;

        public AppointmentService(IHttpClientFactory httpClientFactory)
        {
            // Obtain the named HttpClient from the factory
            _httpClient = httpClientFactory.CreateClient("MyHttpClient");
        }

        public Task<List<AppointmentData>> ActualizarCitaAsync(AppointmentDataDTO AppointmentDataDTO)
        {
            throw new NotImplementedException();
        }

        public Task<List<AppointmentData>> AgregarCitaAsync(AppointmentDataDTO AppointmentDataDTO)
        {
            throw new NotImplementedException();
        }

        public Task<bool> BorrarCitaAsync(AppointmentDataDTO AppointmentDataDTO)
        {
            throw new NotImplementedException();
        }

        public async Task<List<AppointmentData>> ObtenerPorDocAsync(int UsuarioId, int IdAmbiente, int IdPlanta)
        {
            try
            {
                var result = await _httpClient.GetAsync($"{ApiUrl}/Appointment/ConsultarCita?UsuarioId={UsuarioId}&IdAmbiente={IdAmbiente}&IdPlanta={IdPlanta}");
                if (result.StatusCode == HttpStatusCode.OK)
                {
                    return await result.Content.ReadFromJsonAsync<List<AppointmentData>>();
                }
                return null;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                //logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return new List<AppointmentData>();
        }
    }
}
