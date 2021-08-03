using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration;
public partial class ReceiveRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            
            string req="requested";
            con.Open();
            string qry1 = "insert into ReceiverRegister values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + req + "')";
            SqlCommand cmd = new SqlCommand(qry1, con);
            
            cmd.ExecuteNonQuery();
            
                Response.Redirect("ReceiverStatus.aspx");
            con.Close();
            
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReceiveLogin.aspx");
    }
}