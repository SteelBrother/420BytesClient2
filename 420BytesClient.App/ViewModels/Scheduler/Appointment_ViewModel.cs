using _420BytesClient.App.ViewModels.Scheduler.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _420BytesClient.DT.Scheduler;
using Microsoft.AspNetCore.Mvc;
using Microsoft.JSInterop;
using _420BytesClient.App.Helpers;
using _420BytesClient.App.Model.Scheduler.Interfaces;
using _420BytesClient.DT.DTOs;
using System.ComponentModel;
using Syncfusion.Blazor.Schedule.Internal;
using _420BytesClient.DT.Usuario;
using System.Globalization;
using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.Plantas;
using static MudBlazor.Colors;

namespace _420BytesClient.App.ViewModels.Scheduler
{
    public class Appointment_ViewModel : INotifyPropertyChanged, IAppointment_ViewModel
    {
        public static readonly string CEDULA = "CEDULA";
        private readonly IAppointment_Model IAppointment_Model;
        private readonly IJSRuntime js;
        public int Id { get; set; }
        public string Subject { get; set; }
        public string Location { get; set; }
        public DateTimeOffset StartTime { get; set; }
        public DateTimeOffset EndTime { get; set; }
        public string Description { get; set; }
        public bool IsAllDay { get; set; }
        public string RecurrenceRule { get; set; }
        public string RecurrenceException { get; set; }
        public Nullable<int> RecurrenceID { get; set; }
        public string ApiUrl { get; set; }

        public Appointment_ViewModel(IJSRuntime js, IAppointment_Model IAppointment_Model)
        {
            this.js = js;
            this.IAppointment_Model = IAppointment_Model;
            Id = 0;
            DateTime now = DateTime.Now;
            string formattedDate = now.ToString("yyyy-MM-ddTHH:mm:ss");
            CurrentDate = DateTime.Parse(formattedDate);
            DataSource = new List<AppointmentData>();
        }
        public Appointment_ViewModel(AppointmentData appointment, IJSRuntime js, IAppointment_Model IAppointment_Model)
        {
            this.js = js;
            this.IAppointment_Model = IAppointment_Model;
            Id = appointment.Id;
            Subject = appointment.Subject;
            Location = appointment.Location;
            StartTime = appointment.StartTime;
            EndTime = appointment.EndTime;
            Description = appointment.Description;
            IsAllDay = appointment.IsAllDay;
            RecurrenceRule = appointment.RecurrenceRule;
            RecurrenceException = appointment.RecurrenceException;
            RecurrenceID = appointment.RecurrenceID;
            ApiUrl = appointment.ApiUrl;
        }

        public DateTime CurrentDate { get; set; }

        private List<AppointmentData> _DataSource;

        public List<AppointmentData> DataSource
        {
            get { return _DataSource; }
            set
            {
                _DataSource = value;
                OnPropertyChanged(nameof(DataSource));
            }
        }

        private List<Planta2> _Plantas = new List<Planta2>();

        public List<Planta2> Plantas
        {
            get { return _Plantas; }
            set
            {
                _Plantas = value;
                OnPropertyChanged(nameof(Plantas));
            }
        }

        public List<Ambiente2> Ambientes { get; set; } = new List<Ambiente2>();
        //public List<Planta2> Plantas { get; set; } = new List<Planta2>();
        public List<Planta2> PlantasRespaldo { get; set; } = new List<Planta2>();
        public IList<string> _source { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }


        public async Task<List<AppointmentData>> ObtenerTodoPorDocumentoAsync()
        {
            var doc = await js.GetFromLocalStorage(CEDULA);
            if (doc != null)
            {
                var Citas = await IAppointment_Model.ObtenerPorDocAsync(1, 3, 1);
                if (Citas != null)
                {
                    foreach (var item in Citas)
                    {
                        int anoInicio = item.StartTime.Year;
                        int mesInicio = item.StartTime.Month;
                        int diaInicio = item.StartTime.Day;
                        int horaInicio = item.StartTime.Hour;
                        int minutosInicio = item.StartTime.Minute;

                        int anoFinal = item.EndTime.Year;
                        int mesFinal = item.EndTime.Month;
                        int diaFinal = item.EndTime.Day;
                        int horaFinal = item.EndTime.Hour;
                        int minutosFinal = item.EndTime.Minute;

                        var dato = new AppointmentData 
                        { 
                            Id = item.Id,
                            Subject = item.Subject,
                            Location = item.Location,
                            Description = item.Description,
                            IsAllDay = item.IsAllDay,
                            RecurrenceRule = item.RecurrenceRule,
                            StartTime = new DateTime(anoInicio, mesInicio, diaInicio, horaInicio, minutosInicio, 0),
                            EndTime = new DateTime(anoFinal, mesFinal, diaFinal, horaFinal, minutosFinal, 0)
                        };
                        DataSource.Add(dato);
                    }
                    return DataSource;
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }

        }

        public async Task AgregarCitaAsync(AppointmentData AppointmentData)
        {
            var doc = await js.GetFromLocalStorage(CEDULA);
            //var ambiente = await js.GetFromLocalStorage(AMBIENTE);
            int ambiente = 3;
            var AppointmentDTO = new AppointmentDataDTO
            {
                Doc = int.Parse(doc),
                IdAmbiente = ambiente,
                IdPlanta = 1,
                AppointmentData = AppointmentData

            };
            var x = await IAppointment_Model.AgregarCitaAsync(AppointmentDTO);
            //await ObtenerTodoPorDocumentoAsync();
        }

        public async Task ActualizarCitaAsync(AppointmentData AppointmentData)
        {
            var doc = await js.GetFromLocalStorage(CEDULA);
            var AppointmentDTO = new AppointmentDataDTO
            {
                Doc = int.Parse(doc),
                AppointmentData = AppointmentData
            };
            var x = await IAppointment_Model.ActualizarCitaAsync(AppointmentDTO);
        }

        public async Task BorrarCitaAsync(int Id)
        {
            var doc = await js.GetFromLocalStorage(CEDULA);
            var AppointmentDTO = new AppointmentDataDTO
            {
                Id = Id,
                Doc = int.Parse(doc),
                AppointmentData = null
            };
            await IAppointment_Model.BorrarCitaAsync(AppointmentDTO);
        }
        public async Task BuscarIndexAmbiente(int index)
        {
            if (Ambientes != null)
            {
                var AmbienteID = Ambientes.ElementAt(index).AmbienteID;
                await ConsultarPlantas(AmbienteID);
            }
        }

        public async Task ConsultarAmbientes(int Cedula)
        {
            List<string> NombreAmbientes = new List<string>();
            Ambientes = await IAppointment_Model.ConsultarAmbientes(Cedula);
            if (Ambientes != null && Ambientes.Count > 0)
            {
                foreach (var item in Ambientes)
                {
                    NombreAmbientes.Add(item.NombreAmbiente.ToString());
                }
             
                _source = NombreAmbientes;
                await ConsultarPlantas(Ambientes.FirstOrDefault().AmbienteID);
            }
        }

        public async Task ConsultarPlantas(int IdAmbiente)
        {
            PlantasRespaldo.AddRange(await IAppointment_Model.ConsultarPlantasAmbiente(IdAmbiente));
            var elementosConID3 = PlantasRespaldo.Where(objeto => objeto.AmbienteID == IdAmbiente).ToList();
            Plantas.AddRange(elementosConID3);
        }
    }
}
