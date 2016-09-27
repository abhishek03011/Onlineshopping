<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YourAccountPage.aspx.cs" Inherits="YourAccountPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="webstyle.css" />
    <script src="https://code.jquery.com/jquery-1.7.1.min.js">
    </script>

    <style type="text/css">
        .auto-style1 {
            margin-left: 84px;
        }
    </style>

</head>
<body>
    <form id="form11" runat="server">
    <div style="background-color:crimson">
    <h2>Your Account information</h2>
    </div>
        <div>
            <h3>If you wish you can update your account information and then click 'update' or 'Update and Goto Main Page' button below</h3>
        </div>
<div>
     <asp:ValidationSummary ID="Validation3" runat="server" ShowMessageBox="True" ShowSummary="False" />

    <asp:Label runat="server" Text="Your Name"></asp:Label>
<asp:Label ID="namelabel" runat="server" BorderStyle="Groove" Height="40px" Width="490px" style="margin-left: 85px"></asp:Label>
<p>
 &nbsp;
 <asp:Label class="control-label" ID="Labeladdress111" runat="server" Text="Address Line 1"></asp:Label>&nbsp;
 <asp:TextBox ID="TextBoxaddress111" runat="server" style="margin-left: 41px" Width="489px"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator111" runat="server" ErrorMessage="Address is required" Font-Bold="true" ForeColor="Red"  ControlToValidate ="TextBoxaddress111" ValidationGroup="group111" ></asp:RequiredFieldValidator>
 </p>

<p>
&nbsp;
<asp:Label ID="Labeladdress2111" runat="server" Text="Address Line 2"></asp:Label>&nbsp;
<asp:TextBox ID="Textaddresslabel111" runat="server" style="margin-left: 49px" Width="489px"></asp:TextBox>
</p>

<p>
&nbsp;
<asp:Label  class="control-label" ID="Labelcity" runat="server" Text="City"></asp:Label>&nbsp;
<asp:TextBox ID="TextBoxcity111" runat="server" style="margin-left: 109px" Width="202px"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2111" runat="server" ControlToValidate="TextBoxcity111" Font-Bold="true"  ForeColor="Red" ErrorMessage="City is required" ></asp:RequiredFieldValidator>
</p>

<p>
&nbsp;
<asp:Label class="control-label" ID="Ziplabel111" runat="server" Text="Zip"></asp:Label>&nbsp;
<asp:TextBox ID="TextBoxZip111" runat="server" style="margin-left: 115px" Width="159px" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3111" runat="server" ControlToValidate="TextBoxZip111" ForeColor="Red" Font-Bold="true" ErrorMessage="Zip code is required" ></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator111" runat="server" ControlToValidate="TextBoxZip111" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$
" ErrorMessage="Zip code entered is incorret" Font-Bold="true" ForeColor="Red" ></asp:RegularExpressionValidator>
</p>

<p>
&nbsp;
<asp:Label ID="statelabel111" runat="server" Text="State"></asp:Label>
<asp:DropDownList ID="DropDownList111" runat="server" style="margin-left: 115px" Height="16px" Width="93px">
                    <asp:ListItem Value="-1">Choose</asp:ListItem>
                    <asp:ListItem Value ="AL">AL</asp:ListItem>
                    <asp:ListItem Value ="AK">AK</asp:ListItem>
                    <asp:ListItem Value ="AZ">AZ</asp:ListItem>
                    <asp:ListItem Value ="AR">AR</asp:ListItem>
                    <asp:ListItem Value ="CA">CA</asp:ListItem>
                    <asp:ListItem Value ="CO">CO</asp:ListItem>
                    <asp:ListItem Value ="CT">CT</asp:ListItem>
                    <asp:ListItem Value ="DE">DE</asp:ListItem>
                    <asp:ListItem Value ="FL">FL</asp:ListItem>
                    <asp:ListItem Value ="GA">GA</asp:ListItem>
                    <asp:ListItem Value ="HI">HI</asp:ListItem>
                    <asp:ListItem Value ="ID">ID</asp:ListItem>
                    <asp:ListItem Value ="IL">IL</asp:ListItem>
                    <asp:ListItem Value ="IN">IN</asp:ListItem>
                    <asp:ListItem Value ="IA">IA</asp:ListItem>
                    <asp:ListItem Value ="KS">KS</asp:ListItem>
                    <asp:ListItem Value ="KY">KY</asp:ListItem>
                    <asp:ListItem Value ="LA">LA</asp:ListItem>
                    <asp:ListItem Value ="ME">ME</asp:ListItem>
                    <asp:ListItem Value ="MD">MD</asp:ListItem>
                    <asp:ListItem Value ="MA">MA</asp:ListItem>
                    <asp:ListItem Value ="MI">MI</asp:ListItem>
                    <asp:ListItem Value ="MN">MN</asp:ListItem>
                    <asp:ListItem Value ="MS">MS</asp:ListItem>
                    <asp:ListItem Value ="MO">MO</asp:ListItem>
                    <asp:ListItem Value ="MT">MT</asp:ListItem>
                    <asp:ListItem Value ="NE">NE</asp:ListItem>
                    <asp:ListItem Value ="NV">NV</asp:ListItem>
                    <asp:ListItem Value ="NH">NH</asp:ListItem>
                    <asp:ListItem Value ="NJ">NJ</asp:ListItem>
                    <asp:ListItem Value ="NM">NM</asp:ListItem>
                    <asp:ListItem Value ="NY">NY</asp:ListItem>
                    <asp:ListItem Value ="NC">NC</asp:ListItem>
                    <asp:ListItem Value ="ND">ND</asp:ListItem>
                    <asp:ListItem Value ="OH">OH</asp:ListItem>
                    <asp:ListItem Value ="OK">OK</asp:ListItem>
                    <asp:ListItem Value ="OR">OR</asp:ListItem>
                    <asp:ListItem Value ="PA">PA</asp:ListItem>
                    <asp:ListItem Value ="RI">RI</asp:ListItem>
                    <asp:ListItem Value ="SC">SC</asp:ListItem>
                    <asp:ListItem Value ="SD">SD</asp:ListItem>
                    <asp:ListItem Value ="TN">TN</asp:ListItem>
                    <asp:ListItem Value ="TX">TX</asp:ListItem>
                    <asp:ListItem Value ="UT">UT</asp:ListItem>
                    <asp:ListItem Value ="VT">VT</asp:ListItem>
                    <asp:ListItem Value ="VA">VA</asp:ListItem>
                    <asp:ListItem Value ="WA">WA</asp:ListItem>
                    <asp:ListItem Value ="WV">WV</asp:ListItem>
                    <asp:ListItem Value ="WI">WI</asp:ListItem>
                    <asp:ListItem Value ="WY">WY</asp:ListItem>
                </asp:DropDownList>
