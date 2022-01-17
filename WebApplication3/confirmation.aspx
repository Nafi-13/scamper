<%@ Page Title="Order Confirmation" Language="C#" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="WebApplication3.confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&family=Squada+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Francois+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bungee&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Caveat+Brush&display=swap" rel="stylesheet">
    <style type="text/css">
        #form1 {
            width: 100%;
            margin:none;
            padding:none;
        }

         .txtbox
        {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            padding:16px;
            font-family:bungee;
        }

        #button1 {
            background-color: white; 
            color: black; 
            border: 4px solid #008CBA;
            font-size:20px;
            padding: 16px 32px;
            transition-duration: 0.4s;
  cursor: pointer;
        }

            #button1:hover {
                background-color: #008CBA;
                color: white;
                border-radius:20px;

            }
    </style>
</head>
<body>

    <form id="form1" runat="server" style="margin:none;padding:none">
        <div style="height:auto;width:auto;background-color:teal;border:5px solid gold;border-radius:10px">
        <div style="text-align:center;padding:10px">
            <asp:Label ID="Label1" runat="server" Text="Hello " Font-Size="30px" ForeColor="Wheat" Font-Names="spartan"></asp:Label>
&nbsp;<asp:Label ID="name" runat="server" Font-Bold="True" Font-Size="35px" ForeColor="Gold" Font-Names="squada one"></asp:Label>

&nbsp;, 
            <br />
            <br />

            <asp:Label ID="Label7" runat="server" Text="Thank you for ordering at" Font-Names="spartan" Font-Size="30px" ForeColor="Wheat" Font-Italic="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="bungee" Font-Size="35px" Text="SCAMPER" ForeColor="Gold"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Your Ordered Product Codes are - " Font-Size="30px" ForeColor="Wheat" Font-Names="spartan"></asp:Label>
            <asp:Label ID="prodcode" runat="server" Font-Bold="True" Font-Size="35px" ForeColor="Gold" Font-Names="bungee"></asp:Label>
            <br />
            <br />
        </div>
        <div style="text-align:center">
            
            <asp:Label ID="Label2" runat="server" Text="We will Call you at this Number - " Font-Size="30px" ForeColor="Wheat" Font-Names="spartan"></asp:Label>
            <asp:Label ID="mobilenumber" runat="server" Font-Bold="True" Font-Size="35px" ForeColor="Gold" Font-Names="squada one"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Shortly for Re-Confirmation" Font-Size="30px" ForeColor="Wheat" Font-Names="spartan"></asp:Label>
            
            <br />
            
            <br />
            
        </div>
            <div style="text-align:center">
                <asp:Label ID="Label5" runat="server" Text="After Receiving the Call. Press this button -" Font-Bold="True" Font-Size="35px" ForeColor="Wheat" Font-Names="bungee"></asp:Label>
                 &nbsp;&nbsp;
                <br />
                <br />
                 <button id="button1"onclick="deleteItems()" style="font-family:bungee">Order Picked</button>
            &nbsp;<br />
                <br />
            </div>

            <div style="text-align:center">
                <asp:Label ID="Label6" runat="server" Text="Want To Shop More ? " Font-Bold="True" Font-Size="30px" ForeColor="Gold" Font-Names="bungee"></asp:Label>
            &nbsp;&nbsp;<asp:Button ID="viewmore" runat="server" Text="View More" BorderColor="#4CAF50" CssClass="txtbox" BorderStyle="Solid" BorderWidth="4px" Font-Bold="True" Font-Size="20px" ForeColor="#4CAF50" OnClick="viewmore_Click" />
                <br />
                <br />
            </div>
            </div>
    </form>

    <script>
        function deleteItems() {
            localStorage.clear();
        }
    </script>
</body>
</html>
