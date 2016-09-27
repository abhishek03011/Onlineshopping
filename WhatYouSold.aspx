<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WhatYouSold.aspx.cs" Inherits="WhatYouSold" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 298px;
        }
        .auto-style4 {
            margin-left: 82px;
        }
    </style>
     <script src="https://code.jquery.com/jquery-1.7.1.min.js">
    </script>
   <script>
     function game()
       {
           document.getElementById('reg').style.visibility =  "hidden";
       }
       </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;
            &nbsp;
        </div>
    <div style="height: 43px">

        <asp:Label ID="Label1" runat="server" Text="User Name :" BorderStyle="None" style="text-align: center" Width="135px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="" BorderStyle="None" style="margin-left: 16px" Width="310px"></asp:Label>

        <asp:Label ID="Label3" runat="server" BorderStyle="None" style="margin-left: 198px" Text="User Email Address :" Width="177px"></asp:Label>
        <asp:Label ID="Label4" runat="server" BorderStyle="None" style="margin-left: 0px" Width="388px"></asp:Label>

    </div>
        
        <div class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1333px" CssClass="auto-style1">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
        <div>
            <br />
            <br />
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Goto Main Page" CssClass="auto-style3" OnClick="Button1_Click" Width="304px" /> 
            <asp:Button ID="Button2" runat="server" Text="Sell Another Book" CssClass="auto-style4" OnClick="Button2_Click" Width="277px" />  
        </div>
        <div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
