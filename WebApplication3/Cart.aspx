<%@ Page Title="Cart Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication3.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    
    <style type="text/css">

        .nav-links li {
            font-family:francois one;
        }

        .product-header,
        .itemheading,
        .pcodecart {
            font-family:bungee;
        }

        .product,
        .products .basketTotalContainer,
        .ppstring
        {
            font-family:squada one;
        }
            .products .price,
            .products .quantity,
            .products .total {
                font-family:squada one;
            }

             .txtbox
        {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            
        }
        
    </style>

    <div class="cart_bg"> 
   <header>
        <nav id="prod_bar" class="bar" data-aos="fade-down">
            <div class="logo">
                <h3 style="font-family:Squada One">SCAMPER</h3>
            </div>
            <ul class="nav-links">
                <li> <a id="A1" runat="server" href="~/Default.aspx"><i class="fas fa-home"></i> Home  </a> </li>
                <li> <a id="A2" runat="server" href="~/Products.aspx"><i class="fas fa-archive"></i> Products  </a> </li>
                <li class="cart"> 
                    <a id="A3" runat="server" href="~/Cart.aspx"><i class="fas fa-shopping-cart"></i> Cart  (<span>0</span>) </a>
                </li>
                <li> <a id="A4" runat="server" href="~/admin.aspx"><i class="fas fa-users-cog"> Admin </i></a> </li>
            </ul>
        </nav>
    </header>

    <div class="products-container">
        <div class="product-header">
            <h3 class="product-title">PRODUCT</h3>
            <h3 class="price">PRICE</h3>
            <h3 class="quantity">QUANTITY</h3>
            <h3 class="total">TOTAL</h3>
        </div>
        <div class="products">

        </div>
        
    </div>
        <div class="itemheading">The Items You have Chosen are - </div>
        <div class="pstring" runat="server">
            
        </div>




        <script src="/Scripts/final.js"></script>
        
        <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>


    
   

    

    
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="40px" ForeColor="Wheat" CssClass="product-header" Text="Fill-Up the Following Infos to Confirm Your Order -"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="Wheat" Text="First Name: " Font-Names="Arial Black"></asp:Label>
&nbsp;<asp:TextBox ID="fname" runat="server" CssClass="txtbox" Height="30px" Width="15%" Font-Bold="True" Font-Size="25px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorfname" runat="server" ErrorMessage="First-Name Required!" ForeColor="#FF3300" ControlToValidate="fname" Font-Bold="True" Font-Size="18px"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="Wheat" Text="Last Name: " Font-Names="Arial Black"></asp:Label>
        &nbsp;
    <asp:TextBox ID="sname" runat="server" CssClass="txtbox" Height="30px" Width="15%" Font-Bold="True" Font-Size="25px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorlname" runat="server" ErrorMessage="Last-Name Required!" ForeColor="#FF3300" ControlToValidate="sname" Font-Bold="True" Font-Size="18px"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="Wheat" Text="Mobile No. " Font-Names="Arial Black"></asp:Label>
        
&nbsp;
    <asp:TextBox ID="mnum" runat="server" CssClass="txtbox" Height="30px" Width="15%" Font-Bold="True" Font-Size="25px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatormnum" runat="server" ErrorMessage="Mobile-Number Required!" ForeColor="#FF3300" ControlToValidate="mnum" Font-Bold="True" Font-Size="18px"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="Wheat" Text="Product-Code(s): " Font-Names="Arial Black"></asp:Label>
        &nbsp;&nbsp;
    <asp:TextBox ID="pcode" runat="server" CssClass="txtbox" Width="254px" Height="30px" Font-Bold="True" Font-Size="25px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorpcode" runat="server" ErrorMessage="Product-Codes Required!" ForeColor="#FF3300" ControlToValidate="pcode" Font-Bold="True" Font-Size="18px"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="Wheat" Text="Shipping Address :" Font-Names="Arial Black"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="addr" runat="server" Height="73px" CssClass="txtbox" TextMode="MultiLine" Width="474px" Font-Bold="True" Font-Names="Arial Black" Font-Size="25px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatoraddr" runat="server" ErrorMessage="Address Required!" ForeColor="#FF3300" ControlToValidate="addr" Font-Bold="True" Font-Size="18px"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Confirm " CssClass="txtbox" BackColor="Transparent" BorderColor="#17AF63" BorderRadius="5px" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="25px" ForeColor="#17AF63" Height="60px" Width="20%" />


        </div>

    

    
     
</asp:Content>