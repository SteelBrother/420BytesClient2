using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Ambiente.Interfaces
{
    public interface IGestionAmbientes_ViewModel
    {
        Task InitializeAsync();
        List<Usuario> Usuarios { get; set; }
        RegistroTemperaturaAmbiente RegistroTemperaturaAmbiente { get; set; }
        RegistroHumedadAmbiente RegistroHumedadAmbiente { get; set; }
        RegistroIntensidadLuz RegistroIntensidadLuz { get; set; }
    }
}
