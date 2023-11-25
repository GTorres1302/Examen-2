using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TiendaUH.Clases
{
    public class clsDB_Conn
    {
        public class DBConn
        {
            public static SqlConnection obtenerConexion()
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["TiendaUH"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                return conexion;
            }
        }
    }
}