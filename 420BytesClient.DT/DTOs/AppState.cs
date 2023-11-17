using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MatBlazor;
using System.Threading.Tasks;

namespace _420BytesClient.DT.DTOs
{
    public class AppState
    {
        public Dictionary<string, int> PaginasRoles = new();
        public string? TituloPagina { get; set; }
        public bool MostrarSidebar { get; set; }
        public MatTheme Temaprincipal { get; set; } = new MatTheme();
        public MatTheme TemaSecundario { get; set; } = new MatTheme();
    }
}
