<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="EliteParacord.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>Upload Product Image</h1>
        <asp:FileUpload ID="imageFileUploadControl" runat="server" Height="38px" Width="371px" />
        <br />
        <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" Height="38px" Width="174px" />
    <br />
    <br />
    <asp:Image ID="CurrentImage" runat="server" Height="238px" Width="352px" />
    <br />
    <br />
        <a href="List.aspx">Back</a>
        <br />
        <br />
    </div>
    
</asp:Content>
