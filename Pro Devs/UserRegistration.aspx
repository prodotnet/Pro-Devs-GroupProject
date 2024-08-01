<%@ Page Title="" Language="C#" MasterPageFile="~/ProDevs.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Pro_Devs.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="p-2"></div>
<section class="p-4 p-md-3  mt-5">
  <div class="container">
    <div class="card border-light-subtle shadow-sm" style=" background-color: #333;">
      <div class="row g-0">
        <div class="col-12 col-md-6 text-bg-success d-flex align-items-center justify-content-center">
          <div class="text-center">
            <h2 class="h3 mb-3">Register for Exclusive Access</h2>
            <p class="lead mb-4">Sign up to join our community and explore our premium collections.</p>
            <img class="img-fluid rounded mb-3" loading="lazy" src="img/rolex2.jpg" width="300" height="100" alt="Luxury Watch">
          </div>
        </div>
        <div class="col-12 col-md-6">
          <div class="card-body p-3">
            <div class="mb-4">
              <h3  class="form-label text-warning" style="text-align:center;">Register</h3>
              
            </div>
            <form>
              <div class="row gy-2">
                <div class="col-12 col-md-6">
                  <label for="first_name" class="form-label text-light">First Name <span class="text-danger">*</span></label>
                  <input type="text" class="form-control " name="first_name" id="first_name"  required>
                </div>
                <div class="col-12 col-md-6">
                  <label for="last_name" class="form-label text-light">Last Name <span class="text-danger">*</span></label>
                  <input type="text" class="form-control " name="last_name" id="last_name"  required>
                </div>
                <div class="col-12">
                  <label for="email" class="form-label text-light">Email <span class="text-danger">*</span></label>
                  <input type="email" class="form-control " name="email" id="email"  required>
                </div>
                <div class="col-12">
                  <label for="gender" class="form-label text-light">Gender</label>
                  <select class="form-select" name="gender" id="gender">
                    <option value="" ></option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                   
                  </select>
                </div>
                <div class="col-12">
                  <label for="password" class="form-label text-light">Password <span class="text-danger">*</span></label>
                  <input type="password" class="form-control" name="password" id="password" required>
                </div>
                <div class="col-12">
                  <label for="confirm_password" class="form-label text-light">Confirm Password <span class="text-danger">*</span></label>
                  <input type="password" class="form-control" name="confirm_password" id="confirm_password" required>
                </div>
                <div class="col-12">
                  <div class="d-grid">
                    <button class="btn bsb-btn-lg btn-success" type="submit">Submit</button>
                  </div>
                </div>
              </div>
            </form>
            <div class="row">
              <div class="col-12">
                <hr class="mt-4 mb-3 border-secondary-subtle">
                <div class="d-flex gap-2 flex-column flex-md-row justify-content-md-end">
                 <p class="link-light"> Already have an account? <a href="UserLogin.aspx" class="link-success text-decoration-none">Login</a></pclass="link-success> 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</asp:Content>
