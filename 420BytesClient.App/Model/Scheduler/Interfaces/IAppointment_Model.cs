using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Plantas;
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
        Task<List<AppointmentData>> ObtenerPorDocAsync(int UsuarioId, int IdAmbiente, int IdPlanta);
        Task<List<AppointmentData>> AgregarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
        Task<List<AppointmentData>> ActualizarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
        Task<List<Ambiente2>> ConsultarAmbientes(int Cedula);
        Task<List<Planta2>> ConsultarPlantasAmbiente(int AmbienteId);
        Task<bool> BorrarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
    }
}
