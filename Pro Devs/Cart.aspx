<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Pro_Devs.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-2"></div>
    <div class="p-2"></div>
    <div class="container mt-5">
        <h4 class="text-center text-warning mb-4">Your Shopping Cart</h4>
        
        
       
        <table class="table table-bordered" style="background-color: #333"; >
            <thead >
                <tr >
                    <th>Image</th>
                    <th>Name</th>                   
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody  id="ShoppingCart" runat="server">
                              
            </tbody>
        </table>
    </div>
        <div class="text-right mt-4">
            <span class="h4 text-warning">Total Amount: R489.97</span>
            <br />
            <asp:Button ID="btnCheckout" runat="server" CssClass="btn btn-success mt-3" Text="Proceed to Checkout" />
        </div>
   
</asp:Content>
