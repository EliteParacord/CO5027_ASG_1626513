﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="EliteParacord.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="container">
        <h1>Upload Product Image</h1>
        <asp:FileUpload ID="imageFileUploadControl" runat="server" Height="38px" Width="371px" />
        <br />
        <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" Height="38px" Width="174px" />
    <br />
    <br />
    <asp:Image ID="CurrentImage" runat="server" Height="265px" Width="310px" />
    <br />
    <br />
        <a href="List.aspx">Back</a>
        <br />
        <br />
    </div>
    
</asp:Content>
