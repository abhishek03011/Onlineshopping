<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ISBNpage.aspx.cs" Inherits="ISBNpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    h1.as1 {
        text-align:center;
    }
    p.as2{
        text-align:center
    }
</style>
    
</head>
<body>
    <form id="form1" runat="server">
    <h1 class="as1" style="color:red">How do I find my book's ISBN?</h1>
    <p class="as2">Your books ISBN can usually be found on the back of the book above the barcode</p>
   <p class="as2"> <img src="pic/isbn.png" style="margin-left: 0px; margin-top: 0px; margin-bottom: 0px; width:20% "  /></p>
<p class="as2">An ISBN can be 10-13 digit number and easyas123 pricing tool accepts both.<br /> 
    If your book doesnot have a barcode or a sticker is covering the barcode you can easily<br /> find the ISBN inside of the 
    front title page you will find publisher information. Books published <br />before 1970 doesnot have an ISBN
    number and we cannot buy it.<br /><br /> 
    <asp:Button ID="Button1" runat="server"  Text="Back to main page" OnClick="Button1_Click" /></p>
    </form>
</body>
</html>
