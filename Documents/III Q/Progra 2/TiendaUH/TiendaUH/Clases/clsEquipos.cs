using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using static TiendaUH.Clases.clsDB_Conn;

namespace TiendaUH.Clases
{
    public class clsEquipos
    {
        public int equipo_ID { get; set; }
        public string tipo_Equipo { get; set; }
        public string modelo { get; set; }

        public clsEquipos(int equipo_ID, string tipo_Equipo, string modelo)
        {
            this.equipo_ID = equipo_ID;
            this.tipo_Equipo = tipo_Equipo;
            this.modelo = modelo;
        }
    }

    public static int Agregar(string descripcion)
    {
        int retorno = 0;

        SqlConnection Conn = new SqlConnection();
        try
        {
            using (Conn = DBConn.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand("INGRESARTIPO", Conn)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.Add(new SqlParameter("@DESCRIPCION", descripcion));


                retorno = cmd.ExecuteNonQuery();
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            retorno = -1;
        }
        finally
        {
            Conn.Close();
        }

        return retorno;
    }
}