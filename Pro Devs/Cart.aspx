<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Pro_Devs.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="p-2"></div>
     <div class="p-2"></div>
 <div class="container mt-5">
      <h2 class="text-center text-warning mb-4">Your Shopping Cart</h2>
        <asp:Repeater ID="ProductsRepeater" runat="server">
            <ItemTemplate>
                <table class="table table-striped">
                    <thead>
                        <tr class=" text-warning ">
                            <th>Image</th>
                            <th>Name</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <img src='<%# Eval("ImageUrl_") %>' class='img-fluid' alt='<%# Eval("Name") %>' style="max-width: 100px;">
                            </td>
                            <td><%# Eval("Name") %></td>
                            <td><%# Eval("Quantity") %></td>
                            <td>R<%# Eval("Price") %></td>
                            <td>R<%# Eval("Total") %></td>
                        </tr>
                    </tbody>
                </table>
            </ItemTemplate>
        </asp:Repeater>
        <div class="mt-4">
            <a href="Checkout.aspx" class="btn btn-success">Proceed to Checkout</a>
        </div>
    </div>
        
</asp:Content>
