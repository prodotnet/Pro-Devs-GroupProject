<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Pro_Devs.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="p-2"></div>
     <div class="p-2"></div>
  <div class="container mt-5">
    <h4  class="text-center text-warning mb-4">Add Products to Cart</h4>
    <table border="1" cellpadding="5" cellspacing="0" style="width:100%;">
        <tr class="text-success">
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
        <asp:Repeater ID="ProductsRepeater" runat="server">
            <ItemTemplate>
                <tr class="text-light">
                    <td><%# Eval("Name") %></td>
                    <td><%# Eval("Description") %></td>
                    <td><%# Eval("Price", "{0:C}") %></td>
                    <td>
                        <asp:TextBox ID="QuantityTextBox" runat="server" Text="1" Width="50px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="AddToCartButton" runat="server" Text="Add to Cart" CommandName="AddToCart" CommandArgument='<%# Eval("Id") %>' />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</div>
</asp:Content>
