<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-1.7.1.min.js">
    </script>
    <style>
    h1.as1 {
    text-align:center;
    }
    p.as2{
    text-align:center;
    }
    div.as2{
         text-align:center;
    }
    </style>
    <script>
        var xmlDoc;
        var xmlhttp;
        function loadXMLDoc()
        {
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readData;
            xmlhttp.open("GET","contactUs.xml", true);
            xmlhttp.send();
        }

        function readData()
        {
            if(xmlhttp.readyState == 4 )
            {
                xmlDoc = xmlhttp.responseXML;
                var items = xmlDoc.getElementsByTagName("info");
                var nextValue1 = items[0].getAttribute("contact-phone");
                var nextValue2 = items[0].getAttribute("address-street");
                var nextValue3 = items[0].getAttribute("address-city");
                var nextValue4 = items[0].getAttribute("address-state");
                var nextValue5 = items[0].getAttribute("address-zip");
//                alert( "Contact-Phone :" + nextValue1 + "\n"+"address-street :" + nextValue2 + "\n"+"address-street :" + nextValue3 +"\n"+"address-state :" +nextValue4 + "\n"+" address-zip :" + nextValue5);
                var val = "Contact-Phone :          " + nextValue1 + "<br/>" + "address-street :          " + nextValue2 + "<br/>" + "address-street :            " + nextValue3 + "<br/>" + "address-state :          " + nextValue4 + "<br/>" + " address-zip :         " + nextValue5;
                document.getElementById("aim").innerHTML = val;
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
     <script>
        loadXMLDoc();
    </script>
  <div id="aim"></div>
      <div class="as2">
          <asp:Button ID="Button1" runat="server" Text="Back to main page"  OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
