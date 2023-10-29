using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Model.Auth.Interfaces
{
    public interface IAuthUsuario_Model
    {
        Task<Usuario> Login(string NickName, string Password);

    }
}
