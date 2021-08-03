<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminReceiverUpdate.aspx.cs" Inherits="AdminReceiverUpdate" %>

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
    
        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" 
            style="text-align: justify" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Vertical" onrowcancelingedit="GridView1_RowCancelingEdit1" 
            onrowediting="GridView1_RowEditing1" onrowupdating="GridView1_RowUpdating1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ReceiverId">
                    <EditItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("ReceiveId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" style="text-align: center" 
                            Text='<%# Eval("ReceiveId") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Receiver Name">
                    <EditItemTemplate>
                        <asp:Label ID="Label8" runat="server" style="text-align: center" 
                            Text='<%# Eval("ReceiveName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" style="text-align: center" 
                            Text='<%# Eval("ReceiveName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Username">
                    <EditItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" style="text-align: center" 
                            Text='<%# Eval("username") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:Label ID="Label10" runat="server" style="text-align: center" 
                            Text='<%# Eval("address") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" style="text-align: center" 
                            Text='<%# Eval("address") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact No.">
                    <EditItemTemplate>
                        <asp:Label ID="Label11" runat="server" style="text-align: center" 
                            Text='<%# Eval("contactNo") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" style="text-align: center" 
                            Text='<%# Eval("contactNo") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Text="Si" Value="Accept">Accept</asp:ListItem>
                                 <asp:ListItem Text="N" Value="Decline">Decline</asp:ListItem>
                                 
                            </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" style="text-align: center" 
                            Text='<%# Eval("status") %>'></asp:Label>
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
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FoodPortalConnectionString %>" 
        DeleteCommand="DELETE FROM [ReceiverRegister] WHERE [ReceiveId] = @ReceiveId" 
        InsertCommand="INSERT INTO [ReceiverRegister] ([ReceiveName], [username], [address], [contactNo], [status]) VALUES (@ReceiveName, @username, @address, @contactNo, @status)" 
        SelectCommand="SELECT [ReceiveId], [ReceiveName], [username], [address], [contactNo], [status] FROM [ReceiverRegister] WHERE ([status] = @status)" 
        UpdateCommand="UPDATE [ReceiverRegister] SET [ReceiveName] = @ReceiveName, [username] = @username, [address] = @address, [contactNo] = @contactNo, [status] = @status WHERE [ReceiveId] = @ReceiveId">
        <DeleteParameters>
            <asp:Parameter Name="ReceiveId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ReceiveName" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contactNo" Type="Int64" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="requested" Name="status" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ReceiveName" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contactNo" Type="Int64" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="ReceiveId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
    </form>
    </div>
</body>
</html>
