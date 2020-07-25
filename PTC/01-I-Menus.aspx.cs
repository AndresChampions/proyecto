using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC
{
    public partial class _01_I_Menus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("01-I1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("01-I2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("01-I3.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("01-I4.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("01-I5.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("001-Menus.aspx");
        }
    }
}