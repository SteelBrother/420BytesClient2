
using _420BytesClient.DT.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Model.Auth.Interfaces
{
    public interface ILoginModel
    {
        Task<string> LoginUsuario(UserInfo userInfo);
    }
}
