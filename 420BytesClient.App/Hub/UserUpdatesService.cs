using _420BytesClient.App.Hub.Interfaces;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Hub
{
    public class UserUpdatesService 
    {
        //private readonly HubConnection _hubConnection;

        //public UserUpdatesService(string hubUrl)
        //{
        //    _hubConnection = new HubConnectionBuilder()
        //        .WithUrl(hubUrl)
        //        .Build();

        //    _hubConnection.On<List<Usuario>>("UsuariosActualizados", OnUsuariosActualizados);
        //}

        //public async Task ConnectAsync()
        //{
        //    try
        //    {
        //        await _hubConnection.StartAsync();
        //    }
        //    catch (Exception ex)
        //    {

        //        throw;
        //    }

        //}

        //public async Task DisconnectAsync()
        //{
        //    await _hubConnection.StopAsync();
        //}

        //public event EventHandler<List<Usuario>> UsuariosActualizados;

        //private void OnUsuariosActualizados(List<Usuario> users)
        //{
        //    UsuariosActualizados?.Invoke(this, users);
        //}
        private HubConnection _connection;
        string url = "https://localhost:7205/UserUpdatesHub";
        public bool isConnected { get; set; } = false;
        public string connectionStatus { get; set; } = "Closed";
        public async Task ConnectToServer()
        {
            _connection = new HubConnectionBuilder()
                .WithUrl(url)
                .Build();

            await _connection.StartAsync();
            isConnected = true;
            connectionStatus = "Connected :-)";

            //_connection.On<List<Usuario>>("UsuariosActualizados", (users) =>
            //{
            //    UpdateUsers(users);
            //});

            _connection.Closed += async (s) =>
            {
                isConnected = false;
                connectionStatus = "Disconnected";
                await _connection.StartAsync();
                isConnected = true;
            };

            //_connection.On<string>("notification", m =>
            //{
            //    notifications.Add(m);
            //});
        }
    }
}
