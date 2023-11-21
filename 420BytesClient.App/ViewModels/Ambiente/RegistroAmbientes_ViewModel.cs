using _420BytesClient.App.Model.Scheduler.Interfaces;
using _420BytesClient.App.ViewModels.Ambiente.Interfaces;
using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.Plantas;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Ambiente
{
    public class RegistroAmbientes_ViewModel : INotifyPropertyChanged, IRegistroAmbientes_ViewModel
    {
        private readonly IAppointment_Model IAppointment_Model;
        public RegistroAmbientes_ViewModel(IAppointment_Model IAppointment_Model)
        {
                this.IAppointment_Model = IAppointment_Model;
        }

        public DateTime CurrentDate { get; set; }
        public List<Ambiente2> Ambientes { get; set; } = new List<Ambiente2>();
        public List<Planta2> Plantas { get; set; }
        public List<Planta2> PlantasRespaldo { get; set; }
        public IList<string> _source { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async Task ConsultarAmbientes(int Cedula)
        {
            List<string> NombreAmbientes = new List<string>();
            Ambientes = await IAppointment_Model.ConsultarAmbientes(Cedula);
            
        }

        public async Task ConsultarPlantas(int IdAmbiente)
        {
            PlantasRespaldo.AddRange(await IAppointment_Model.ConsultarPlantasAmbiente(IdAmbiente));
            var elementosConID3 = PlantasRespaldo.Where(objeto => objeto.AmbienteID == IdAmbiente).ToList();
            Plantas.AddRange(elementosConID3);
        }
    }
}
