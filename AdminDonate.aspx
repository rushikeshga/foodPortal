<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDonate.aspx.cs" Inherits="AdminDonate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
</head>
<body>
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
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
  </div>
</nav>
<div style="position:relative;">
    <div style="position:absolute;bottom:0px;right:0px;">
        <asp:Button ID="Button2" runat="server" Text="Logout" onclick="Button2_Click" CausesValidation="false" />
    </div>
</div>
    <div style="max-width: 300px; background-color:blanchedalmond;margin:auto;box-shadow:0 8px 16px 0 #a6a6a6;border-radius:10px;margin-top:50px ">
    <h2>Admin Donate Panel</h2>
    <table>
        
       <tr>    
           <td>Food Id:</td>    
           <td>    
               <asp:TextBox ID="FoodId" runat="server" ReadOnly="true" Enabled="False" />    
           </td>    
       </tr>    
       <tr>    
           <td>FoodName:</td>    
           <td>    
               <asp:TextBox ID="FoodName" runat="server" Enabled="False" />    
           </td>    
       </tr>    
       <tr>    
           <td>Username:</td>    
           <td>    
               <asp:TextBox ID="username" runat="server" Enabled="False" />    
           </td>    
       </tr>    
       <tr>    
           <td>Food Type:</td>    
           <td>    
               <asp:TextBox ID="FoodType" runat="server" Enabled="False" />    
           </td>    
       </tr>    
       <tr>    
           <td>Quantity:</td>    
           <td>    
               <asp:TextBox ID="quantity" runat="server" Enabled="False" />    
           </td>    
       </tr>    
        <tr>    
           <td>Date:</td>    
           <td>    
               <asp:TextBox ID="date" runat="server" Enabled="False" />    
           </td>    
       </tr>
        <tr>    
           <td>Donate To:</td>    
           <td>    
                 
               <asp:DropDownList ID="DropDownList1" runat="server" 
                   DataSourceID="SqlDataSource1" DataTextField="ReceiveName" 
                   DataValueField="ReceiveName">
               </asp:DropDownList>
                 
           </td>    
       </tr>
           <tr>
           <td align="center">    
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />    
           </td>    
           <td align="center">    
               <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />    
           </td>    
       </tr>    
   </table> 
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FoodPortalConnectionString %>" 
        SelectCommand="SELECT [ReceiveName] FROM [ReceiverRegister]">
    </asp:SqlDataSource>
    </form>
    </div>
</body>
</html>
