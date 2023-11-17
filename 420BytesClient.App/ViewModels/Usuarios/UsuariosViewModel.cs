using _420BytesClient.DT.Ambiente;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Usuarios
{
    public class UsuariosViewModel : ComponentBase
    {
        //string url = "https://localhost:7205/UserUpdatesHub";
        string url = "https://ganjapp.azurewebsites.net/AmbienteUpdatesHub";
        private readonly HubConnection _hubConnection;
        public List<Usuario> Usuarios { get; set; } = new List<Usuario>();
        public RegistroTemperaturaAmbiente RegistroTemperaturaAmbiente { get; set; } = new RegistroTemperaturaAmbiente();
        public RegistroHumedadAmbiente RegistroHumedadAmbiente { get; set; } = new RegistroHumedadAmbiente();
        public RegistroIntensidadLuz RegistroIntensidadLuz { get; set; } = new RegistroIntensidadLuz();

        public UsuariosViewModel()
        {
            _hubConnection = new HubConnectionBuilder()
                .WithUrl(url)  
                .Build();

            //_hubConnection.On<List<Usuario>>("UsuariosActualizados", async (users) =>
            //{
            //    await InvokeAsync(() =>
            //    {
            //        Usuarios = users;
            //        StateHasChanged(); 
            //    });
            //});
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


        protected override async Task OnInitializedAsync()
        {
            await _hubConnection.StartAsync();
        }
    }
}
