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
    public partial class _02__2_Add : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=ptc; Uid=root; pwd=;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usermane"] == null)
            {
                //Response.Redirect("AgregarComida.aspx");
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
            if (txtmarca.Text.Trim() != "" && txtproducto.Text.Trim() != "" && txtprecio.Text.Trim() != "" && txtcantidad.Text.Trim() != "")
            {
                try
                {
                    Add pAlumno = new Add();
                    pAlumno.Brand = txtmarca.Text.Trim();
                    pAlumno.Product = txtproducto.Text.Trim();
                    pAlumno.Price = txtprecio.Text.Trim();
                    pAlumno.Quantity= txtcantidad.Text.Trim();
                    int resultado = datosING.add(pAlumno);
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

                    alerta.Text = "<script>Swal.fire('Su producto se Agrego con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
                    txtproducto.Text = "";
                    txtprecio.Text = "";
                    txtcantidad.Text = "";
                    txtmarca.Text = "";

                }
                catch
                {
                    alerta.Text = "<script>Swal.fire('Algo salio mal', 'Intentalo otra vez', 'error') </script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
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
            Response.Redirect("02-AgregarComida.aspx");
        }
    }
}