<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Pro_Devs.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-2"></div>
    <div class="p-2"></div>
    <div class="container mt-5">
        <h4 class="text-center text-warning mb-4">Shopping Cart</h4>
        <div class="row">
            <!-- Cart Table Column -->
            <div class="watch-card col-md-8">
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
            
            <!-- Checkout Section Column -->
            <div class="col-md-4">
                <div class="watch-card mb-4">
                    <form class="card p-2">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-success">Checkout</span>
                        </h4>
                        <ul class="list-group mb-3" id="CheckoutCart" runat="server">
                            <!-- Product summary items will be dynamically populated here -->
                        </ul>
                        <div class="text-right mt-4">
                            <span class="h7 text-dark" id="Subtotal" runat="server"></span><br />
                            <span class="h6 text-dark" id="TotalAmount" runat="server"></span>

                            <br />
                            <asp:Button ID="btnCheckout" runat="server" CssClass="btn btn-success mt-3" Text="Payment" OnClick="btnPayment_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
      <div class="col-2">
       <div class="text-center mt-4">
           <a href="Products.aspx" class="btn btn-outline-success">Back to Products</a>
                  
       </div>
    </div>
    <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
</asp:Content>
