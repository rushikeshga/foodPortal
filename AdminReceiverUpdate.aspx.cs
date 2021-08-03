using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration;

public partial class AdminReceiverUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.Remove("Receiveuser");
        if (Session["Adminuser"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
        {

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
        GridView1.EditRowStyle.BackColor = System.Drawing.Color.GreenYellow;
    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        Label receiverId = GridView1.Rows[e.RowIndex].FindControl("Label7") as Label;
        Label ReceiverName = GridView1.Rows[e.RowIndex].FindControl("Label8") as Label;
        Label Username = GridView1.Rows[e.RowIndex].FindControl("Label9") as Label;
        Label address = GridView1.Rows[e.RowIndex].FindControl("Label10") as Label;
        Label contact = GridView1.Rows[e.RowIndex].FindControl("Label11") as Label;
        string status = (GridView1.Rows[e.RowIndex].FindControl("DropDownList1") as DropDownList).SelectedItem.Value;
        String mycon = "Data Source=DESKTOP-3PJUUF2\\SQLEXPRESS;Initial Catalog=FoodPortal;Integrated Security=True;Pooling=False";
        String Update = "Update ReceiverRegister set ReceiveName='" + ReceiverName.Text + "',username='" + Username.Text + "',address='" + address.Text + "',contactNo='" + contact.Text + "',status='" + status + "' where ReceiveId='" + Convert.ToInt32(receiverId.Text) + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = Update;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label12.Text = "Row Data updated Successfully";
        GridView1.EditIndex = -1;
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
        Label13.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("Adminuser");
        Response.Redirect("Home.aspx");
  
    }
}