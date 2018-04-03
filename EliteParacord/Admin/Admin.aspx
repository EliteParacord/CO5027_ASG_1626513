<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EliteParacord.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>Administrator Account</h1>
        <hr />
        <a href="Add.aspx"><h3>Add Product</h3></a>
        <a href="Edit.aspx"><h3>Edit Products</h3></a>
        <br />
        <br />
    </div>
</asp:Content>
