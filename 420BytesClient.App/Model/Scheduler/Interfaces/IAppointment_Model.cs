using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Scheduler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Model.Scheduler.Interfaces
{
    public interface IAppointment_Model
    {
        Task<List<AppointmentData>> ObtenerPorDocAsync(int Documento);
        Task<List<AppointmentData>> AgregarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
        Task<List<AppointmentData>> ActualizarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
        Task<bool> BorrarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
    }
}
