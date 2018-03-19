<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EliteParacord.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/style.css" rel="stylesheet" />
<style type="text/css">
    .auto-style1 {
        margin-left: 66px;
    }
    .auto-style2 {
        margin-left: 37px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Welcome to the Admin Panel</h1>
        <p>Email
            <asp:TextBox ID="txtloginEmail" runat="server" CssClass="auto-style1" Width="214px"></asp:TextBox>
        </p>
        <p>Password<asp:TextBox ID="txtLogin" runat="server" CssClass="auto-style2" Width="208px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server" Text="Button" />
        </p>
        <p>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </p>
    </div>
</asp:Content>
