using _420BytesClient.App.Helpers.Interfaces; 
using _420BytesClient.App.Model.Auth;
using _420BytesClient.App.Model.Auth.Interfaces;
using _420BytesClient.App.ViewModels.Auth.Interfaces;
using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels.Auth
{
    public class Auth_ViewModel : IAuth_ViewModel, INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private readonly IAuthUsuario_Model _IAuthUsuario_Model;

        public Auth_ViewModel(IAuthUsuario_Model IAuthUsuario_Model)
        {
            this._IAuthUsuario_Model = IAuthUsuario_Model;
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


        public async Task Login(string NickName, string Password)
        {
            Usuario = await _IAuthUsuario_Model.Login(NickName, Password);
        }
    }
}
