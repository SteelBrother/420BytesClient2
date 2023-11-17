using _420BytesClient.DT.Ambiente;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.App.Model.Ambiente.Interfaces
{
    public interface IGestionAmbiente_Model
    {
        Task<RegistroTemperaturaAmbiente> ObtenerUltimaTemperaturaRegistrada(int Ambiente);
        Task<RegistroHumedadAmbiente> ObtenerUltimaHumedadRegistrada(int Ambiente);
        Task<RegistroIntensidadLuz> ObtenerUltimaIntensidadLuzRegistrada(int Ambiente);
    }
}
