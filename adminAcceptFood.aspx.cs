using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration;
public partial class adminAcceptFood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.Remove("Receiveuser");
        if (Session["Adminuser"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        if (!this.IsPostBack)
        {
            BindGridView();
        } 
    }
    private void BindGridView()
    {
        string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        string st="Accept";
        string rec="No";
        SqlCommand cmd = new SqlCommand("select * from DonateFood where status='"+st+"' and Donated='"+rec+"'", con);
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditButton")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            Response.Redirect("~/AdminDonate.aspx?FoodId=" + row.Cells[0].Text);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("Adminuser");
        Response.Redirect("Home.aspx");
  
    }
}