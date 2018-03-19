<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EliteParacord.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/../CSS/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 18px;
        }
        .auto-style2 {
            margin-left: 54px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div id="Login-block-1">
            <h1>&nbsp;</h1>
            <h1>Customer Login</h1>
            <p>Email Address<asp:TextBox ID="TxtLoginEmail" runat="server" CssClass="auto-style1" Width="250px"></asp:TextBox>
            </p>
            <p>Password<asp:TextBox ID="TxtLoginPassword" runat="server" CssClass="auto-style2" Width="247px"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnLogin" runat="server" CssClass="auto-style3" Height="42px" Text="Sign In" Width="134px" OnClick="btnLogin_Click" />
            </p>
            <p>
                <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
            </p>
            <p>&nbsp;</p>
        </div>
        <div id="Login-block-2">
            <h1>New Customers</h1>
            <p>Register for a new account to make orders and purchase<br /> your favourite paracord bracelet.</p>
            <p>
                <asp:Button ID="Button2" runat="server" Height="52px" OnClick="Button2_Click" Text="Register Now" Width="264px" />
            </p>
            <br />
            <br />
            <br />

        </div>
    </div>
     
</asp:Content>
