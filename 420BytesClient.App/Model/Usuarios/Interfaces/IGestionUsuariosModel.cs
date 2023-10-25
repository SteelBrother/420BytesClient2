using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Model.Usuarios.Interfaces
{
    public interface IGestionUsuariosModel
    {
        Task <bool>ActualizarUsuario(Usuario Usuario);
        Task<List<Usuario>> ConsultarUsuarios();
        Task<Usuario> ConsultarUsuarioPorCedula(int Cedula);
        Task<bool> RegistrarUsuario(Usuario Usuario);
        Task<bool> BorrarUsuario(int Cedula);

    }
}
