<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReceiverStatus.aspx.cs" Inherits="ReceiverStatus" %>

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
<h3><p style="color:white">Status of being an food Reciever:</p></h3>
  
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="ReceiveId" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ReceiveId" HeaderText="ReceiveId" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ReceiveId" />
                <asp:BoundField DataField="ReceiveName" HeaderText="ReceiveName" 
                    SortExpression="ReceiveName" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
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
            DeleteCommand="DELETE FROM [ReceiverRegister] WHERE [ReceiveId] = @ReceiveId" 
            InsertCommand="INSERT INTO [ReceiverRegister] ([ReceiveName], [username], [address], [status]) VALUES (@ReceiveName, @username, @address, @status)" 
            SelectCommand="SELECT [ReceiveId], [ReceiveName], [username], [address], [status] FROM [ReceiverRegister] WHERE ([username] = @username)" 
            UpdateCommand="UPDATE [ReceiverRegister] SET [ReceiveName] = @ReceiveName, [username] = @username, [address] = @address, [status] = @status WHERE [ReceiveId] = @ReceiveId">
            <DeleteParameters>
                <asp:Parameter Name="ReceiveId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ReceiveName" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="Receiveuser" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ReceiveName" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="ReceiveId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
    </div>
</body>
</html>
