<%@ Page Title="Blog" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Pro_Devs.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Css/Style.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="p-2"></div>
     <div class="p-2"></div>
    <div class="container mt-5">
        <h3 class="text-center text-warning mb-4">Our Blog</h3>
        
        <!-- Blog Post 1 -->
        <div class="card mb-4 shadow-sm border-light">
            <img src="img/watch5.jpg" class="card-img-top" alt="How to Choose the Perfect Watch" style="height: 250px; object-fit: cover;">
            <div class="card-body">
                <h5 class="card-title">How to Choose the Perfect Watch</h5>
                <p class="card-text">Choosing the right watch involves considering your style, functionality needs, and budget. In this post, we explore different types of watches and what to look for to find the perfect one for you.</p>
                <a href="BlogPost1.aspx" class="btn btn-success">Read More</a>
            </div>
        </div>
        
        <!-- Blog Post 2 -->
        <div class="card mb-4 shadow-sm border-light">
            <img src="img/home.jpg" class="card-img-top" alt="The Evolution of Smartwatches" style="height: 250px; object-fit: cover;">
            <div class="card-body">
                <h5 class="card-title">The Evolution of Smartwatches</h5>
                <p class="card-text">Smartwatches have come a long way from their inception. This post covers the history of smartwatches, their technological advancements, and their impact on our daily lives.</p>
                <a href="BlogPost2.aspx" class="btn btn-success">Read More</a>
            </div>
        </div>
    </div>
</asp:Content>
