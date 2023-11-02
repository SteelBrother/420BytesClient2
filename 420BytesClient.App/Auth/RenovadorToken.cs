using _420BytesClient.App.Auth.Interfaces;
using System;
using System.Timers;

namespace _420BytesClient.App.Auth
{
    public class RenovadorToken : IDisposable
    {
        private readonly IProveedorAutenticacionJWT proveedorAutenticacionJWT;
        public RenovadorToken(IProveedorAutenticacionJWT proveedorAutenticacionJWT)
        {
            this.proveedorAutenticacionJWT = proveedorAutenticacionJWT;
        }
        private System.Timers.Timer timer;
        

        public void Iniciar()
        {
            timer = new System.Timers.Timer
            {
                Interval = 1000 * 60 * 60 * 6 // 6 horas
            };
            timer.Elapsed += Timer_Elapsed;
            timer.Start();
        }

        private void Timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            proveedorAutenticacionJWT.ManejarRenovacionToken();
        }
        public void Dispose()
        {
            timer?.Dispose();
            GC.SuppressFinalize(this);
        }
    }
}
