using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC
{
    public partial class _1ing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginIngles.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginResting.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginDeling.aspx");
        }
    }
}