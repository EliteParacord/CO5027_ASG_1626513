<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EliteParacord.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" type="text/css" href="CSS/style.css">
      <link href="CSS/DefaultPage.css" type="text/css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <section class="cycle-slideshow">
         <img src="~/Images/Slideshow/Slide1.jpg" alt="Products 1" runat="server"/>
            <span class="cycle-next">&#9001;</span>
            <span class="cycle-prev">&#9002;</span>
    <script src="../JS/jquery-3.2.0.min.js"></script>
    <script src="../JS/jquery.cycle2.min.js"></script>
      </section>
        <br />
    <div class="auto-style1">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <p class="product-p">Products</p>
            </HeaderTemplate>
            <ItemTemplate>
             
<ul class="repeater">
    <li>
        <a href="<%#Eval("ProductId","Pages/Product.aspx?id={0}") %>"><asp:Image runat="server" ImageUrl='<%#"~/ProductImages/" + Eval("ProductId") + ".jpg" %>' Height="300"></asp:Image></a>
        <a href="<%#Eval("ProductId","Pages/Product.aspx?id={0}") %>"><%#Eval("ProductName") %></a>
        <p><%#Eval("ProductDesc") %></p>
        <p><b>PRICE</b></p><%#Eval("Price")%>
</ul>
   
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626513_co5027_eliteparacordConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
        <asp:Table ID="Table1" runat="server"></asp:Table>    <br />
    </div>   
</asp:Content>

