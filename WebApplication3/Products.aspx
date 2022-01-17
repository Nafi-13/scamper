<%@ Page Title="Products Page" Language="C#"
     MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <style type="text/css">
        .pimage h1 {
            font-family:Squada One;
        }

        .pimage h2 {
            font-family:caveat brush;
        }

        .pimage h3 {
            font-family:francois one;
        }

        .pimage a {
            font-family:fredoka one;
        }
    </style>
    <header>
        <nav id="prod_bar" class="bar" data-aos="fade-down">
            <div class="logo">
                <h3 style="font-family:Squada one">SCAMPER</h3>
            </div>
            <ul class="nav-links">
                <li style="font-family:francois one"> <a id="A1" runat="server" href="~/Default.aspx"><i class="fas fa-home"></i> Home  </a> </li>
                <li style="font-family:francois one" > <a id="A2" runat="server" href="~/Products.aspx"><i class="fas fa-archive"></i> Products  </a> </li>
                <li style="font-family:francois one" class="cart"> 
                    <a id="A3" runat="server" href="~/Cart.aspx"><i class="fas fa-shopping-cart"></i> Cart  (<span>0</span>) </a>
                </li>
                <li style="font-family:francois one"> <a id="A4" runat="server" href="~/admin.aspx"><i class="fas fa-users-cog"></i> Admin </a>  </li>
            </ul>
        </nav>
    </header>

    <div class="pcontainer">
        <div class="pimage">
            <img src="/Images/greytshirts.jpg" alt="">
            <h1>Grey <span class="hlt">Tshirt</span></h1>
            <h2>300 Taka</h2>
            <h3>Product Code : 101</h3>
            <a class="add-cart cart1" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/greyhoddie.jpg" alt="">
            <h1>Grey <span class="hlt">Hoodie</span></h1>
            <h2>550 Taka</h2>
            <h3>Product Code : 102</h3>
            <a class="add-cart cart2" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/blacktshirts.jpg" alt="">
            <h1>Black <span class="hlt">Tshirt</span></h1>
            <h2>300 Taka</h2>
            <h3>Product Code : 103</h3>
            <a class="add-cart cart3" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/blackhoddie.jpg" alt="">
            <h1>Black <span class="hlt">Hoodie</span></h1>
            <h2>550 Taka</h2>
            <h3>Product Code : 104</h3>
            <a class="add-cart cart4" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/travelhat.jpg" alt="">
            <h1><span class="hlt">Travel</span> Hat</h1>
            <h2>200 Taka</h2>
            <h3>Product Code : 201</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/portablebin.jpg" alt="">
            <h1><span class="hlt">Portable</span> Bin</h1>
            <h2>250 Taka</h2>
            <h3>Product Code : 202</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        
        <div class="pimage">
            <img src="/Images/5layerbag.jpg" alt="">
            <h1>5 <span class="hlt">Layer</span> Bag</h1>
            <h2>680 Taka</h2>
            <h3>Product Code : 203</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/portablebed.jpg" alt="">
            <h1><span class="hlt">Portable</span> Bed</h1>
            <h2>1500 Taka</h2>
            <h3>Product Code : 204</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/neckrest.jpg" alt="">
            <h1><span class="hlt">Neck</span> Rest</h1>
            <h2>150 Taka</h2>
            <h3>Product Code : 301</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        
        <div class="pimage">
            <img src="/Images/eyecap.jpg" alt="">
            <h1>Eye <span class="hlt">cap</span></h1>
            <h2>200 Taka</h2>
            <h3>Product Code : 302</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/3pocketpouch.jpg" alt="">
            <h1>3 <span class="hlt">Pocket</span> Pouch</h1>
            <h2>350 Taka</h2>
            <h3>Product Code : 303</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        
        <div class="pimage">
            <img src="/Images/knife.jpg" alt="">
            <h1>Knife</h1>
            <h2>700 Taka</h2>
            <h3>Product Code : 304</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/sunhat.jpg" alt="">
            <h1><span class="hlt">Sun</span> Hat</h1>
            <h2>200 Taka</h2>
            <h3>Product Code : 401</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/polarglass.jpg" alt="">
            <h1><span class="hlt">Polarized</span> Glass</h1>
            <h2>1300 Taka</h2>
            <h3>Product Code : 402</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/magnetbag.jpg" alt="">
            <h1><span class="hlt">Magnet</span> Bag</h1>
            <h2>2400 Taka</h2>
            <h3>Product Code : 403</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
        <div class="pimage">
            <img src="/Images/antirobbag.jpg" alt="">
            <h1><span class="hlt">Anti Rob</span> Bag</h1>
            <h2>1200 Taka</h2>
            <h3>Product Code : 404</h3>
            <a class="add-cart cart5" href="#">Add To Cart</a>
        </div>
    </div>

    <script src="/Scripts/final.js"></script>


</asp:Content>

