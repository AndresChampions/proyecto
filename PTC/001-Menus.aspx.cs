using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC
{
    public partial class _001_Menus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("01-I-Menus.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("001-1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("001-2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("001-3.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("001-4.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("001-5.aspx");
        }
    }
}