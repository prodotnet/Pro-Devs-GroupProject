<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pro_Devs.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

<div id="carouselExample" class="carousel slide p-7" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/home/watt3.jpg" class="d-block w-100 carousel-image" alt="Watch 1">
      <div class="carousel-caption d-none d-md-block">
        <h1 class="display-4">Welcome to Pro Devs!</h1>
        <p class="lead">Redefining time keeping.</p>
        <p>Explore our range of products and find the perfect watch for you. We offer a wide selection of the latest watches, from top brands to budget-friendly options.</p>
        <p>
          <a href="#" class="btn btn-success">Products</a>
          <a href="#" class="btn btn-secondary">Browse Categories</a>
        </p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/home/wat2.jpg" class="d-block w-100 carousel-image" alt="Watch 2">
      <div class="carousel-caption d-none d-md-block">
         <p>Rolex watches are celebrated for their reliability, luxurious materials, and their role as a status symbol in the world of horology.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/home/w3.jpg" class="d-block w-100 carousel-image" alt="Watch 3">
      <div class="carousel-caption d-none d-md-block">
      
      <p>Smart watches provide seamless integration with your smartphone, allowing you to manage notifications, track activities, and access apps right from your wrist.</p>
     </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>

</div>
  


<!-- Advertisement Section -->
<div class="ad-section container mt-5">
    <div class="row">
        <!-- Smart watch-->
        <div class="col-md-4 mb-4">
            <div class="ad-card text-center">
                <img src="img/w3.jpg" class="img-fluid"  alt="Watches">
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
                <img src="img/rolexHo.jpg" class="img-fluid" alt="Watches">
                <div class="ad-content">
                    <h3>Rolex</h3>
                     <p>Explore our collection of premium Rolex watches known for their luxury and precision.</p>
                     <a href="#" class="btn btn-success">Explore Rolex</a>
                </div>
            </div>
        </div>




        <!-- Omega Watches -->
        <div class="col-md-4 mb-4">
  <div class="card ad-card text-center">
    <img src="img/omegaW.jpg" class="card-img-top img-fluid" alt="Watches">
    <div class="card-body ad-content">
      <h3 class="card-title">Omega</h3>
      <p class="card-text">Experience the timeless  innovation of Omega watches, renowned for their luxury and historic achievements.</p>
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
                    <a href="#" class="btn btn-success">View Details</a>
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
                    <a href="#" class="btn btn-success">View Details</a>
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
                    <a href="#" class="btn btn-success">View Details</a>
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
        <!-- Smart Watches -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/w3.jpg" class="img-fluid" alt="Smart Watch 1">
                <div class="watch-content">
                    <h5 class="text-success">Apple Watch Series 7</h5>
                    <p class="text-warning">Price: R7,499</p>
                    <p class="text-description">The Apple Watch Series 7 features a larger and more durable display with advanced health tracking capabilities and fast charging.</p>
                    <a href="#" class="btn btn-success">Add to Cart</a>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/watch2.jpg" class="img-fluid" alt="Smart Watch 2">
                <div class="watch-content">
                    <h5 class="text-success">Samsung Galaxy Watch 4</h5>
                    <p class="text-warning">Price: R5,999</p>
                    <p class="text-description">The Samsung Galaxy Watch 4 offers a sleek design, comprehensive fitness tracking, and the latest Wear OS for seamless integration with Android devices.</p>
                    <a href="#" class="btn btn-success">Add to Cart</a>
                </div>
            </div>
        </div>

        <!-- Rolex Watches -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/rolex2.jpg" class="img-fluid" alt="Rolex Submariner">
                <div class="watch-content">
                    <h5 class="text-success">Rolex Submariner</h5>
                    <p class="text-warning">Price: R129,000</p>
                    <p class="text-description">The Rolex Submariner is a classic diving watch known for its robustness, elegant design, and exceptional timekeeping accuracy.</p>
                    <a href="#" class="btn btn-success">Add to Cart</a>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/wa2.jpg" class="img-fluid" alt="Rolex Day-Date">
                <div class="watch-content">
                    <h5 class="text-success">Rolex Day-Date</h5>
                    <p class="text-warning">Price: R165,000</p>
                    <p class="text-description">The Rolex Day-Date is a prestigious watch with a distinctive design, featuring a day and date display and a choice of precious metals.</p>
                    <a href="#" class="btn btn-success">Add to Cart</a>
                </div>
            </div>
        </div>

        <!-- Omega Watches -->
        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/omega1.jpg" class="img-fluid" alt="Omega Speedmaster Professional">
                <div class="watch-content">
                    <h5 class="text-success">Omega Speedmaster Professional</h5>
                    <p class="text-warning">Price: R72,000</p>
                    <p class="text-description">The Omega Speedmaster Professional is renowned for its history as the "Moonwatch" and offers precision, durability, and a timeless design.</p>
                    <a href="#" class="btn btn-success">Add to Cart</a>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="watch-card text-center">
                <img src="img/omega3.jpg" class="img-fluid" alt="Omega Seamaster Diver 300M">
                <div class="watch-content">
                    <h5 class="text-success">Omega Seamaster Diver 300M</h5>
                    <p class="text-warning">Price: R89,000</p>
                    <p class="text-description">The Omega Seamaster Diver 300M is a professional-grade diving watch with advanced water resistance and a distinctive helium escape valve.</p>
                    <a href="#" class="btn btn-success">Add to Cart</a>
                </div>
            </div>
        </div>
    </div>
</div>


</asp:Content>
