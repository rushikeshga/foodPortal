<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonateFood.aspx.cs" Inherits="DonateFood" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
<div class="bg-image" 
     style="background-image: url('https://i.pinimg.com/originals/4b/93/28/4b93286dca71bbf97bc24ab523755366.jpg');
            height: 100vh">
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
    <form id="form1" runat="server">
    <div style="position:relative;">
    <div style="position:absolute;bottom:0px;right:0px;">
        <asp:Button ID="Button2" runat="server" Text="Logout" onclick="Button2_Click" CausesValidation="false" />
    </div>
</div>
    <div style="max-width: 400px; background-color:blanchedalmond;margin:auto;box-shadow:0 8px 16px 0 #a6a6a6;border-radius:10px;margin-top:50px ">
    <h2>Donate Food</h2>
        <table class="auto-style1">  
                <tr>  
                    <td>Food type :</td>  
                    <td>  
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataTextField="ans2"   
                    DataValueField="ans2">  
                    <asp:ListItem Value="Perishable">Perishable</asp:ListItem>  
                    <asp:ListItem Value="Non-Perishable">Non-Perishable</asp:ListItem>  
                </asp:RadioButtonList> 
                        
                    </td>
                   
                    <tr>  
                    <td>Food name/Description:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
                    </td>  
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="*Enter User name" ControlToValidate="TextBox2" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>   
  
               </tr>  
                <tr>  
                    <td>Food Quantity(In kg) :</td>  
                     <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td> 
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                             ErrorMessage="*Enter Password" ForeColor="#CC0000" 
                             ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                     </td> 
                </tr>  
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Donate Food" 
                            onclick="Button1_Click1" />
                    </td>
                </tr>
                <tr>
                <td>
                
                </td>
                </tr>
            </table> 
            
    </div>
   
    </form></div>
   
   
</body>
</html>
