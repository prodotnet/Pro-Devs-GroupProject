<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Pro_Devs.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="p-2"></div>
    <div class="p-2"></div>
    <div class="container mt-5">
        <h4 class="text-center text-warning mb-4">Shopping Cart</h4>
        
        
       
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
            <tbody  id="Cart" runat="server">
                              
            </tbody>
        </table>
    </div>
        <div class="text-right mt-4">
        <span class="h4 text-warning" id="TotalAmount" runat="server"></span>
        <br />
        <asp:Button ID="btnCheckout" runat="server" CssClass="btn btn-success mt-3" Text="Proceed to Checkout" />
    </div>
    <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>

</asp:Content>
