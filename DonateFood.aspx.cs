using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration;
public partial class DonateFood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("Adminuser");
        Session.Remove("Receiveuser");
        if (Session["user"] == null)
        {
            Response.Redirect("DonateLogin.aspx");
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {
            var dateAsString = DateTime.Now.ToString("yyyy-MM-dd");
            string foodType = RadioButtonList1.SelectedValue;
            string  foodName= TextBox2.Text;
            string quntity=TextBox3.Text;
            string user=Session["user"].ToString();
            string status="requested";
            string Received = "No";
            con.Open();
            string qry = "insert into DonateFood values ('"+foodName+"','"+user+"','"+foodType+"','"+quntity+"','"+dateAsString+"','"+status+"','"+Received+"')";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            Session["status"] = status;
            Response.Write("donation food requested");
            Response.Redirect("DonateStatus.aspx");            
            TextBox2.Text = "";
            TextBox3.Text = "";
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Session.Remove("user");
        Response.Redirect("Home.aspx");
    }
}