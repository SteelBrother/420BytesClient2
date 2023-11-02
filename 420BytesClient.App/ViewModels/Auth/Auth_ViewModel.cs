using _420BytesClient.App.Model.Auth.Interfaces;
using _420BytesClient.App.ViewModels.Auth.Interfaces;
using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Auth
{
    public class Auth_ViewModel : IAuth_ViewModel, INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private readonly ILoginModel _ILoginModel;

        public Auth_ViewModel(ILoginModel ILoginModel)
        {
            this._ILoginModel = ILoginModel;
            this._Usuario = new Usuario();
            //this.MostrarMensajes = MostrarMensajes;
        }

        private Usuario _Usuario;
        public Usuario Usuario
        {
            get { return _Usuario; }
            set
            {
                if (_Usuario != value)
                {
                    _Usuario = value;
                    OnPropertyChanged(nameof(Usuario));
                }
            }
        }


        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }


        public async Task Login()
        {
            if (Usuario != null)
            {
                UserInfo userInfo = new UserInfo
                {
                    NickName = Usuario.NickName,
                    Password = Usuario.Password
                };
                await _ILoginModel.LoginUsuario(userInfo);
            }

        }
    }
}
