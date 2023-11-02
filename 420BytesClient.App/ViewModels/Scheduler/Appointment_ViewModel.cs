using _420BytesClient.App.ViewModels.Scheduler.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _420BytesClient.DT.Scheduler;
using Microsoft.AspNetCore.Mvc;

namespace _420BytesClient.App.ViewModels.Scheduler
{
    public class Appointment_ViewModel : IAppointment_ViewModel
    {
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

        public Appointment_ViewModel()
        {
            Id = 0;

            CurrentDate = new DateTime(2020, 2, 14);
            DataSource = new List<AppointmentData>
        {
            new AppointmentData { Id = 1, Subject = "Paris", StartTime = new DateTime(2020, 2, 13, 10, 0, 0) , EndTime = new DateTime(2020, 2, 13, 12, 0, 0) },
            new AppointmentData { Id = 2, Subject = "Germany", StartTime = new DateTime(2020, 2, 15, 10, 0, 0) , EndTime = new DateTime(2020, 2, 15, 12, 0, 0) }
        };
        }
        public Appointment_ViewModel(AppointmentData appointment)
        {
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
        public List<AppointmentData> DataSource { get; set; }
        //public DateTime CurrentDate { get; set; } = new DateTime(2020, 2, 14);
        //public List<AppointmentData> DataSourcee = new List<AppointmentData>
        //{
        //new AppointmentData { Id = 1, Subject = "Paris", StartTime = new DateTime(2020, 2, 13, 10, 0, 0) , EndTime = new DateTime(2020, 2, 13, 12, 0, 0) },
        //new AppointmentData { Id = 2, Subject = "Germany", StartTime = new DateTime(2020, 2, 15, 10, 0, 0) , EndTime = new DateTime(2020, 2, 15, 12, 0, 0) }
        //};

        //public List<AppointmentData> DataSourcee = new List<AppointmentData>
        //{
        //new AppointmentData { Id = 1, Subject = "Paris", StartTime = new DateTime(2020, 2, 13, 10, 0, 0) , EndTime = new DateTime(2020, 2, 13, 12, 0, 0) },
        //new AppointmentData { Id = 2, Subject = "Germany", StartTime = new DateTime(2020, 2, 15, 10, 0, 0) , EndTime = new DateTime(2020, 2, 15, 12, 0, 0) }
        //};

        public async Task<IActionResult> ObtenerTodoPorNickNameAsync(string NickName)
        {
            //// Llama al repositorio para obtener todas las citas
            //var appointments = await _appointmentRepository.GetAllAsync();

            //// Devuelve la lista de citas
            //return Ok(appointments);

            throw new NotImplementedException();
        }
        public async Task<IActionResult> AgregarCitaAsync(string NickName)
        {
            //// Obtiene los datos de la cita del formulario
            //var appointmentData = new AppointmentData
            //{
            //    Subject = this.Subject,
            //    Location = this.Location,
            //    StartTime = this.StartTime,
            //    EndTime = this.EndTime,
            //    Description = this.Description,
            //    IsAllDay = this.IsAllDay,
            //    RecurrenceRule = this.RecurrenceRule,
            //    RecurrenceException = this.RecurrenceException,
            //    RecurrenceID = this.RecurrenceID,
            //    ApiUrl = this.ApiUrl,
            //};

            //// Llama al repositorio para agregar la cita
            //await _appointmentRepository.AddAsync(appointmentData);

            //// Redirecciona a la página de inicio
            //return RedirectToPage("/");

            throw new NotImplementedException();
        }

        public async Task<IActionResult> ActualizarCitaAsync(string NickName, int id)
        {
            //// Obtiene la cita del repositorio
            //var appointment = await _appointmentRepository.GetByIdAsync(id);

            //// Actualiza los datos de la cita con los datos del formulario
            //appointment.Subject = this.Subject;
            //appointment.Location = this.Location;
            //appointment.StartTime = this.StartTime;
            //appointment.EndTime = this.EndTime;
            //appointment.Description = this.Description;
            //appointment.IsAllDay = this.IsAllDay;
            //appointment.RecurrenceRule = this.RecurrenceRule;
            //appointment.RecurrenceException = this.RecurrenceException;
            //appointment.RecurrenceID = this.RecurrenceID;
            //appointment.ApiUrl = this.ApiUrl;

            //// Llama al repositorio para actualizar la cita
            //await _appointmentRepository.UpdateAsync(appointment);

            //// Redirecciona a la página de inicio
            //return RedirectToPage("/");

            throw new NotImplementedException();
        }


        public async Task<IActionResult> BorrarCitaAsync(string NickName, int id)
        {
            throw new NotImplementedException();

            //// Llama al repositorio para eliminar la cita
            //await _appointmentRepository.DeleteAsync(id);

            //// Redirecciona a la página de inicio
            //return RedirectToPage("/");
        }
    }
}
