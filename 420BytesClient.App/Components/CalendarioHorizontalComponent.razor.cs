using Microsoft.AspNetCore.Components;
using Microsoft.JSInterop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Components
{
    public class CalendarioHorizontalComponentBase : ComponentBase
    {
        [Inject] IJSRuntime js { get; set; }

        protected override async Task OnAfterRenderAsync(bool firstRender)
        {
            if (firstRender)
            {
                await js.InvokeVoidAsync("initializeCalendar");
            }
        }
    }
}
