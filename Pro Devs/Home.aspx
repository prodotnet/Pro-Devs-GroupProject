<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pro_Devs.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="welcome-section" style="background-image: url('img/home/homeImg.jpg'); background-size: cover; color: #ffffff; padding: 100px 0;">
    <div class="container text-center">
       <h1 class="display-4">Welcome to Pro Devs!</h1>
       <p class="lead">Redifining time keeping.</p>
       <p>Explore our range of products and find the perfect watch for you. We offer a wide selection of the latest watches, from top brands to budget-friendly options.</p>
       <p>Check out our <a href="#" class="btn btn-success">Products</a> page to see what’s new or <a href="#" class="btn btn-secondary">Browse Categories</a> to find exactly what you’re looking for.</p>
    </div>
</div>



<!-- Advertisement Section -->
<div class="ad-section container mt-5">
    <div class="row">
        <!-- Smart watch-->
        <div class="col-md-4 mb-4">
            <div class="ad-card text-center">
                <img src="img/sm1.jpg" class="img-fluid" alt="Watches">
                <div class="ad-content">
                     <h3>Smart Watches</h3>
                     <p>Discover the latest smartwatches with advanced features and connectivity options.</p>
                    <a href="#" class="btn btn-success">Explore Smart Watches</a>
                </div>
            </div>
        </div>

         <!-- Rolex Watches -->
        <div class="col-md-4 mb-4">
            <div class="ad-card text-center">
                <img src="img/rolex3.jpg" class="img-fluid" alt="Watches">
                <div class="ad-content">
                    <h3>Rolex</h3>
                     <p>Explore our collection of premium Rolex watches known for their luxury and precision.</p>
                     <a href="#" class="btn btn-success">Explore Rolex</a>
                </div>
            </div>
        </div>




        <!-- Omega Watches -->
        <div class="col-md-4 mb-4">
            <div class="ad-card text-center">
                <img src="img/omega3.jpg" class="img-fluid" alt="Watches">
                <div class="ad-content">
                      <h3>Omega</h3>
                    <p>Experience the timeless precision and innovation of Omega watches, renowned for their luxury and historic achievements.</p>
                    <a href="#" class="btn btn-success">Explore Omega Watches</a>
                </div>
            </div>
        </div>
    </div>
</div>

 <hr />

<!-- New Arrivals Section -->
<div class="new-arrivals-section container mt-5">
    <h2 class="text-center mb-4">New Arrivals</h2>
    <div class="row">
        <!-- New Arrival Item 1 -->
        <div class="col-md-4 mb-4">
            <div class="new-arrival-card text-center">
                <img src="img/watch1.jpg" class="img-fluid" alt="New Arrival 1">
                <div class="new-arrival-content">
                    <h3>New Arrival 1</h3>
                    <p>Brief description of the new arrival 1.</p>
                    <a href="#" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>

        <!-- New Arrival Item 2 -->
        <div class="col-md-4 mb-4">
            <div class="new-arrival-card text-center">
                <img src="img/A.jpg" class="img-fluid" alt="New Arrival 2">
                <div class="new-arrival-content">
                    <h3>New Arrival 2</h3>
                    <p>Brief description of the new arrival 2.</p>
                    <a href="#" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>

        <!-- New Arrival Item 3 -->
        <div class="col-md-4 mb-4">
            <div class="new-arrival-card text-center">
                <img src="img/w4.jpg" class="img-fluid" alt="New Arrival 3">
                <div class="new-arrival-content">
                    <h3>New Arrival 3</h3>
                    <p>Brief description of the new arrival 3.</p>
                    <a href="#" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>
    </div>
</div>


 <hr  class="text-success"/>

    <!-- All Watches Section -->
<div class="all-watches-section container mt-5">
    <h2 class="text-center mb-4">All Watches Available</h2>
    <div class="row">
        <!-- Watch Item 1 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/w3.jpg" class="img-fluid" alt="Watch 1">
                <div class="watch-content">
                    <h3>Watch 1</h3>
                    <p>ID: 001</p>
                    <p>Price: $199.99</p>
                    <p>Description: A stylish watch with modern features.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

        <!-- Watch Item 2 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch2.jpg" class="img-fluid" alt="Watch 2">
                <div class="watch-content">
                    <h3>Watch 2</h3>
                    <p>ID: 002</p>
                    <p>Price: $299.99</p>
                    <p>Description: A luxury watch with premium materials.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

        <!-- Watch Item 3 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch3.jpg" class="img-fluid" alt="Watch 3">
                <div class="watch-content">
                    <h3>Watch 3</h3>
                    <p>ID: 003</p>
                    <p>Price: $149.99</p>
                    <p>Description: An affordable watch with essential features.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

         <!-- Watch Item 3 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch3.jpg" class="img-fluid" alt="Watch 3">
                <div class="watch-content">
                    <h3>Watch 3</h3>
                    <p>ID: 003</p>
                    <p>Price: $149.99</p>
                    <p>Description: An affordable watch with essential features.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

         <!-- Watch Item 3 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch3.jpg" class="img-fluid" alt="Watch 3">
                <div class="watch-content">
                    <h3>Watch 3</h3>
                    <p>ID: 003</p>
                    <p>Price: $149.99</p>
                    <p>Description: An affordable watch with essential features.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

         <!-- Watch Item 3 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch3.jpg" class="img-fluid" alt="Watch 3">
                <div class="watch-content">
                    <h3>Watch 3</h3>
                    <p>ID: 003</p>
                    <p>Price: $149.99</p>
                    <p>Description: An affordable watch with essential features.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

         <!-- Watch Item 3 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch3.jpg" class="img-fluid" alt="Watch 3">
                <div class="watch-content">
                    <h3>Watch 3</h3>
                    <p>ID: 003</p>
                    <p>Price: $149.99</p>
                    <p>Description: An affordable watch with essential features.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

         <!-- Watch Item 3 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch3.jpg" class="img-fluid" alt="Watch 3">
                <div class="watch-content">
                    <h3>Watch 3</h3>
                    <p>ID: 003</p>
                    <p>Price: $149.99</p>
                    <p>Description: An affordable watch with essential features.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

         <!-- Watch Item 3 -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch3.jpg" class="img-fluid" alt="Watch 3">
                <div class="watch-content">
                    <h3>Watch 3</h3>
                    <p>ID: 003</p>
                    <p>Price: $149.99</p>
                    <p>Description: An affordable watch with essential features.</p>
                    <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>
    </div>
</div>


</asp:Content>
