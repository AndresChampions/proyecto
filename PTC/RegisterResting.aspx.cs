﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;


namespace PTC
{
    public partial class RegisterResting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("RegistroRest.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Trim() != "" && passwordfield.Text.Trim() != "" && confpasswordfield.Text.Trim() != "" && TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox5.Text.Trim() != "")
            {
                if (passwordfield.Text == confpasswordfield.Text)
                {
                    string nombre;
                    string apellido;
                    string encriptada;
                    string usuario;
                    string correo;

                    nombre = TextBox1.Text;
                    apellido = TextBox2.Text;
                    usuario = TextBox3.Text;
                    encriptada = EncryptString(passwordfield.Text, initVector);
                    correo = TextBox5.Text;
                    if (datos.UsuariosRepetidos(usuario, encriptada, nombre, apellido, correo) == 0)
                    {
                        //0-          alerta.Text = "<script>Swal.fire('Registrado con éxito', '¡Gracias por preferirnos!', 'success'); </script>";

                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        passwordfield.Text = "";
                        confpasswordfield.Text = "";
                        TextBox5.Text = "";
                    }
                    else
                    {
                        //1-      alerta.Text = "<script>Swal.fire('Este usuario ya existe', 'Elije  nuevo nombre de usuario', 'error'); </script>";
                    }
                }
                else
                {
                    //2-          alerta.Text = "<script>Swal.fire('Contraseña incorrecta', 'Repita su contraseña.', 'error');</script>";
                }
            }
            else
            {
                //3-        alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }
        private const string initVector = "pemgail9uzpgzl88";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt
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