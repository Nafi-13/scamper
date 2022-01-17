<%@ Page Title="Admin" Language="C#"  AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication3.admin" %>

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
</head>
<body>
       <style type="text/css">
        .txtbox
        {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }
    </style>
    <form id="form1" runat="server" style="margin:none;padding:none">
     
        
        <div style="height: 750px; width: 100%;background-color:black">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="color:black;text-align:center;background-color:wheat;width:50%;margin:auto">
                <h2 style="padding:10px;font-family:bungee;font-size:30px">ADMIN LOGIN</h2>
                <hr style="color:black;height:10px;background-color:gray" />
                <h3 style="text-align:left;padding:10px;font-family:squada one;font-size:25px">Enter Username :
                    <asp:TextBox ID="adminuser" runat="server" CssClass="txtbox" Height="30px" Width="40%" Font-Size="25px" Font-Bold="False" Font-Names="Arial Black" ForeColor="Black"></asp:TextBox>
                </h3>
                <h3 style="text-align:left;padding:10px;font-family:squada one;font-size:25px">Enter Password :
                    <asp:TextBox ID="adminpass" runat="server" CssClass="txtbox" Height="30px" Width="40%" Font-Size="25px" TextMode="Password" ForeColor="Black"></asp:TextBox>
                </h3>

            </div>
            <div style="margin-left:600px;margin-top:10px">
            <asp:Button ID="adminloginbtn" runat="server" Text="LOGIN" CssClass="txtbox" BackColor="Transparent" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="25px" ForeColor="Yellow" Height="60px" Width="20%" OnClick="adminloginbtn_Click"/>
                <br />
                <br />
                <asp:Button ID="homepagebtn" runat="server" Text="Home Page" CssClass="txtbox" BackColor="Transparent" BorderColor="#0066CC" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="25px" ForeColor="#0066CC" Height="60px" Width="20%" OnClick="homepagebtn_Click" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="testlabel" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Size="25px" Font-Names="Arial Black"></asp:Label>
                </div>
        </div>
        
    </form>
</body>
</html>
