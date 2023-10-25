using _420BytesClient.App.Helpers.Interfaces;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Helpers
{
    public class Settings : ISettings
    {
        public string GetApiUrl()
        {
            string ApiUrl = "https://localhost:7205/api";
            return ApiUrl;
        }
    }
}
