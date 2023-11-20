using Microsoft.AspNetCore.Components.WebView.Maui;
using Syncfusion.Blazor;
using TestProyect.Data;
using TestProyect.Services;

namespace TestProyect
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
#endif

            builder.Services.AddHttpClient("MyHttpClient", client =>
            {
                // Configure HttpClient here
                client.BaseAddress = new Uri("https://localhost:7205/api");
                // Add any headers, default timeouts, etc.
            });

            //builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });
            builder.Services.AddSyncfusionBlazor();
            builder.Services.AddScoped<IAppointmentService, AppointmentService>();
            builder.Services.AddSingleton<WeatherForecastService>();
            builder.Services.AddSingleton<CalendarioViewModel>();

            return builder.Build();
        }
    }
}