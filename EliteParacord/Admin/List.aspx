<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="EliteParacord.Admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>List of Products</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Width="666px">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" SortExpression="ProductDesc" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Action" ShowHeader="True" Text="Edit" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="Edit.aspx?Productid={0}" Text="Edit" />
            </Columns>
        </asp:GridView>
    </p>
        <p>
            <a href="Add.aspx">Add Products</a></p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626513_co5027_eliteparacordConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductName], [ProductDesc]) VALUES (@ProductName, @ProductDesc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ProductId" Type="Int32" />
                    <asp:Parameter Name="original_ProductName" Type="String" />
                    <asp:Parameter Name="original_ProductDesc" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="ProductDesc" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="ProductDesc" Type="String" />
                    <asp:Parameter Name="original_ProductId" Type="Int32" />
                    <asp:Parameter Name="original_ProductName" Type="String" />
                    <asp:Parameter Name="original_ProductDesc" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </p>
    </div>
    
</asp:Content>
