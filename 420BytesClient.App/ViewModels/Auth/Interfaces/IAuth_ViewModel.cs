using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Auth.Interfaces
{
    public interface IAuth_ViewModel
    {
        Task Login();
        Usuario Usuario { get; set; }

    }
}
