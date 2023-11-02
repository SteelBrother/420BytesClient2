using _420BytesClient.DT.Usuario;
using Microsoft.AspNet.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Hub
{
    public class UpdateUserListHubConnection : HubConnection
    {
        private readonly HubConnection _connection;

        public UpdateUserListHubConnection(string url, bool useDefaultUrl) : base(url, useDefaultUrl)
        {
            _connection = new HubConnection(url);

            // Crear una instancia de la clase IHubProxy para el hub con el nombre "ChatHub".
            var chatHubProxy = _connection.CreateHubProxy("UserUpdatesHub");

            // Invocar el método "UpdateUserList" en el hub "UserUpdatesHub".
            _connection.Start();

            // Registrar un manejador de eventos para el evento "UpdateUserList".
            chatHubProxy.On("UpdateUserList", (users) =>
            {
                // Recibido una lista de usuarios.
                // ...
            });
        }

        public async Task Start()
        {
            await _connection.Start();
        }

        public async Task DisposeAsync()
        {
            await _connection.DisposeAsync();
        }

        private void ActualizarTablaUsuarios(List<Usuario> users)
        {
            // Actualizar la lista de usuarios en la tabla
            // ...
        }

        public void Dispose()
        {
            // DisposeAsync() es asincrono, por lo que debemos llamarlo de forma asíncrona
            //await DisposeAsync();

            // Para llamarlo de forma síncrona, podemos utilizar el método DisposeSync()
            DisposeSync();
        }

        private void DisposeSync()
        {
            _connection.Dispose();
        }
    }
}
