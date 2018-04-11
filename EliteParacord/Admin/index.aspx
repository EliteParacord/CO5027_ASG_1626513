<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EliteParacord.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>&nbsp;Administrator Account</h1>
        <p>Welcome to the default Page for Admin.</p>
        <p>&nbsp;</p>
        <p><a href="List.aspx">List Products</a></p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out" Height="49px" Width="160px" />
        </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
</asp:Content>
