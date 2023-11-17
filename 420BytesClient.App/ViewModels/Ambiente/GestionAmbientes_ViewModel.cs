using _420BytesClient.App.ViewModels.Ambiente.Interfaces;
using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.SignalR.Client;
using _420BytesClient.App.Model.Ambiente.Interfaces;
using System.ComponentModel;

namespace _420BytesClient.App.ViewModels.Ambiente
{
    public class GestionAmbientesViewModel :  ComponentBase
    {
        string url = "https://ganjapp.azurewebsites.net/AmbienteUpdatesHub";
        private readonly HubConnection _hubConnection;
        public List<Usuario> Usuarios { get; set; } = new List<Usuario>();

        public RegistroTemperaturaAmbiente RegistroTemperaturaAmbiente { get; set; } = new RegistroTemperaturaAmbiente();
        public RegistroIntensidadLuz RegistroIntensidadLuz { get; set; } = new RegistroIntensidadLuz();
        public RegistroHumedadAmbiente RegistroHumedadAmbiente { get; set; } = new RegistroHumedadAmbiente();

        //private RegistroTemperaturaAmbiente _RegistroTemperaturaAmbiente;
        //public RegistroTemperaturaAmbiente RegistroTemperaturaAmbiente
        //{
        //    get { return _RegistroTemperaturaAmbiente; }
        //    set
        //    {
        //        if (_RegistroTemperaturaAmbiente != value)
        //        {
        //            _RegistroTemperaturaAmbiente = value;
        //            OnPropertyChanged(nameof(RegistroTemperaturaAmbiente));
        //        }
        //    }
        //}

        //private RegistroHumedadAmbiente _RegistroHumedadAmbiente;
        //public RegistroHumedadAmbiente RegistroHumedadAmbiente
        //{
        //    get { return _RegistroHumedadAmbiente; }
        //    set
        //    {
        //        if (_RegistroHumedadAmbiente != value)
        //        {
        //            _RegistroHumedadAmbiente = value;
        //            OnPropertyChanged(nameof(RegistroHumedadAmbiente));
        //        }
        //    }
        //}

        //private RegistroIntensidadLuz _RegistroIntensidadLuz;
        //public RegistroIntensidadLuz RegistroIntensidadLuz
        //{
        //    get { return _RegistroIntensidadLuz; }
        //    set
        //    {
        //        if (_RegistroIntensidadLuz != value)
        //        {
        //            _RegistroIntensidadLuz = value;
        //            OnPropertyChanged(nameof(RegistroIntensidadLuz));
        //        }
        //    }
        //}



        private readonly IGestionAmbiente_Model IGestionAmbiente_Model;
        public GestionAmbientesViewModel(IGestionAmbiente_Model IGestionAmbiente_Model)
        {

            this.IGestionAmbiente_Model = IGestionAmbiente_Model;
            _hubConnection = new HubConnectionBuilder()
            .WithUrl(url)
            .Build();
          
            _hubConnection.On<RegistroTemperaturaAmbiente>("TemperaturaAmbiente", async (Temp) =>
            {
                await InvokeAsync(() =>
                {
                    RegistroTemperaturaAmbiente = Temp;
                    StateHasChanged();
                });
            });
            _hubConnection.On<RegistroHumedadAmbiente>("HumedadAmbiente", async (Humd) =>
            {
                await InvokeAsync(() =>
                {
                    RegistroHumedadAmbiente = Humd;
                    StateHasChanged();
                });
            });
            _hubConnection.On<RegistroIntensidadLuz>("LuzAmbiente", async (Lum) =>
            {
                await InvokeAsync(() =>
                {
                    RegistroIntensidadLuz = Lum;
                    StateHasChanged();
                });
            });
        }
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async Task OnInitializeAsync()
        {
            
            await _hubConnection.StartAsync();
        }

    }
}
