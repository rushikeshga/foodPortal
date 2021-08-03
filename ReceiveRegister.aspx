<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReceiveRegister.aspx.cs" Inherits="ReceiveRegister" %>

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
    <div>
    <div style="max-width: 500px; background-color:blanchedalmond;margin:auto;box-shadow:0 8px 16px 0 #a6a6a6;border-radius:10px;margin-top:50px ">
    <h2>Receive Registration Page</h2>
    <table class="auto-style1">  
                <tr>  
                    <td>charity/NGO name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage=" *Enter your name" ControlToValidate="TextBox1" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                     </td>
                    <tr>  
                    <td>User name/Email:</td>  
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
                    <td>Password :</td>  
                     <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td> 
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                             ErrorMessage="*Enter Password" ForeColor="#CC0000" 
                             ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                     </td> 
                </tr>  
                 
                <tr>  
                    <td>Address :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="*Enter Address" ControlToValidate="TextBox4" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                <tr>  
                    <td>Contact Number :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  
                    </td>  
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="*Enter contact Number" ControlToValidate="TextBox5" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="*Add 10 digit contact Number" ControlToValidate="TextBox5" 
                            ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr> 
              
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Back" onclick="Button1_Click" />  
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
                    </td>  
                </tr>  
            </table> 
       </div>
    </div>
    </form>
    </div>
</body>
</html>
