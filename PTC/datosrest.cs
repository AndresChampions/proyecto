using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace PTC
{
    public class datosrest
    {
        public static int UsuariosRepetidos2(string usuario, string contra, string nombre, string apellido, string correo)
        {
            int valor = 0;
            MySqlConnection conexion = conexionBD.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Usuario FROM usuariosresta WHERE Nombre_Usuario='" + usuario + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                //no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
            }
            else
            {
                datosrest.AgregarUsuario2(nombre, apellido, usuario, contra, correo);
            }
            conexion.Close();
            return valor;
        }
        //********************************************************************************
        public static int AgregarUsuario2(string nombre, string apellido, string usuario, string contra, string correo)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuariosresta (Nombre, Apellido, Nombre_Usuario, Password,Correo) values ('{0}','{1}','{2}','{3}','{4}')", nombre, apellido, usuario, contra, correo), conexionBD.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //********************************************************************************  
    }
}