<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonateStatus.aspx.cs" Inherits="DonateStatus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
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
    <div style="position:absolute;bottom:0px;right:0px; height: 33px;">
        <asp:Button ID="Button2" runat="server" Text="Logout" onclick="Button2_Click" CausesValidation="false" />
    </div>
</div>
    <p style="color:white"> your food donation request has been sended<br />
    meanwhile your other food request status:</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="FoodId" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="FoodId" HeaderText="FoodId" InsertVisible="False" 
                ReadOnly="True" SortExpression="FoodId" />
            <asp:BoundField DataField="FoodName" HeaderText="FoodName" 
                SortExpression="FoodName" />
            <asp:BoundField DataField="Uname" HeaderText="Uname" SortExpression="Uname" />
            <asp:BoundField DataField="FoodType" HeaderText="FoodType" 
                SortExpression="FoodType" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" 
                SortExpression="quantity" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:BoundField DataField="Donated" HeaderText="Donated" 
                SortExpression="Donated" />
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
        InsertCommand="INSERT INTO [DonateFood] ([FoodName], [Uname], [FoodType], [quantity], [Date], [status], [Donated]) VALUES (@FoodName, @Uname, @FoodType, @quantity, @Date, @status, @Donated)" 
        SelectCommand="SELECT [FoodId], [FoodName], [Uname], [FoodType], [quantity], [Date], [status], [Donated] FROM [DonateFood] WHERE ([Uname] = @Uname)" 
        
        UpdateCommand="UPDATE [DonateFood] SET [FoodName] = @FoodName, [Uname] = @Uname, [FoodType] = @FoodType, [quantity] = @quantity, [Date] = @Date, [status] = @status, [Donated] = @Donated WHERE [FoodId] = @FoodId">
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
            <asp:Parameter Name="Donated" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="user" Name="Uname" SessionField="user" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FoodName" Type="String" />
            <asp:Parameter Name="Uname" Type="String" />
            <asp:Parameter Name="FoodType" Type="String" />
            <asp:Parameter Name="quantity" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="Donated" Type="String" />
            <asp:Parameter Name="FoodId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </form>
    </div>
</body>
</html>
