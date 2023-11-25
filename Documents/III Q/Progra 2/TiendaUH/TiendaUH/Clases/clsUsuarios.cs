using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TiendaUH.Clases
{
    public class clsUsuarios
    {
        public int usuario_ID { get; set; }
        public string nombre { get; set; }
        public string correo_electronico { get; set; }
        public string telefono { get; set; }

        public clsUsuarios(int usuario_ID, string nombre, string correo_electronico, string telefono)
        {
            this.usuario_ID = usuario_ID;
            this.nombre = nombre;
            this.correo_electronico = correo_electronico;
            this.telefono = telefono;
        }

        public void Agregar() { }
        public void Borrar() { }
        public void Consultar() { }
        public void Modificar() { }
    }
}