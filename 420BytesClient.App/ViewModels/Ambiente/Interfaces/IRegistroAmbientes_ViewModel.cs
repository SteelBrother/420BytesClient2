using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.Plantas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Ambiente.Interfaces
{
    public interface IRegistroAmbientes_ViewModel
    {

        DateTime CurrentDate { get; set; }
        List<Ambiente2> Ambientes { get; set; }
        List<Planta2> Plantas { get; set; }
        List<Planta2> PlantasRespaldo { get; set; }
        IList<string> _source { get; set; }
    
        Task ConsultarAmbientes(int Cedula);
        Task ConsultarPlantas(int IdAmbiente);
    }
}
