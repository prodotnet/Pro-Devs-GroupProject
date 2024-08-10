<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="ProductDelete.aspx.cs" Inherits="Pro_Devs.ProductDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-2"></div>
    <div class="container mt-5">
        <h2 class="text-center text-danger mb-4">Delete Product</h2>

        
        <asp:Panel ID="pnlDeleteProduct" runat="server" CssClass="card p-4">
            <div class="card-body">
                <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                <asp:Label ID="lblErrorMessage" runat="server" CssClass="text-danger"></asp:Label>

                <form >
                    <div class="form-group">
                        <asp:Label ID="lblProductId" runat="server" AssociatedControlID="txtProductId" Text="Product ID:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtProductId" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="btnDeleteProduct" runat="server" CssClass="btn btn-danger" Text="Delete Product" OnClick="btnDeleteProduct_Click" />
                    </div>
                </form>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
