<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminUpdate.aspx.cs" Inherits="AdminUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
</head>
<body>
<!-- Background image -->
<div class="bg-image" 
     style="background-image: url('https://i.pinimg.com/originals/4b/93/28/4b93286dca71bbf97bc24ab523755366.jpg');
            height: 100vh">
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.aspx">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="DonateFood.aspx">Donate Food <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ReceiverStatus.aspx">Receive Food</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Admin.aspx">Admin</a>
      </li>
    </ul>
  </div>
</nav>
   <div style="position:relative;">
    <div style="position:absolute;bottom:0px;right:0px;">
        <asp:Button ID="Button2" runat="server" Text="Logout" onclick="Button2_Click" CausesValidation="false" />
    </div>
</div>
  
    <div>
   <h3> <p style="color:white">Admin food status update panel:</p></h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="FoodId">
                    <EditItemTemplate>
                        <asp:Label ID="Label8" runat="server" style="text-align: center" 
                            Text='<%# Eval("FoodId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" style="text-align: center" 
                            Text='<%# Eval("FoodId") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FoodName">
                    <EditItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("FoodName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" style="text-align: center" 
                            Text='<%# Eval("FoodName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Uname">
                    <EditItemTemplate>
                        <asp:Label ID="Label10" runat="server" style="text-align: center" 
                            Text='<%# Eval("Uname") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Uname") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FoodType">
                    <EditItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("FoodType") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" style="text-align: center" 
                            Text='<%# Eval("FoodType") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <EditItemTemplate>
                        <asp:Label ID="Label12" runat="server" style="text-align: center" 
                            Text='<%# Eval("quantity") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" style="text-align: center" 
                            Text='<%# Eval("quantity") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date">
                    <EditItemTemplate>
                        <asp:Label ID="Label13" runat="server" style="text-align: center" 
                            Text='<%# Eval("Date") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" style="text-align: center" 
                            Text='<%# Eval("Date") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="status">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Text="Si" Value="Accept">Accept</asp:ListItem>
                                 <asp:ListItem Text="N" Value="Decline">Decline</asp:ListItem>
                                 
                            </asp:DropDownList>
                        <br />
                        <br />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Donated">
                    <EditItemTemplate>
                        <asp:Label ID="Label17" runat="server" style="text-align: center" 
                            Text='<%# Eval("Donated") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label16" runat="server" style="text-align: center" 
                            Text='<%# Eval("Donated") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Update">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update">Update</asp:LinkButton>
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FoodPortalConnectionString %>" 
            DeleteCommand="DELETE FROM [DonateFood] WHERE [FoodId] = @FoodId" 
            InsertCommand="INSERT INTO [DonateFood] ([FoodName], [Uname], [FoodType], [quantity], [Date], [status]) VALUES (@FoodName, @Uname, @FoodType, @quantity, @Date, @status)" 
            SelectCommand="SELECT * FROM [DonateFood] WHERE ([status] = @status)" 
            UpdateCommand="UPDATE [DonateFood] SET [FoodName] = @FoodName, [Uname] = @Uname, [FoodType] = @FoodType, [quantity] = @quantity, [Date] = @Date, [status] = @status WHERE [FoodId] = @FoodId">
            <DeleteParameters>
                <asp:Parameter Name="FoodId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FoodName" Type="String" />
                <asp:Parameter Name="Uname" Type="String" />
                <asp:Parameter Name="FoodType" Type="String" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="requested" Name="status" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FoodName" Type="String" />
                <asp:Parameter Name="Uname" Type="String" />
                <asp:Parameter Name="FoodType" Type="String" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="FoodId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
    <p>
        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
    </p>
    </form>
    </div>
</body>
</html>
