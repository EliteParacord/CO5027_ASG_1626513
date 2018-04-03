<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="EliteParacord.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>Upload Product Image</h1>
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        <br />
        <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" style="height: 26px" />
    <br />
    <br />
    <asp:Image ID="CurrentImage" runat="server" />
    <br />
    <br />
        <a href="List.aspx">List.aspx</a>
    </div>
    
</asp:Content>
