using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Usuarios.Interfaces
{
    public interface IIndiceUsuarios_ViewModel
    {
        event PropertyChangedEventHandler PropertyChanged;
        List<Usuario> Usuarios { get; set; }
        Usuario Usuario { get; set; }
        Task ActualizarUsuario(Usuario usuario);
        Task<bool> BorrarUsuario(int Cedula);
        Task ConsultarUsuarioPorCedulaAsync(int Cedula);
        Task ObtenerListaUsuariosAsync();
        Task InitializeAsync();
        Task RegitrarUsuario(object Usuario);
    }
}
