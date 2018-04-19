<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EliteParacord.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/../CSS/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        <div id="Login-block-1">
            <h1>&nbsp;</h1>
            <h1>&nbsp;Login Page</h1>
            <p>Email Address<asp:TextBox ID="TxtLoginEmail" runat="server" CssClass="login-auto-style1" Width="250px" style="margin-left: 20px" ControlToValidate="TxtLoginEmail"></asp:TextBox>
            </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*E-mail Required!" ControlToValidate="TxtLoginEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Invalid E-mail format !" ControlToValidate="TxtLoginEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <p>Password<asp:TextBox ID="TxtLoginPassword" runat="server" CssClass="login-auto-style2" Width="247px" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password Required !" ControlToValidate="TxtLoginPassword"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Button ID="btnLogin" runat="server" CssClass="login-auto-style3" Height="42px" Text="Sign In" Width="134px" OnClick="btnLogin_Click" />
            </p>
            <p>
                <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
            </p>
            <p>&nbsp;</p>
        </div>
        <div id="Login-block-2" class="login-auto-style4">
            <div id="container">

        <h1> Account Registration</h1>
                <p><i>Customers are required to register for an account in order to make online purchases. No Account? Please register below.</i></p>
        <p> Email<asp:TextBox ID="TxtEmailReg" runat="server" CssClass="auto-style5" Width="303px" style="margin-left: 148px"></asp:TextBox>
        </p>
        <p> Password<asp:TextBox ID="TxtPasswordReg" runat="server" CssClass="auto-style6" Width="300px" TextMode="Password" style="margin-left: 114px"></asp:TextBox>
        </p>
        <p> Confirm Password<asp:TextBox ID="TxtConfirmPassReg" runat="server" CssClass="auto-style7" Width="298px" TextMode="Password" style="margin-left: 47px"></asp:TextBox>
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
