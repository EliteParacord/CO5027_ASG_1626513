<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="EliteParacord.Admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
    <link href="../CSS/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="container">
        <h1>List of Products</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Width="985px" Height="363px">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDesc" HeaderText="Product Description" SortExpression="ProductDesc" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Save" ShowHeader="True" Text="Save" />
                <asp:HyperLinkField DataNavigateUrlFields="Productid" DataNavigateUrlFormatString="UploadImage.aspx?id={0}" HeaderText="Upload Image" Text="Upload Image" />
            </Columns>
        </asp:GridView>
        <p>
            <a href="Add.aspx">Add Products</a></p>
        <p>
            <a href="index.aspx">Home</a>
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
