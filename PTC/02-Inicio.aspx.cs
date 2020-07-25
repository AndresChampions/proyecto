using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC
{
    public partial class _02_Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["usermane"].ToString();

            }
            catch (Exception ex)
            {
                Response.Redirect("1.aspx");
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
            Response.Redirect("02.2-MainPage.aspx");
        }
    }
}