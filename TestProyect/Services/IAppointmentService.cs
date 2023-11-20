using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Scheduler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestProyect.Services
{
    public  interface IAppointmentService
    {
        Task<List<AppointmentData>> ObtenerPorDocAsync(int UsuarioId, int IdAmbiente, int IdPlanta);
        Task<List<AppointmentData>> AgregarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
        Task<List<AppointmentData>> ActualizarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
        Task<bool> BorrarCitaAsync(AppointmentDataDTO AppointmentDataDTO);
    }
}
