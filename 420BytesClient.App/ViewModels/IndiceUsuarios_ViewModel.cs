using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Model.Usuarios.Interfaces;
using _420BytesClient.App.ViewModels.Interfaces;
using _420BytesClient.DT.Usuario;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.ViewModels
{
    public class IndiceUsuarios_ViewModel : IIndiceUsuarios_ViewModel, INotifyPropertyChanged
    {
        private readonly IGestionUsuariosModel IGestionUsuariosModel;
        //private readonly IMostrarMensajes MostrarMensajes;
        public IndiceUsuarios_ViewModel(IGestionUsuariosModel IGestionUsuariosModel)
        {
            this.IGestionUsuariosModel = IGestionUsuariosModel;
            //this.MostrarMensajes = MostrarMensajes;
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
        public Usuario Usuario { get; set; }
        public bool Respuesta { get; set; } = false;

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async Task ActualizarUsuario(Usuario usuario)
        {
            Respuesta = await IGestionUsuariosModel.ActualizarUsuario(usuario);
            await ObtenerListaUsuariosAsync();
            //if (Respuesta)
            //{
            //    await MostrarMensajes.MostrarMensajeExitoso("Usuario actualizado con exito");
            //}
            //else
            //{
            //    await MostrarMensajes.MostrarMensajeExitoso("Error actualizando el usuario");
            //}
        }

        public async Task<bool> BorrarUsuario(int Cedula)
        {
            try
            {
                var repsuesta = await IGestionUsuariosModel.BorrarUsuario(Cedula);
                await ObtenerListaUsuariosAsync();
                return Respuesta;
            }
            catch (Exception ex )
            {
                Console.WriteLine("Se ha producido una excepción: " + ex.Message);
                return false;
            }
            
        }

        public async Task ConsultarUsuarioPorCedulaAsync(int Cedula)
        {
            Usuario = await IGestionUsuariosModel.ConsultarUsuarioPorCedula(Cedula);
            //if (Usuario == null)
            //{
            //    await MostrarMensajes.MostrarMensajeExitoso("Error consultando el usuario");
            //}        
        }

        public async Task ObtenerListaUsuariosAsync()
        {
            Usuarios = await IGestionUsuariosModel.ConsultarUsuarios();
            //if (!Respuesta)
            //{
            //    await MostrarMensajes.MostrarMensajeExitoso("Error consultando los usuarios");
            //}
        }

        public async Task RegitrarUsuario(Usuario Usuario)
        {
            Respuesta = await IGestionUsuariosModel.RegistrarUsuario(Usuario);
            await ObtenerListaUsuariosAsync();
            //if (Respuesta)
            //{
            //    await MostrarMensajes.MostrarMensajeExitoso("Usuario registrado con exito");
            //}
            //else
            //{
            //    await MostrarMensajes.MostrarMensajeExitoso("Error registrando el usuario");
            //}
        }
    }
}

