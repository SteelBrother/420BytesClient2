using _420BytesClient.App.Data;
using _420BytesClient.App.Model;
using _420BytesClient.App.Model.Interfaces;
using Microsoft.Extensions.Logging;
using Microsoft.AspNetCore.Components.Authorization;
using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Helpers;
using Syncfusion.Blazor;
using _420BytesClient.App.Model.Usuarios.Interfaces;
using _420BytesClient.App.Model.Usuarios;
using _420BytesClient.App.ViewModels.Usuarios.Interfaces;
using _420BytesClient.App.ViewModels.Usuarios;
using _420BytesClient.App.ViewModels.Scheduler.Interfaces;
using _420BytesClient.App.ViewModels.Scheduler;
using _420BytesClient.App.Model.Scheduler.Interfaces;
using _420BytesClient.App.Model.Scheduler;
using _420BytesClient.App.Auth;
using _420BytesClient.App.Auth.Interfaces;
using _420BytesClient.App.Model.Auth.Interfaces;
using _420BytesClient.App.Model.Auth;
using _420BytesClient.App.ViewModels.Auth.Interfaces;
using _420BytesClient.App.ViewModels.Auth;
using Microsoft.AspNetCore.Components.Web.Extensions;
using _420BytesClient.App.Hub.Interfaces;
using _420BytesClient.App.Hub;
using _420BytesClient.App.Model.Ambiente.Interfaces;
using _420BytesClient.App.Model.Ambiente;
using _420BytesClient.App.ViewModels.Ambiente.Interfaces;
using _420BytesClient.App.ViewModels.Ambiente;
using MatBlazor;
using MudBlazor.Services;
using _420BytesClient.App.View;

namespace _420BytesClient.App
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();
            builder.Services.AddSyncfusionBlazor(options =>
            {
                options.EnableRippleEffect = true;
            });
			builder.Services.AddSingleton<PantallaCarga>(new PantallaCarga()); // Cambia "MainPage" por la página que desees iniciar
#if DEBUG
			builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Logging.AddDebug();
#endif
            //builder.Services.AddMatBlazor();
            builder.Services.AddSingleton<IConexionRest, ConexionRest>();
            builder.Services.AddHttpClient();
            builder.Services.AddScoped<AuthenticationStateProvider, CustomAuthenticationStateProvider>();
            builder.Services.AddSingleton<RefrescarAppState>();
            builder.Services.AddAuthorizationCore();
            builder.Services.AddHttpContextAccessor();
            builder.Services.AddTransient<IIndiceUsuarios_ViewModel, IndiceUsuarios_ViewModel>();
            builder.Services.AddTransient<IGestionUsuariosModel, GestionUsuarios_Model>();
            builder.Services.AddTransient<IAppointment_ViewModel, Appointment_ViewModel>();
            builder.Services.AddTransient<IAppointment_Model, Appointment_Model>();
            builder.Services.AddTransient<ILoginModel, Login_Model>();
            builder.Services.AddTransient<IAuth_ViewModel, Auth_ViewModel>();
            builder.Services.AddTransient<IGestionAmbiente_Model, GestionAmbiente_Model>();
            //builder.Services.AddTransient<IGestionAmbientes_ViewModel, GestionAmbientesViewModel>();
            builder.Services.AddTransient<IAuth_ViewModel, Auth_ViewModel>();
            builder.Services.AddSingleton<UsuariosViewModel>();

            //builder.Services.AddSingleton<IMostrarMensajes, MostrarMensajes>();
            builder.Services.AddSingleton<ISettings, Settings>();
            builder.Services.AddScoped<ProveedorAutenticacionJWT>();

            builder.Services.AddScoped<AuthenticationStateProvider, ProveedorAutenticacionJWT>(
                provider => provider.GetRequiredService<ProveedorAutenticacionJWT>());
            builder.Services.AddScoped<IProveedorAutenticacionJWT, ProveedorAutenticacionJWT>(
                provider => provider.GetRequiredService<ProveedorAutenticacionJWT>());



            //      builder.Services.AddAuthenticationCore(JwtBearerDefaults.AuthenticationScheme)
            //.AddJwtBearer(options =>
            //{
            //    options.TokenValidationParameters = new TokenValidationParameters
            //    {
            //        ValidateIssuer = true,
            //        ValidIssuer = "https://localhost:7205",

            //        ValidateAudience = true,
            //        ValidAudience = "https://localhost:7205/api/Usuarios/ConsultaUsuarios",

            //        ValidateLifetime = true,
            //    };
            //});


            //ConfigureViewModels(builder.Services);
            //ConfigureModels(builder.Services);  
            builder.Services.AddMudServices();
            return builder.Build();
        }
        private static void ConfigureViewModels(IServiceCollection services)
        {
            var assembly = AppDomain.CurrentDomain.GetAssemblies()
                .Where(a => a
                .FullName.StartsWith("420BytesClient.App"))
                .First();
            var classes = assembly.ExportedTypes.Where(a => a
                 .FullName.Contains("_ViewModel"));
            foreach (Type t in classes)
            {
                foreach (Type i in t.GetInterfaces())
                {
                    services.AddTransient(i, t);
                }
            }
        }

        private static void ConfigureModels(IServiceCollection services)
        {
            var assembly = AppDomain.CurrentDomain.GetAssemblies()
            .Where(a => a
            .FullName.StartsWith("420BytesClient.App"))
            .First();
            var classes = assembly.ExportedTypes.Where(a => a
                 .FullName.Contains("_Model"));
            foreach (Type t in classes)
            {
                foreach (Type i in t.GetInterfaces())
                {
                    services.AddTransient(i, t);
                }
            }

        }
    }
}