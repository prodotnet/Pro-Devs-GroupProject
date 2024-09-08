<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Pro_Devs.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="p-2"></div>
    <div class="p-2"></div>
   
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-3">
                <div class=" watch-card mb-3  text-white">
                    <div class="card-body">
                        <h5 class="card-title text-warning">Total Products Sold</h5>
                        <asp:Label ID="lblTotalProductsSold" runat="server" CssClass="card-text text-success"></asp:Label>
                    </div>
                </div>
            </div>
         
            <div class="col-md-3">
                <div class="watch-card  mb-3  text-white">
                    <div class="card-body">
                        <h5 class="card-title text-warning">Total Orders Placed</h5>
                        <asp:Label ID="lblTotalOrders" runat="server" CssClass="card-text text-success"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="watch-card  mb-3  text-white">
                    <div class="card-body">
                        <h5 class="card-title text-warning">Available Stock</h5>
                        <asp:Label ID="lblAvailableStock" runat="server" CssClass="card-text text-success"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="watch-card  mb-3 text-white">
                    <div class="card-body">
                        <h5 class="card-title text-warning">Registered Users Today</h5>
                        <asp:Label ID="lblRegisteredUsersToday" runat="server" CssClass="card-text text-success"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Add chart containers -->
        <div class="row mt-4">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        Sales Overview
                    </div>
                    <div class="card-body">
                        <canvas id="salesChart"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        Product Distribution
                    </div>
                    <div class="card-body">
                        <canvas id="productChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
