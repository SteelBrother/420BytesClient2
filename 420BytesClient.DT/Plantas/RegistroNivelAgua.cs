using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.DT.Plantas
{
    public class RegistroNivelAgua
    {
        public int Id { get; set; }
        public int IdPlanta { get; set; }
        public int Nivel { get; set; }
        public DateTime Fecha { get; set; }
    }
}
