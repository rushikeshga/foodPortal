using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReceiverStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("Adminuser");
        Session.Remove("user");
        if (Session["Receiveuser"] == null)
        {
            Response.Redirect("ReceiveLogin.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("Receiveuser");
        Response.Redirect("Home.aspx");
    }
}