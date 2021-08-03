using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration;

public partial class DonateRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into DonateRegister values(@name,@uname,@password,@address,@contactno)", con);
            cmd.Parameters.AddWithValue("name", TextBox1.Text);
            cmd.Parameters.AddWithValue("uname", TextBox2.Text);
            cmd.Parameters.AddWithValue("password", TextBox3.Text);
            cmd.Parameters.AddWithValue("address", TextBox4.Text);
            cmd.Parameters.AddWithValue("contactno", TextBox5.Text);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox1.Focus();
            Response.Write("Donation Successfully");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 
    }
}