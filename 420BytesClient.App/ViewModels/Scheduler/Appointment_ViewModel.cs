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

namespace _420BytesClient.App.ViewModels.Scheduler
{
    public class Appointment_ViewModel : IAppointment_ViewModel, INotifyPropertyChanged
    {
        public static readonly string CEDULA = "CEDULA";
        private readonly IAppointment_Model IAppointment_Model;
        private readonly IJSRuntime js;
        public int Id { get; set; }
        public string Subject { get; set; }
        public string Location { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
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
            DataSource = new List<AppointmentData>
        {
            new AppointmentData { Id = 1, Subject = "Paris", StartTime = new DateTime(2023, 11, 1, 10, 0, 0) , EndTime = new DateTime(2023, 11, 1, 12, 0, 0) },
            new AppointmentData { Id = 2, Subject = "Germany", StartTime = new DateTime(2023, 11, 2, 10, 0, 0) , EndTime = new DateTime(2023, 11, 2, 12, 0, 0) }
        };
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
                if (_DataSource != value)
                {
                    _DataSource = value;
                    OnPropertyChanged(nameof(DataSource));
                }
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }


        public async Task ObtenerTodoPorDocumentoAsync()
        {
            var doc = await js.GetFromLocalStorage(CEDULA);
            if (doc != null)
            {
                var Citas = await IAppointment_Model.ObtenerPorDocAsync(int.Parse(doc));
                if (Citas != null)
                {
                    DataSource = Citas;
                }
            }
           
        }

        public async Task AgregarCitaAsync(AppointmentData AppointmentData)
        {
            var doc = await js.GetFromLocalStorage(CEDULA);
            var AppointmentDTO = new AppointmentDataDTO
            {
                Doc = int.Parse(doc),
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

    }
}
