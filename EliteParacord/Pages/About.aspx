<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="EliteParacord.Pages.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/../CSS/style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">

        <div id="contact" class="auto-style3">
            <h1>About Us</h1>
            <br />
            <div id="about_us_logo">
                <img src="../Images/Logo.png" alt="Company Logo"/><br />
            </div>
            <br />
            <div class="about_us_pic"> 
                <img src="../Images/About_Us/aboutimg.jpg" alt="Paracord Bracelet" runat="server"/>
             </div>
&nbsp;<div id="product_showcase_about">

            </div>
            <p > EliteParacords is a Brunei-based business that produces and sells paracord bracelets and other paracord-related products. Established in 2014 as a 
                 small online business on Instagram, EliteParacords quickly gained popularity for it's stylish and durable paracord bracelets. Made from 550- Military grade parachute cord,
                 Paracord has gained reputation as a versitile and durable-quality lightweight Nylon cord, and it is originally used as a parachute cord. Now, Paracord is widely used as a general
                -purpose utility cord for various uses.<br /><br /> In 2018, EliteParacord establishes their own online store which provides their customers the ability to browse and purchase their products online
                24/7 and promises to provide excellent customer service, fast shipping and convenient online shopping experience. Currently, EliteParacord caters to the local Bruneian market and plans expands to 
                International customers in the future.
                
            </p>
        </div>
               
    </div>
</asp:Content>
