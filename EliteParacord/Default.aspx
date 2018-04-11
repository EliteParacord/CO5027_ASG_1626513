<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EliteParacord.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" type="text/css" href="CSS/style.css">
<style type="text/css">
    .auto-style1 {
        width: 80%;
        margin: 0 auto;
        overflow: hidden;
        height: 2522px;
    }
    .auto-style3 {
        width: 1918px;
    }
    .auto-style4 {
        width: 1492px;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../JS/jquery-3.2.0.min.js"></script>
    <script src="../JS/jquery.cycle2.min.js"></script>
     <section class="cycle-slideshow">
         <img src="~/Images/Slideshow/Slide1.jpg" alt="Products 1" class="auto-style4" runat="server"  />
         <img src="~/Images/Slideshow/Slide2.jpg" alt="Products 2"  runat="server"/>
          <img src="~/Images/Slideshow/Slide3.jpg" alt="Products 3"  runat="server"/>
            <span class="cycle-next">&#9001;</span>
            <span class="cycle-prev">&#9002;</span>
            <span class="cycle-pager"></span>
      </section>
        <br />
    <div class="auto-style1-default">
        <div class="box">
            <h2>Featured Products</h2>
            <br />
            <div class="product-box">
                <h2>Classic Cobra Stitch</h2>
                <img src="~/Images/Default_Page/Product1.jpg" runat="server" />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dictum auctor dolor, nec tristique lacus molestie porttitor. Aenean et convallis metus, accumsan molestie eros. Proin non erat est. Integer tempus risus mi, in placerat est volutpat id. Donec lacus lacus, porta sed diam a, ornare feugiat nisi. Cras mi ante, blandit fermentum justo a, ornare lobortis turpis. Phasellus auctor tellus enim, vitae ullamcorper lectus finibus non.</p>
                <h2>BND 12.00</h2>
            </div>
            <div class="product-box" >
                <h2>Fishtail Viper</h2>
                <img src="~/Images/Default_Page/Product2.jpg" runat="server" />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dictum auctor dolor, nec tristique lacus molestie porttitor. Aenean et convallis metus, accumsan molestie eros. Proin non erat est. Integer tempus risus mi, in placerat est volutpat id. Donec lacus lacus, porta sed diam a, ornare feugiat nisi. Cras mi ante, blandit fermentum justo a, ornare lobortis turpis. Phasellus auctor tellus enim, vitae ullamcorper lectus finibus non.</p>
                <h2>BND 8.00</h2>
            </div>
            <div class="product-box">
                <h2>Neon Viper (Limited Edition)</h2>
                <img src="~/Images/Default_Page/Product3.jpg" runat="server" />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dictum auctor dolor, nec tristique lacus molestie porttitor. Aenean et convallis metus, accumsan molestie eros. Proin non erat est. Integer tempus risus mi, in placerat est volutpat id. Donec lacus lacus, porta sed diam a, ornare feugiat nisi. Cras mi ante, blandit fermentum justo a, ornare lobortis turpis. Phasellus auctor tellus enim, vitae ullamcorper lectus finibus non.</p>
                <h2>BND 7.00</h2>
            </div>
            <div class="product-box" >
                <h2>Jawbone Two-Face</h2>
                <img src="~/Images/Default_Page/Product4.jpg" runat="server" />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dictum auctor dolor, nec tristique lacus molestie porttitor. Aenean et convallis metus, accumsan molestie eros. Proin non erat est. Integer tempus risus mi, in placerat est volutpat id. Donec lacus lacus, porta sed diam a, ornare feugiat nisi. Cras mi ante, blandit fermentum justo a, ornare lobortis turpis. Phasellus auctor tellus enim, vitae ullamcorper lectus finibus non.</p>
                <h2>BND 8.50</h2>
            </div>
            <br />
            <div class="product-box" >
                <h2>Paracord Lanyard</h2>
                <img src="~/Images/Default_Page/Product5.jpg" runat="server" />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dictum auctor dolor, nec tristique lacus molestie porttitor. Aenean et convallis metus, accumsan molestie eros. Proin non erat est. Integer tempus risus mi, in placerat est volutpat id. Donec lacus lacus, porta sed diam a, ornare feugiat nisi. Cras mi ante, blandit fermentum justo a, ornare lobortis turpis. Phasellus auctor tellus enim, vitae ullamcorper lectus finibus non.</p>
                <h2>BND 8.50</h2>
            </div>
            <br />
            <div class="product-box" >
                <h2>Camouflage Cobra Stitch</h2>
                <img src="~/Images/Default_Page/Product6.jpg" runat="server" />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dictum auctor dolor, nec tristique lacus molestie porttitor. Aenean et convallis metus, accumsan molestie eros. Proin non erat est. Integer tempus risus mi, in placerat est volutpat id. Donec lacus lacus, porta sed diam a, ornare feugiat nisi. Cras mi ante, blandit fermentum justo a, ornare lobortis turpis. Phasellus auctor tellus enim, vitae ullamcorper lectus finibus non.</p>
                <h2>BND 8.50</h2>
            </div>
        </div>
        <br />
        <hr />
    </div>
</asp:Content>
