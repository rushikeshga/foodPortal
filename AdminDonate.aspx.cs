using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration;
public partial class AdminDonate : System.Web.UI.Page
{

    int foodid=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.Remove("Receiveuser");
        if (Session["Adminuser"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        foodid = Convert.ToInt32(Request.QueryString["FoodId"].ToString());
        if (!IsPostBack)
        {
            BindTextBoxvalues();
        }
    }
    private void BindTextBoxvalues()
    {
        string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        string st = "Accept";
        string rec = "No";
        SqlCommand cmd = new SqlCommand("select FoodId,FoodName,Uname,FoodType,quantity,Date from DonateFood where FoodId='" + foodid + "'and status='" + st + "' and Donated='" + rec + "'", con);
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        FoodId.Text = dt.Rows[0][0].ToString();
        FoodName.Text = dt.Rows[0][1].ToString();
        username.Text = dt.Rows[0][2].ToString();
        FoodType.Text = dt.Rows[0][3].ToString();
        quantity.Text = dt.Rows[0][4].ToString();
        date.Text = dt.Rows[0][5].ToString();
        
    }   
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        string rec = "Yes";
        DropDownList1.ClearSelection();
        string d = DropDownList1.SelectedValue;
        SqlCommand cmd = new SqlCommand("update DonateFood set Donated='" + rec +"' where FoodId=" + foodid, con);
        con.Open();
        int result = cmd.ExecuteNonQuery();
        con.Close();
        if (result == 1)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record Updated Successfully');", true);
        }
        Response.Redirect("adminAcceptFood.aspx");
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        //
    }

    public string Value { get; set; }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("Adminuser");
        Response.Redirect("Home.aspx");
  
    }
}