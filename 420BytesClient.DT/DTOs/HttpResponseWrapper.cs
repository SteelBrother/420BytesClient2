﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _420BytesClient.DT.DTOs
{
    public class HttpResponseWrapper<T>
    {
        public HttpResponseWrapper(T response, bool error, HttpResponseMessage httpResponseMessage)
        {
            Error = error;
            Response = response;
            HttpResponseMessage = httpResponseMessage;
        }

        public bool Error { get; set; }
        public T Response { get; set; }
        public HttpResponseMessage HttpResponseMessage { get; set; }

        public async Task<string> GetBody()
        {
            return await HttpResponseMessage.Content.ReadAsStringAsync();
        }
    }
}
