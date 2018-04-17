<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EliteParacord.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" type="text/css" href="CSS/style.css">
<style type="text/css">
    .auto-style1 {
        width: 90%;
        margin: 0 auto;
        overflow: hidden;
        height: 2500px;
    }

    .auto-style1 h1 {
        text-align:center;
    }
    .auto-style3 {
        width: 1918px;
    }
    .auto-style4 {
        width: 1492px;
    }

    .repeater ul {
        height:550px;
        margin-top:30px;
    }

    .repeater li {
    display: inline-block;
    float: left;
    width: 33%;
}


    .repeater ul li a {
        text-decoration: none;
        color: navy;
        font-size: 20px;
    }


    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../JS/jquery-3.2.0.min.js"></script>
    <script src="../JS/jquery.cycle2.min.js"></script>
     <section class="cycle-slideshow">
         <img src="~/Images/Slideshow/Slide1.jpg" alt="Products 1" runat="server"/>
         <img src="~/Images/Slideshow/Slide2.jpg" alt="Products 2" runat="server"/>
         <img src="~/Images/Slideshow/Slide3.jpg" alt="Products 3" runat="server" />
            <span class="cycle-next">&#9001;</span>
            <span class="cycle-prev">&#9002;</span>
      </section>
        <br />
    <div class="auto-style1">
        <h1>Products</h1>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
             
<ul class="repeater">
    <li>
        <img src="Images/Default_Page/Product1.jpg" width="300px" /><br />
        <a href="<%#Eval("ProductId","Pages/Product.aspx?id={0}") %>"><%#Eval("ProductName") %></a><br />
        <p><%#Eval("ProductDesc") %></p><br />
        <p><b>PRICE</b></p><%#Eval("Price")%>
    </li>
</ul>
                    
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626513_co5027_eliteparacordConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
        <br />
    </div>   
</asp:Content>

