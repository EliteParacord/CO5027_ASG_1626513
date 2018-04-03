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
        .auto-style4 {
            height: 292px;
            margin-top: 58px;
        }
        .auto-style5 {
            margin-left: 114px;
        }
        .auto-style6 {
            margin-left: 80px;
        }
        .auto-style7 {
            margin-left: 13px;
        }
        .auto-style8 {
            width: 80%;
            margin: 0 auto;
            overflow: hidden;
            height: 542px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style8">
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
        <div id="Login-block-2" class="auto-style4">
            <div id="container">
        <h1> Account Registration</h1>
                <p><i>No Account? Please register below</i></p>
        <p> Email<asp:TextBox ID="TxtEmailReg" runat="server" CssClass="auto-style5" Width="303px"></asp:TextBox>
        </p>
        <p> Password<asp:TextBox ID="TxtPasswordReg" runat="server" CssClass="auto-style6" Width="300px"></asp:TextBox>
        </p>
        <p> Confirm Password<asp:TextBox ID="TxtConfirmPassReg" runat="server" CssClass="auto-style7" Width="298px"></asp:TextBox>
        </p>
        <p> 
            <asp:Button ID="btnUserReg" runat="server" Height="30px" OnClick="btnUserReg_Click" Text="Register" Width="181px" />
        </p>
        <p> 
            <asp:Literal ID="litReg" runat="server"></asp:Literal>
        </p>
        <p> &nbsp;</p>
        
    </div>


        </div>
    </div>


     
</asp:Content>
