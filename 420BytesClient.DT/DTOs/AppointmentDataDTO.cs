using _420BytesClient.DT.Scheduler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.DT.DTOs
{
    public class AppointmentDataDTO
    {
        public int Id { get; set; }
        public int Doc { get; set; }
        public int IdAmbiente { get; set; }
        public int IdPlanta { get; set; }
        public AppointmentData? AppointmentData { get; set; }
    }
}
