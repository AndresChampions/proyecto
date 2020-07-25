using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace PTC
{
    public class datosING
    {
        public static int add(Add pAlumno)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into food (ID, Product , Brand , Price, Quantity) values('{0}','{1}','{2}','{3}','{4}')", pAlumno.Id, pAlumno.Product, pAlumno.Brand, pAlumno.Price, pAlumno.Quantity), conexionBD.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }
    }
}