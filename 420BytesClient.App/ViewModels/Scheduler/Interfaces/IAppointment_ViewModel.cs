using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.Plantas;
using _420BytesClient.DT.Scheduler;
using Microsoft.AspNetCore.Mvc;
using Syncfusion.Blazor.Schedule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Scheduler.Interfaces
{
    public interface IAppointment_ViewModel
    {
        int Id { get; set; }
        string Subject { get; set; }
        string Location { get; set; }
        DateTimeOffset StartTime { get; set; }
        DateTimeOffset EndTime { get; set; }
        string Description { get; set; }
        bool IsAllDay { get; set; }
        string RecurrenceRule { get; set; }
        string RecurrenceException { get; set; }
        int? RecurrenceID { get; set; }
        string ApiUrl { get; set; }

        DateTime CurrentDate { get; set; }
        List<AppointmentData> DataSource { get; set; }
        List<Ambiente2> Ambientes { get; set; }
        List<Planta2> Plantas { get; set; }
        IList<string> _source { get; set; }
        Task<List<AppointmentData>> ObtenerTodoPorDocumentoAsync();
        Task ConsultarAmbientes(int Cedula);
        Task ConsultarPlantas(int IdAmbiente);
        Task AgregarCitaAsync(AppointmentData AppointmentData);
        Task ActualizarCitaAsync(AppointmentData AppointmentData);
        Task BorrarCitaAsync(int Id);
    }
}
