using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonateStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("Adminuser");
        Session.Remove("Receiveuser");
        if (Session["user"] == null)
        {
            Response.Redirect("DonateLogin.aspx");
        }
        if (Session["status"] != null)
        {
            string status = Session["status"].ToString();
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Response.Redirect("Home.aspx");
    }
}