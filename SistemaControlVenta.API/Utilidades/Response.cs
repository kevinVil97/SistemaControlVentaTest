﻿namespace SistemaControlVenta.API.Utilidades
{
    public class Response<T>
    {
        public bool status { get; set; }
        public string? msg { get; set; }
        public T? value { get; set; }

    }
}
