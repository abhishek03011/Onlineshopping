<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webform4.aspx.cs" Inherits="webform4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div>
        <img src="pic/pic1.png" style="width: 100%; height: 147px;"/>
    </div>
        <div style="align-items:center; text-align: center;";>
            <h2 class="auto-style1"> Password Recovery</h2>
            <p style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="Email Address" style="text-align: left"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 25px" Width="311px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Recover Password" style="margin-left: 39px" Width="233px" OnClick="Button1_Click" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Font-Bold="true" ForeColor="Red" runat="server" ErrorMessage="email is required"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator21"  ControlToValidate="TextBox1" Font-Bold="true" ForeColor="Red" ValidationGroup="group1" runat="server" ErrorMessage="The email is incorrect" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator> 
                 </p>
           
            <p style="align-content:center"><a href="Default.aspx">Go Back To Main Page</a></p>
        </div>
    </form>
</body>
</html>
