using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Hub.Interfaces
{
    public interface IUserUpdatesService
    {
        Task ConnectAsync();
        Task DisconnectAsync();
        event EventHandler<List<Usuario>> UsuariosActualizados;
    }
}
