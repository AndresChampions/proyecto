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
    public partial class _02__2_Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=ptc; Uid=root; pwd=;");
            if (Session["usermane"] == null)
            {
                Response.Redirect("02.2-MainPage.aspx");
            }
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from food";
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
                MySqlCommand comand = new MySqlCommand("SELECT * FROM food WHERE ID=@ID", conexion);
                comand.Parameters.AddWithValue("@ID", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    //alerta.Text = "<script>Swal.fire('Sea seleccionado con exito.', '', 'success'); </script>";

                    txtmarca.Text = registro["Brand"].ToString();
                    txtprecio.Text = registro["Price"].ToString();
                    txtproducto.Text = registro["Product"].ToString();
                    txtcantidad.Text = registro["Quantity"].ToString();
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
            if (txtmarca.Text.Trim() != "" && txtproducto.Text.Trim() != "" && txtprecio.Text.Trim() != "" && txtcantidad.Text.Trim() != "" && txtid.Text.Trim() != "")
            {

                MySqlConnection conexion = conexionBD.ObtenerConexion();
                string query = "UPDATE food SET Brand = @brand,  Product = @product, Price = @price, Quantity=@quantity WHERE ID=@id";
                MySqlCommand comando = new MySqlCommand(query, conexion);

                comando.Parameters.AddWithValue("@brand", txtmarca.Text);
                comando.Parameters.AddWithValue("@product", txtproducto.Text);
                comando.Parameters.AddWithValue("@price", txtprecio.Text);
                comando.Parameters.AddWithValue("@quantity", txtcantidad.Text);
                comando.Parameters.AddWithValue("@ID", txtid.Text);
                comando.ExecuteNonQuery();
                conexion.Close();
                MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=ptc; Uid=root; pwd=;");
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from food";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();
                conec.Close();

                txtmarca.Text = "";
                txtproducto.Text = "";
                txtprecio.Text = "";
                txtcantidad.Text = "";
                txtid.Text = "";
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
            Response.Redirect("LoginResting.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("02.2-Edit.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("02.2-Add.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("02.2-Mainpage");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("02-EditarComida.aspx");
        }
    }
}