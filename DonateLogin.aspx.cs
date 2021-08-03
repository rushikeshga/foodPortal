using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration;
public partial class DonateLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DonateRegister.aspx");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {
            string uid = TextBox1.Text;
            string pass = TextBox2.Text;
            con.Open();
            string qry = "select * from DonateRegister where DuserName='" + uid + "' and Dpass='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("DonateFood.aspx");

            }
            else
            {
                Response.Write("UserId & Password Is not correct Try again..!!");

            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }  
        
    }
}