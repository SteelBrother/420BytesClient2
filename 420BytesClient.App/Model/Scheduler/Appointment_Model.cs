using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Model.Interfaces;
using _420BytesClient.App.Model.Scheduler.Interfaces;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
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
    }
}
