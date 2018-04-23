<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EliteParacord.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/ContactPage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">

        <br />

        <div id="contact">
            <h1>Contact Us</h1>

            <p>Name
                <asp:TextBox ID="Txtname" runat="server" style="margin-left: 35px" Width="337px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtname" ErrorMessage="*Name is required"></asp:RequiredFieldValidator>
            </p>



                E-mail<asp:TextBox ID="TxtEmail" runat="server" Width="338px" style="margin-left: 35px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqFieldName" runat="server" ControlToValidate="TxtEmail" ErrorMessage="
                         * Email is required" BackColor="White"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegExprChkEMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             <br /><br />
             Subject<asp:TextBox ID="Txtsubject" runat="server" style="margin-left: 28px" Width="335px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtsubject" ErrorMessage="* Subject is required."></asp:RequiredFieldValidator>
            <br /><br />
             <br />
             Your Enquiry :-
            <br />
            <br />
            <asp:TextBox ID="TxtEnquiry" runat="server" Height="172px" Width="382px" OnTextChanged="TxtEnquiry_TextChanged" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEnquiry" ErrorMessage="* Your Message is required !"></asp:RequiredFieldValidator>
            <br />
            <br />
             <asp:Button ID="btnSend" runat="server" Height="55px" OnClick="btnSendClick" Text="Send" Width="162px" />

            <br />
            <br />
            <br />
             <asp:Literal ID="litResult" runat="server"></asp:Literal>

            <br />
            <br />
            <br />
            <br />
        </div>

         <div id="tel-number">
            <h1>Telephone Number :-</h1>
            <p>+673 27465234</p>
            <h1>Address</h1>
            <p>Plaza Abdul Razak<br /> Jalan Laksamana Abdul Razak<br /> Bandar Seri Begawan BA1712</p>
        </div>
        <div id="location">
            <hr />
            <h1>Our Location </h1>
            <br />
            <div id="map" >
                <script src="../JS/Map.js"></script>
             <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwtB58yOXopyM3NdxFdVcNQo-kdMlVZts
&callback=initMap"
    async defer></script>
            </div>
            <br /><br />
            <h1>Static Map</h1>
            <img src="../Images/staticmap.png" alt="Map of EliteParacords"/>
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
     
</asp:Content>
