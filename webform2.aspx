<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webform2.aspx.cs" Inherits="webform2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-1.7.1.min.js">
    </script>
</head>
<body style="height: 200px; width: 1175px;">
    <form id="form1" runat="server">
    <div style="align-content:center;">
        <img src="pic/pic1.png" style="width:75%; align-content:center; margin-left: 212px;"/>
    </div>
        <div style="height: 61px; width: 880px; margin-left: 213px; background-color: #33CCFF">
            <asp:Label ID="Labelweb1" runat="server" style="margin-left: 39px; margin-top: 15px"  Text="ISBN Number:" Width="132px"></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" Width="264px" style="margin-left: 11px" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" style="margin-left: 64px" Text="Check Another ISBN" Width="296px" OnClick="Button1_Click" />
        </div>
        <div >
            <asp:Image ID="Image1" runat="server" Height="470px" style="margin-left: 369px; margin-top: 17px" Width="508px" />
        </div>
        <div style="height: 268px; margin-left: 213px; background-color: #33CCFF; width: 880px; margin-right: 64px; margin-top: 0px;">
            <br />
          <p style="margin-top:10px">  <asp:Label ID="Labelweb2" runat="server" Text="Title" Width="127px" style="margin-left: 45px"></asp:Label> <asp:Label ID="Labelweb3" runat="server" BorderStyle="Groove" Height="40px" Width="490px"></asp:Label> </p>
          <p>
              <asp:Label ID="Labelweb41" runat="server" Text="Author" Width="127px" style="margin-left: 45px"></asp:Label> <asp:Label ID="Labelweb4" runat="server" BorderStyle="Groove" Height="40px" Width="490px"></asp:Label> </p> 
            <p>
                <asp:Label ID="Labelweb6" runat="server" Text="Buy Price" Width="127px" style="margin-left: 45px"></asp:Label><asp:Label ID="Labelweb7" runat="server" BorderStyle="Groove" Height="40px" style="margin-left: 2px" Width="489px"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button2" runat="server" Text="Sell This Book" OnClick="Button2_Click" style="margin-left: 144px" Width="300px" /><asp:Button ID="Button3" runat="server" Text="No Thanks" OnClick="Button3_Click" style="margin-left: 48px" Width="304px" />
            </p>
        </div>
    </form>
</body>
</html>
