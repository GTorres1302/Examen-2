using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TiendaUH.Clases
{
    public class clsTecnicos
    {
        public int tecnico_ID { get; set; }
        public string nombre { get; set; }
        public string especialidad { get; set; }

        public clsTecnicos(int tecnico_ID, string nombre, string especialidad)
        {
            this.tecnico_ID = tecnico_ID;
            this.nombre = nombre;
            this.especialidad = especialidad;
        }

        public void Agregar() { }
        public void Borrar() { }
        public void Consultar() { }
        public void Modificar() { }

    }
}