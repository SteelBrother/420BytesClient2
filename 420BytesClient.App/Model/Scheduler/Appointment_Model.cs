using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Model.Interfaces;
using _420BytesClient.App.Model.Scheduler.Interfaces;
using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Scheduler;
using _420BytesClient.DT.Usuario;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Model.Scheduler
{
    public class Appointment_Model : IAppointment_Model
    {
        private readonly IConexionRest ConexionRest;
        private readonly ISettings ISettings;
        private readonly ILogger<IAppointment_Model> logger;
        public Appointment_Model(IConexionRest conexionRest, ILogger<IAppointment_Model> logger, ISettings ISettings)
        {
            this.ConexionRest = conexionRest;
            this.logger = logger;
            this.ISettings = ISettings;
        }

        public async Task<List<AppointmentData>> ActualizarCitaAsync(AppointmentDataDTO AppointmentData)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var httpResponse = await ConexionRest.Put<AppointmentDataDTO, List<AppointmentData>>($"{ApiUrl}/Appointment/ActualizarCita", AppointmentData);
                if (httpResponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return httpResponse.Response.ToList();
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return new List<AppointmentData>();
        }

        public async Task<List<AppointmentData>> AgregarCitaAsync(AppointmentDataDTO AppointmentData)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var httpResponse = await ConexionRest.Post<AppointmentDataDTO, List<AppointmentData>>($"{ApiUrl}/Appointment/RegistrarCita", AppointmentData);
                if (httpResponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return httpResponse.Response.ToList();
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return new List<AppointmentData>();
        }

        public async Task<bool> BorrarCitaAsync(AppointmentDataDTO AppointmentData)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var httpResponse = await ConexionRest.Delete($"{ApiUrl}/Appointment/BorrarCita/{AppointmentData}");
                if (httpResponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return false;
        }

        public async Task<List<AppointmentData>> ObtenerPorDocAsync(int Cedula)
        {
            try
            {
                var ApiUrl = ISettings.GetApiUrl();
                var HttpReponse = await ConexionRest.Get<List<AppointmentData>>($"{ApiUrl}/Appointment/ConsultarCitasPorCedula/{Cedula}");
                if (HttpReponse.Error)
                {
                    logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}");
                }
                else
                {
                    return HttpReponse.Response;
                }
            }
            catch (Exception ex)
            {
                logger.LogError($"Clase: {GetType().Name}, Metodo: {MethodBase.GetCurrentMethod().DeclaringType.Name}, Tipo: {ex.GetType()}, Error: {ex.Message}");
            }
            return new List<AppointmentData>();
        }
    }
}
