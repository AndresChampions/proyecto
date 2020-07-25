using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC
{
    public partial class _02__2_MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["usermane"].ToString();

            }
            catch (Exception ex)
            {
                Response.Redirect("1ing.aspx");
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
            Response.Redirect("02.2-Mainpage.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("02-Inicio.aspx");
        }
    }
}