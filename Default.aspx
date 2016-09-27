<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Abhishek's website</title>
    <link rel="stylesheet" type="text/css" href="webstyle.css" />
    
      <script src="https://code.jquery.com/jquery-1.7.1.min.js">
    </script>
  
  <script>
       function game()
       {
           document.getElementById('reg').style.visibility =  "hidden";
           document.getElementById('log').style.visibility = "hidden";
       }
   </script>
   
     <script>
       function game1()
       {             
           document.getElementById('show1').style.visibility = "hidden";
           document.getElementById('show2').style.visibility = "hidden";
       }
   </script>

    <script>
       
       $(document).ready(function () {
           $('table#Table11 #hide a').click(function ()
           {
               var page = $(this).attr('href');
               $('#ac1').load( page );
               return false;
           });
       });

   </script>
    
    <script>
       
       $(document).ready(function () {
           $('table#Table1 #row1 a').click(function () {
               var page = $(this).attr('href');
               $('#ab').load( page +'.aspx');
               return false;
           });
       });

   </script>
  
    <script>

       $(document).ready(function () {
           $('h3#isbn1').click(function () {
               var page1 = $(this).attr('href');
               $('#ab2').load( 'ISBNpage.aspx');
               return false;
           });
       });

    </script>

</head>

<body>
    <form id="form1" runat="server">
        <div id="ac1">
    <div class="div1">
        <img alt="pic" src="pic/pic1.png" style="width:100%; height:200px;"/>
    </div>
        <div id="aim" style="text-align:center">
        <div class="div2">
            <asp:Table ID="Table1" runat="server" Width="100%">
                <asp:TableRow ID="row1">
                    <asp:TableCell BackColor="orange" BorderStyle="Solid">
                        <a  href="FAQPage"> FAQ</a>
                    </asp:TableCell>
                    <asp:TableCell BackColor="orange" BorderStyle="Solid">
                        <a href="Contact"> Contact Us</a> 
                    </asp:TableCell >
                    <asp:TableCell  id="yourhide" BackColor="orange"  BorderStyle="Solid">
                      <a href ="YourAccountPage">Your Account</a>
                    </asp:TableCell>
                    <asp:TableCell  id="yourhide1" BackColor="orange" BorderStyle="Solid">
                       <a href="WhatYouSold"> What You sold</a> 
                    </asp:TableCell>
                    <asp:TableCell BackColor="#FF3300" BorderStyle="Solid">
                  <asp:Table ID="Table11" Width="100%" Height="40px" runat="server">
                  <asp:TableRow ID="hide">   
                      <asp:TableCell ID ="reg">
                         <a href="webform3">Register </a>
                      </asp:TableCell>   
                      <asp:TableCell ID ="log" >
                      <a href="webform3">Login</a>    
                    </asp:TableCell>  
                       <asp:TableCell  ID ="show1">
                           <asp:Label ID="Labelshow" runat="server" Font-Bold="true" ForeColor="DarkBlue" Text=""></asp:Label>
                            <asp:Label ID="Labelshow1" runat="server" Font-Bold="true" ForeColor="Green" Text="  Logged in !!"></asp:Label>
                      </asp:TableCell>
                      <asp:TableCell ID="show2" >
                          <a href="logout.aspx"> Logout!!  </a>
                      </asp:TableCell>
                      </asp:TableRow> 
                  </asp:Table>
                        </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
            </div>
        <div id="ab">
            <div id ="ab2">
        <div class="div2">
            <h1> Want to do a quick check how much $$$$$ you could get ?</h1>
            <div  class="form-group required">
                <asp:Label class="control-label" ID="Label1" runat="server" Font-Size="Larger" Font-Bold="true" ForeColor="green"  Text="Enter ISBN Number:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 17px" >
                </asp:TextBox><asp:Button ID="Button1" runat="server" Width="200px" Text="Get Quote" OnClick="Button1_Click" style="margin-left: 45px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorisbn" runat="server" 
                    ErrorMessage="The ISBN number is a required feild" ControlToValidate="TextBox1" Display="None">

                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorisbn" runat="server" ErrorMessage="The isbn number must be in 999-9999999999"
                      ControlToValidate="TextBox1" Display="None"
                     ValidationExpression="^978[-][0-9]{10}$"></asp:RegularExpressionValidator>
                  </div>
            <asp:ValidationSummary ID="Validation1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            <div style=" text-align: left;">
            <h3 id="isbn1">What is ISBN number ? <a href="ISBNpage">Click Here</a></h3>
                </div>
        </div>
        <div>
            <img src="pic/BAN.png" style="width:100%; height:200px"  />
        </div>
        <div>
            <img src="pic/banner-paypal.jpg" style="width:100%;height:200px" />
       
        </div>
                 <div>
            <asp:Table runat="server" Width="100%">
                <asp:TableRow>  
                    <asp:TableCell>         
                
           <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:Timer ID="Timer1" Interval="3000" runat="server" />
            <asp:UpdatePanel ID="up1" runat="server">
                <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
                 <ContentTemplate>
            <asp:AdRotator id="AdRotator1" AdvertisementFile="advertise.xml" KeywordFilter="Asp.Net" Runat="server" />
                      </ContentTemplate>
                 </asp:UpdatePanel>
                        </asp:TableCell>
                    
                    <asp:TableCell>
                         <asp:Timer ID="Timer2" Interval="3000" runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
        </Triggers>
                 <ContentTemplate>
            
            <asp:AdRotator id="AdRotator2" AdvertisementFile="advertise2.xml" KeywordFilter="Asp.Net" Runat="server" />
                      </ContentTemplate>
                 </asp:UpdatePanel>
                    </asp:TableCell> 
                 
                       <asp:TableCell>
                  <asp:Timer ID="Timer3" Interval="3000" runat="server" />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer3" EventName="Tick" />
        </Triggers>
                 <ContentTemplate>
            
            <asp:AdRotator id="AdRotator3" AdvertisementFile="advertise3.xml" KeywordFilter="Asp.Net" Runat="server" />
                       </ContentTemplate>
                 </asp:UpdatePanel>
                    </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
   
        </div>    
            </div>
        
        </div>
    </div>
        <div>
            
        </div>
    </form>
   
</body>
</html>
