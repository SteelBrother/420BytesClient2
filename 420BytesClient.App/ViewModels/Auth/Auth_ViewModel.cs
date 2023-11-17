using _420BytesClient.App.Model.Auth.Interfaces;
using _420BytesClient.App.ViewModels.Auth.Interfaces;
using _420BytesClient.DT.DTOs;
using _420BytesClient.DT.Usuario;
using System.ComponentModel;

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
        }

        private readonly IAuthUsuario_Model _IAuthUsuario_Model;

        public Auth_ViewModel(IAuthUsuario_Model IAuthUsuario_Model)
        {
            this._IAuthUsuario_Model = IAuthUsuario_Model;

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
        public async Task Login(string NickName, string Password)
        {
            Usuario = await _IAuthUsuario_Model.Login(NickName, Password);

        }
    }
}
