using _420BytesClient.App.Hub.Interfaces;
using _420BytesClient.App.Model.Usuarios.Interfaces;
using _420BytesClient.App.ViewModels.Usuarios.Interfaces;
using _420BytesClient.DT.Usuario;
using Microsoft.AspNetCore.SignalR.Client;
using Microsoft.JSInterop;
using System.Collections.ObjectModel;
using System.ComponentModel;

namespace _420BytesClient.App.ViewModels.Usuarios
{
    public class IndiceUsuarios_ViewModel : IIndiceUsuarios_ViewModel, INotifyPropertyChanged
    {
        private readonly IGestionUsuariosModel IGestionUsuariosModel;
        //private readonly IMostrarMensajes MostrarMensajes;
        //private IUserUpdatesService IUserUpdatesService;
        //private HubConnection _connection;
        private readonly IJSRuntime js;
        public IndiceUsuarios_ViewModel(IGestionUsuariosModel IGestionUsuariosModel, IJSRuntime js)
        {
            this.IGestionUsuariosModel = IGestionUsuariosModel;
            //this.MostrarMensajes = MostrarMensajes;
            this.js = js;
            Usuarios = new List<Usuario>();
        }

        private List<Usuario> _Usuarios;

        public List<Usuario> Usuarios
        {
            get { return _Usuarios; }
            set
            {
                if (_Usuarios != value)
                {
                    _Usuarios = value;
                    OnPropertyChanged(nameof(Usuarios));
                }
            }
        }

        public Usuario Usuario { get; set; } = new Usuario();
        public bool Respuesta { get; set; } = false;
       
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async Task InitializeAsync()
        {
            await ObtenerListaUsuariosAsync();
        }

   
        public async Task ActualizarUsuario(Usuario usuario)
        {
            Respuesta = await IGestionUsuariosModel.ActualizarUsuario(usuario);
            await ObtenerListaUsuariosAsync();
        }
        public async Task<bool> BorrarUsuario(int Cedula)
        {
            try
            {
                var repsuesta = await IGestionUsuariosModel.BorrarUsuario(Cedula);
                await ObtenerListaUsuariosAsync();
                return Respuesta;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se ha producido una excepción: " + ex.Message);
                return false;
            }

        }
        public async Task ConsultarUsuarioPorCedulaAsync(int Cedula)
        {
            Usuario = await IGestionUsuariosModel.ConsultarUsuarioPorCedula(Cedula);      
        }
        public async Task ObtenerListaUsuariosAsync()
        {
            Usuarios = await IGestionUsuariosModel.ConsultarUsuarios();
        }
        public async Task RegitrarUsuario(object Usuario)
        {
            var usu = (Usuario)Usuario;
            Respuesta = await IGestionUsuariosModel.RegistrarUsuario(usu);
            await ObtenerListaUsuariosAsync();
        }
    }
}

