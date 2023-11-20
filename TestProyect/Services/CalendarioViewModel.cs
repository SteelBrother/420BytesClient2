using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Scheduler;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.Components;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace TestProyect.Services
{
    public class CalendarioViewModel : ComponentBase, INotifyPropertyChanged
    {
        string ApiUrl = "https://localhost:7205/api";
        private readonly HttpClient _httpClient;
        public List<AppointmentData> Data { get; set; } = new List<AppointmentData>();
        //AppointmentData AppointmentData { get; set; } = new AppointmentData();
        DateTime CurrentDate { get; set; } = DateTime.Now;

		public CalendarioViewModel(IHttpClientFactory httpClientFactory)
        {
            // Obtain the named HttpClient from the factory
            _httpClient = httpClientFactory.CreateClient("MyHttpClient");
        }
        private List<AppointmentData> _AppointmentDatas;

        public List<AppointmentData> AppointmentDatas
        {
            get { return _AppointmentDatas; }
            set
            {
                if (_AppointmentDatas != value)
                {
                    _AppointmentDatas = value;
                    OnPropertyChanged(nameof(AppointmentDatas));
                }
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
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

        public async Task ObtenerPorDocAsync(int UsuarioId, int IdAmbiente, int IdPlanta)
        {
            try
            {
                var result = await _httpClient.GetAsync($"{ApiUrl}/Appointment/ConsultarCita?UsuarioId={UsuarioId}&IdAmbiente={IdAmbiente}&IdPlanta={IdPlanta}");
                if (result.StatusCode == HttpStatusCode.OK)
                {
                    //var dato = new AppointmentData { Id = 1, Subject = "PRUEBAA", StartTime = new DateTime(2023, 11, 13, 10, 0, 0), EndTime = new DateTime(2023, 11, 13, 12, 0, 0) };
                    var Resultado =  await result.Content.ReadFromJsonAsync<List<AppointmentData>>();
                    if (Resultado != null)
                    {
                        foreach (var item in Resultado)
                        {
                            var dato = new AppointmentData { Id = item.Id, Subject = item.Subject, StartTime = new DateTime(2023, 11, 13, 10, 0, 0), EndTime = new DateTime(2023, 11, 13, 12, 0, 0) };
                            Data.Add(dato);
                        }
                    }

                    StateHasChanged();
                }
                
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                //logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
        }
    }
}
