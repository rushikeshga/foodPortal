using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.Remove("Receiveuser");
        if (Session["Adminuser"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("admin");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("Adminuser");
        Response.Redirect("Home.aspx");
    }
}