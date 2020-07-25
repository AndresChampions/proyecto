using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace PTC
{
    public partial class _02_EditarComida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=ptc; Uid=root; pwd=;");
            if (Session["usermane"] == null)
            {
                Response.Redirect("02-Inicio.aspx");
            }
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from comida";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = conexionBD.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM comida WHERE ID=@ID", conexion);
                comand.Parameters.AddWithValue("@ID", TextBox1.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    //alerta.Text = "<script>Swal.fire('Sea seleccionado con exito.', '', 'success'); </script>";

                    TextBox2.Text = registro["Marca"].ToString();
                    TextBox3.Text = registro["Precio"].ToString();
                    TextBox4.Text = registro["Producto"].ToString();
                    TextBox5.Text = registro["Cantidad"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                //alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox3.Text.Trim() != "" && TextBox4.Text.Trim() != "" && TextBox5.Text.Trim() != "")
            {

                MySqlConnection conexion = conexionBD.ObtenerConexion();
                string query = "UPDATE comida SET Marca = @marca,  Producto = @producto, Precio = @precio, Cantidad=@cantidad WHERE ID=@id";
                MySqlCommand comando = new MySqlCommand(query, conexion);

                comando.Parameters.AddWithValue("@marca", TextBox2.Text);
                comando.Parameters.AddWithValue("@producto", TextBox3.Text);
                comando.Parameters.AddWithValue("@precio", TextBox4.Text);
                comando.Parameters.AddWithValue("@cantidad", TextBox5.Text);
                comando.Parameters.AddWithValue("@ID", TextBox1.Text);
                comando.ExecuteNonQuery();
                conexion.Close();
                MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=ptc; Uid=root; pwd=;");
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from comida";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();
                conec.Close();


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                //alerta.Text = "<script>Swal.fire('Su producto se Editado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
            }
            else
            {
                //alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("usermane");
            Response.Redirect("LoginRest.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("02-EditarComida.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("02-AgregarComida.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("02-Inicio.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("02.2-Edit.aspx");
        }
    }
}