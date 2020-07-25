using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.SqlClient;

namespace PTC.restaurante
{
    public partial class LoginResting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoginRest.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "" && TextBox1.Text != "")//Validando espacio vacio
            {
                string contra, usuario;
                contra = EncryptString(TextBox2.Text, initVector);
                usuario = TextBox1.Text;
                datos1.valorGlobal = usuario; //llamamos la clase datos1


                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= ptc; Uid=root; pwd=;");
                var cmd = "SELECT Id_Usuario from usuariosresta WHERE Nombre_Usuario='" + usuario + "' AND Password='" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());
                if (retorno != 0)
                {
                    Session["usermane"] = TextBox1;//Creamos una session 
                    Response.Redirect("02.2-MainPage.aspx");//Nos redirecciona a nuestro formulario
                }
                else
                {
                    //Mensaje de alerta que se mostrará; como que fuese un MessageBox solo que con animacion javascript de SweetAlert
                    // 1-      alerta.Text = "<script>Swal.fire('Error de Credenciales', 'Su usuario o contraseña no son correctos', 'error') </script>";
                    TextBox2.Text = "";//Limpia los text box
                    TextBox1.Text = "";
                }
            }
            else
            {
                // 2-             alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        private const string initVector = "pemgail9uzpgzl88";//llave del encriptado        
        private const int keysize = 256;// Esta constante se usa para determinar el tamaño de clave del algoritmo de cifrado
        //Encriptar
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }
    }
}