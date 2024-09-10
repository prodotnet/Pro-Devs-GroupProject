<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Pro_Devs.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-5">
        <h4 class="text-center text-success mb-4">Invoice</h4>
        <asp:Label ID="lblInvoiceDetails" runat="server" CssClass="text-success"></asp:Label>
    </div>
</asp:Content>
