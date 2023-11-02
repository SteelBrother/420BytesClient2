using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Usuarios.Interfaces
{
    public interface IIndiceUsuarios_ViewModel
    {
        Task ObtenerListaUsuariosAsync();
        Task ConsultarUsuarioPorCedulaAsync(int Cedula);
        List<Usuario> Usuarios { get; set; }
        bool Respuesta { get; set; }
        Usuario Usuario { get; set; }

        Task RegitrarUsuario(Usuario usuario);
        Task ActualizarUsuario(Usuario usuario);
        Task<bool> BorrarUsuario(int Cedula);
    }
}
