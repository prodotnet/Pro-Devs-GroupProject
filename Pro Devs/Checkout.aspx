<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Pro_Devs.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-2"></div>
    <div class="p-2"></div>
    <div class="container mt-5">
        <h4 class="text-center text-warning mb-4">Your Shopping Cart</h4>
        <table class="table table-bordered" style="background-color: #333;">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="ShoppingCart" runat="server">
                <!-- Cart items will be dynamically populated here -->
            </tbody>
        </table>
    </div>
    <div class="text-right mt-4">
        <span class="h4 text-warning" id="TotalAmount" runat="server"></span>
        <br />
        <asp:Button ID="btnCheckout" runat="server" CssClass="btn btn-success mt-3" Text="Checkout" OnClick="btnCheckout_Click" />
    </div>
    <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
</asp:Content>
