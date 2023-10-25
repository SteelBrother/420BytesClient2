using _420BytesClient.App.Data;
using _420BytesClient.App.Model;
using _420BytesClient.App.Model.Interfaces;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Microsoft.Extensions.DependencyInjection;
using _420BytesClient.App.Helpers.Interfaces;
using _420BytesClient.App.Helpers;
using Syncfusion.Blazor;
using _420BytesClient.App.ViewModels.Interfaces;
using _420BytesClient.App.ViewModels;
using _420BytesClient.App.Model.Usuarios.Interfaces;
using _420BytesClient.App.Model.Usuarios;

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

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
		builder.Logging.AddDebug();
#endif
            //builder.Services.AddSingleton(new HttpClient { BaseAddress = new Uri(builder.envi.BaseAddress) });
            builder.Services.AddSingleton<IConexionRest, ConexionRest>();
            builder.Services.AddHttpClient();
            builder.Services.AddAuthorizationCore();
            builder.Services.AddSyncfusionBlazor(true);
            builder.Services.AddTransient<IIndiceUsuarios_ViewModel, IndiceUsuarios_ViewModel>();
            builder.Services.AddTransient<IGestionUsuariosModel, GestionUsuarios_Model>();
            //builder.Services.AddSingleton<IMostrarMensajes, MostrarMensajes>();
            builder.Services.AddSingleton<ISettings, Settings>();
            //ConfigureViewModels(builder.Services);
            //ConfigureModels(builder.Services);  
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