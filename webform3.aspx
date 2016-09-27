<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webform3.aspx.cs" Inherits="webform3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="webstyle.css" />
    <script src="https://code.jquery.com/jquery-1.7.1.min.js">
    </script>

<style type="text/css">
    #wrap
    {
        width:1300px;
    }
    .left
    {
        width: 800px;
       height: 832px;
       float: left;
    }
    .right{
        width: 460px;
        height: 302px;
        background-color:dodgerblue;
        float:right;
        margin-left: 40px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
       
          <asp:ValidationSummary ID="Validation3" runat="server" ShowMessageBox="True" ShowSummary="False" />

        <div style="background-color : yellow; margin-top:-2px;">
            <h1 style="height: 47px; margin-top: 7px"> Just  few  steps...</h1>
        </div>
         <div id ="wrap">
        <div  class="left" style=" margin-top: 0px; background-color:dodgerblue">
    <h1>
        &nbsp;
        Personal Information
    </h1>

            <p style="color:maroon; font-size:larger; margin-left: 5px;" >
                Tell us little about yourself. This information is <b> only </b> used so we can <b>pay</b> you, provide a <b>free shipping label</b>, and <b>communicate with you.</b></p>
            <p>
                &nbsp;
                <asp:Label class="control-label" ID="Label1" runat="server" Text="Your Name"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 35px" Width="287px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server"  ControlToValidate="TextBox1" Font-Bold="true" ForeColor="Red" ErrorMessage="Name is required" ValidationGroup="group1"></asp:RequiredFieldValidator>
            </p>
            <p>
                &nbsp;
                <asp:Label class="control-label" ID="Labeladdress1" runat="server" Text="Address Line 1"></asp:Label>&nbsp; <asp:TextBox ID="TextBoxaddress1" runat="server" style="margin-left: 14px" Width="484px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Address is required" Font-Bold="true" ForeColor="Red"  ControlToValidate ="TextBoxaddress1" ValidationGroup="group1" ></asp:RequiredFieldValidator>
            </p>
            <p>

                &nbsp;

                <asp:Label ID="Label3" runat="server" Text="Address Line 2"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" style="margin-left: 23px" Width="483px"></asp:TextBox>

            </p>

            <p>

                &nbsp;

                <asp:Label  class="control-label" ID="Label4" runat="server" Text="City"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBoxcity" runat="server" style="margin-left: 83px" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxcity" Font-Bold="true"  ForeColor="Red" ErrorMessage="City is required" ValidationGroup="group1"></asp:RequiredFieldValidator>
            </p>
            <p>
                &nbsp;
                <asp:Label class="control-label" ID="Label6" runat="server" Text="Zip"></asp:Label>&nbsp;
                 <asp:TextBox ID="TextBoxZip" runat="server" style="margin-left: 90px" Width="159px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxZip" ForeColor="Red" Font-Bold="true" ErrorMessage="Zip code is required" ValidationGroup="group1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxZip" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$
" ErrorMessage="Zip code entered is incorret" Font-Bold="true" ForeColor="Red" ValidationGroup="group1"></asp:RegularExpressionValidator>
                
                 </p>
            <p>

                &nbsp;

                <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 30px">
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

                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="DropDownList1" Font-Bold="true" ForeColor="Red" ValidationGroup="group1" ValidationExpression="^(A[LKSZRAEP]|C[AOT]|D[EC]|F[LM]|G[AU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])$" runat="server" ErrorMessage="State must be choosen"></asp:RegularExpressionValidator>

            </p>

            <p>____________________________________________________________________________________________________</p>

            <h1> &nbsp; Login Information</h1>
            <p>
                &nbsp;
                <asp:Label  class="control-label" ID="Label7" runat="server" Text="Email Address"></asp:Label>
                <asp:TextBox ID="TextBoxemail1" runat="server" style="margin-left: 61px" Width="374px"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" Font-Bold="true" ValidationGroup="group1" runat="server" ControlToValidate="TextBoxemail1" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBoxemail1" Font-Bold="true" ForeColor="Red" ValidationGroup="group1" runat="server" ErrorMessage="The email is incorrect" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>   
                  </p>
            <p>
                &nbsp;
                <asp:Label class="control-label" ID="Label8" runat="server" Text="Password"></asp:Label>&nbsp;  
                <asp:TextBox ID="TextBoxpassword" runat="server" style="margin-left: 87px" Width="374px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" Font-Bold="true" ValidationGroup="group1" ControlToValidate="TextBoxpassword" ErrorMessage="password is required"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Font-Bold="true" ForeColor="Red" ValidationGroup="group1" ControlToValidate="TextBoxpassword" runat="server" ErrorMessage="password entered is incorrect" ValidationExpression="^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^@#$%]).{8,10})$"></asp:RegularExpressionValidator>
                 </p>
            <p>
                &nbsp;
                <asp:Label ID="Label9" runat="server" Text="Confirm Password"></asp:Label>&nbsp;
                <asp:TextBox ID="TextBoxconfirmpass2" runat="server" style="margin-left: 38px" Width="374px" TextMode="Password"></asp:TextBox>         
                <asp:CompareValidator ID="CompareValidator1" ForeColor="Red" Font-Bold="true" ValidationGroup="group1" runat="server" ControlToValidate="TextBoxconfirmpass2" ControlToCompare="TextBoxpassword" Operator="Equal" Type="String" ErrorMessage="password do not match"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorpass2" ForeColor="Red" Font-Bold="true" ValidationGroup="group1" runat="server" ErrorMessage="Password must be entered" ControlToValidate="TextBoxconfirmpass2"  ValidationExpression="^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^@#$%]).{8,10})$"></asp:RegularExpressionValidator>
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
                <asp:Button ID="Button1" runat="server" Text="Goto Main Page" style="margin-left: 56px; margin-right: 100px" Width="275px" OnClick="Button1_Click" CausesValidation="False" />
                <asp:Button ID="Button2" runat="server" Text="Complete Registration" Width="273px" OnClick="Button2_Click" ValidationGroup="Group1"/>
            </p>
           
        </div>
            <div class="right">
                <h1>
                    &nbsp;
                    Already Have an Account?
                </h1>
                <h3>&nbsp; Login</h3>
                <p>
                    &nbsp;
                    <asp:Label class="control-label" ID="Label12" runat="server" Text="Email Address"></asp:Label>
                    <asp:TextBox ID="TextBoxemail2right" runat="server" style="margin-left: 14px" Width="315px"></asp:TextBox>
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" Font-Bold="true" ValidationGroup="group2" ControlToValidate="TextBoxemail2right"  runat="server" ErrorMessage="Enter email"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="Red" Font-Bold="true" ValidationGroup="group2" ControlToValidate="TextBoxemail2right" ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$" runat="server" ErrorMessage="email is incorrect">

                           </asp:RegularExpressionValidator>
                 </p>
                    <p>
                    &nbsp;
                    <asp:Label  class="control-label" ID="Label13" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="passwordtext2" runat="server" style="margin-left: 46px" Width="315px" TextMode="Password"></asp:TextBox>
                
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" Font-Bold="true" ValidationGroup="group2" ControlToValidate="passwordtext2" runat="server" ErrorMessage="Password must be entered"></asp:RequiredFieldValidator>
                
                </p>
                <p>
                    <asp:Button ID="Button3" runat="server" Text="Log In" style="margin-left: 21px" Width="190px" OnClientClick="return page1();" OnClick="Button3_Click" ValidationGroup="Group2" />
                    
                     
                <asp:Button ID="Button4" runat="server" Text="Forgot Password" OnClick="Button4_Click" style="margin-left: 18px" Width="207px" CausesValidation="False" />
                </p>

            </div>
            </div>
    </form>
</body>
</html>
