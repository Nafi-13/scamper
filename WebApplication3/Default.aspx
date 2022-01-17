<%@ Page Title="Home Page" Language="C#"
     MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    
    <header id="showcase">
        <nav class="bar" data-aos="fade-down">
            <div class="logo">
                <h3 style="font-family:Squada one">SCAMPER</h3>
            </div>
            <ul class="nav-links">
                <li style="font-family:Fredoka One"> <a runat="server" href="~/Default.aspx"><i class="fas fa-home"></i> Home  </a> </li>
                <li style="font-family:Fredoka One"> <a runat="server" href="~/Products.aspx"><i class="fas fa-archive"></i> Products  </a> </li>
                <li style="font-family:Fredoka One"> <a runat="server" href="~/Cart.aspx"><i class="fas fa-shopping-cart"></i> Cart </a> </li>
                <li style="font-family:Fredoka One"> <a runat="server" href="~/admin.aspx"><i class="fas fa-users-cog"></i> Admin </a> </li>
            </ul>
        </nav>
        <div class="container">
            <h1 style="font-family:Spartan">Welcome to SCAMPER</h1>
            <p style="font-family:Francois One">Travelers Paradise, Gear Up Now</p>
            <a href="#" class="button" style="font-family:Fredoka One">Read More</a>
        </div>
    </header>
        <section class="heading" data-aos="fade-left">
        <h1 style="font-family:Bungee">Featured Products</h1>
    </section>

    <section class="feat">

        <div class="card">
            <div class="imgBx">
                <img src="/Images/hat.png" alt="">
            </div>
            <div class="contentBx">
                <h3 style="font-family:Francois One">Sun Hat</h3>
                <h2 style="font-family:Caveat Brush"class="price">200 <small>BDT</small></h2>
                <a runat="server" href="~/Products.aspx" class="buy" style="font-family:Francois One">View More</a>
            </div>
        </div>
        <div class="card">
            <div class="imgBx">
                <img src="/Images/magnet_bag.png" alt="">
            </div>
            <div class="contentBx">
                <h3 style="font-family:Francois One">Magnet Plain Bag</h3>
                <h2 style="font-family:Caveat Brush"class="price"class="price">2,400 <small>BDT</small></h2>
                <a style="font-family:Francois One" runat="server" href="~/Products.aspx" class="buy">View More</a>
            </div>
        </div>
        <div class="card">
            <div class="imgBx">
                <img src="/Images/Womens_bag.png" alt="">
            </div>
            <div class="contentBx">
                <h3 style="font-family:Francois One">Anti-Theft Bag</h3>
                <h2 style="font-family:Caveat Brush"class="price"class="price">1,200 <small>taka</small></h2>
                <a style="font-family:Francois One" runat="server" href="~/Products.aspx" class="buy">View More</a>
            </div>
        </div>
        <div class="card">
            <div class="imgBx">
                <img src="/Images/blue_glass.png" alt="">
            </div>
            <div class="contentBx">
                <h3 style="font-family:Francois One">Polarized Glass</h3>
                <h2 style="font-family:Caveat Brush"class="price"class="price">1,300 <small>taka</small></h2>
                <a style="font-family:Francois One" runat="server" href="~/Products.aspx" class="buy">View More</a>
            </div>
        </div>
    </section>

    <main class="containers">
        <section class="cards" data-aos="fade-right">
            <img src="/Images/test.jpg" alt="">
            <div>
                <h3 style="font-family:Bungee">Winter Sale Going ON!</h3>
                <p style="font-family:Francois One">Upto <span class="discount">60%</span> Discount</p>
            </div>
        </section>
    </main>

    <section class=containers1 data-aos="fade-left">
        <h1 style="font-family:Squada One">Powered By</h1>
        <div class="brands">
            <div class="brand">
                <img src="/Images/brand1.png" alt="">
            </div>
            <div class="brand">
                <img src="/Images/brand2.png" alt="">
            </div>
            <div class="brand3">
                <img src="/Images/brand3.png" alt="">
            </div>
            <div class="brand">
                <img src="/Images/brand4.png" alt="">
            </div>
            <div class="brand">
                <img src="/Images/brand5.png" alt="">
            </div>

        </div>

    </section>

    <footer data-aos="fade-up">
        <div class="main-content">
            <div class="left box">
                <h2 style="font-family:Squada One">About us</h2>
                <div class="fcontent">
                    <p style="font-family:Francois One">When traveling abroad, the odds favor a safe and incident-free trip.However, travelers can face difficulties.That's why 'SCAMPER' is here to gear you up with necessary travel goodies.We try our best to achieve your satisfaction by maintaining products quality.
                        So, Don't be in doubt and stay with us.As a wise man said ~ "Live with no excuses and travel with no regrets"</p>
                </div>

            </div>

            <div class="center">
                <h2 style="font-family:Squada One">Address</h2>
                <div class="fcontent" style="font-family:Francois One">
                    <div class="place" >
                        <span class="fas fa-map-marker-alt"></span>
                        <span class="text">Dhaka,Bangladesh</span>
                    </div>
                    <div class="phone">
                        <span class="fas fa-phone-alt"></span>
                        <span class="text">+8801832329983</span>
                    </div>
                    <div class="email">
                        <span class="fas fa-envelope"></span>
                        <span class="text">scamper2022@gmail.com</span>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
</asp:Content>