<asp:RegularExpressionValidator ID="RegularExpressionValidator6111" ControlToValidate="DropDownList111" Font-Bold="true" ForeColor="Red"  ValidationExpression="^(A[LKSZRAEP]|C[AOT]|D[EC]|F[LM]|G[AU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])$" runat="server" ErrorMessage="State must be choosen"></asp:RegularExpressionValidator>
</p>
 <p>____________________________________________________________________________________________________</p>

 <h1> &nbsp; Login Information</h1>
 
 <p>
 &nbsp;
 <asp:Label  class="control-label" ID="emailLabel111" runat="server" Text="Email Address"></asp:Label>
 <asp:Label ID="TextBoxemail111" runat="server" Text="" BorderStyle="None" CssClass="auto-style1" Width="397px"></asp:Label>
 </p>
   
           
 <p>
 &nbsp;
 <asp:Label class="control-label" ID="Label8111" runat="server" Text="Password"></asp:Label>&nbsp;  
 <asp:TextBox ID="TextBoxpassword111" runat="server" style="margin-left: 101px" Width="374px" TextMode="Password"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator5111" runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBoxpassword111" ErrorMessage="password is required"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator3111" Font-Bold="true" ForeColor="Red"  ControlToValidate="TextBoxpassword111" runat="server" ErrorMessage="password entered is incorrect" ValidationExpression="^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^@#$%]).{8,10})$"></asp:RegularExpressionValidator>
 </p>
 
 <p>
 &nbsp;
 <asp:Label ID="Label9111" runat="server" Text="Confirm Password"></asp:Label>&nbsp;
 <asp:TextBox ID="TextBoxconfirmpass2111" runat="server" style="margin-left: 49px" Width="374px" TextMode="Password"></asp:TextBox>         
 <asp:CompareValidator ID="CompareValidator111" ForeColor="Red" Font-Bold="true"  runat="server" ControlToValidate="TextBoxconfirmpass2111" ControlToCompare="TextBoxpassword111" Operator="Equal" Type="String" ErrorMessage="password do not match"></asp:CompareValidator>
 <asp:RegularExpressionValidator ID="RegularExpressionValidatorpass2111" ForeColor="Red" Font-Bold="true"  runat="server" ErrorMessage="Password must be entered" ControlToValidate="TextBoxconfirmpass2111"  ValidationExpression="^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^@#$%]).{8,10})$"></asp:RegularExpressionValidator>
 </p>

            <p>____________________________________________________________________________________________________</p>

            <h1>
                &nbsp;
                Pay Me By
            </h1>
            <p>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Check" GroupName="checkradio" /> 
              
                <asp:RadioButton ID="RadioButton2" Text="Paypal" runat="server" GroupName="checkradio" />

                
            </p>

 <p>
<asp:Button ID="Button111" runat="server" Text="Goto Main Page" style="margin-left: 8px; margin-right: 100px" Width="253px" CausesValidation="False" OnClick="Button111_Click" />
<asp:Button ID="Button2111" runat="server" Text="Update" Width="284px"  style="margin-left: 0px" OnClick="Button2111_Click"/>
<asp:Button ID="Button3111" runat="server" Text="Update and Goto Main Page"  style="margin-left: 101px" Width="271px" OnClick="Button3111_Click" />
</p>

</div>
</form>
</body>
</html>
