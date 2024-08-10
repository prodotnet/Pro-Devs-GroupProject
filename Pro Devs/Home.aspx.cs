using Pro_Devs.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pro_Devs
{
    public partial class Home : System.Web.UI.Page
    {


        ServiceClient SC = new ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetProducts();
            }
           

        }


        //The method  that dynamically  get  products from the database
        private void GetProducts()
        {
           

            string Display = "";

            dynamic Products = SC.GetAllProducts();

            if (Products != null)
            {
                foreach (Product p in Products)
                {
                    Display += "<div class='col-md-4 mb-4'>";
                    Display += "<div class='watch-card text-center'>";
                    Display += "<img src=" + p.ImageUrl_ + " class='img-fluid' + alt='Smart Watch 1'>";
                    Display += "<div class='watch-content'>";
                    Display += "<h5 class='text-success'>" + p.Name + "</h5>";
                    Display += "<p class='text-warning'> R" + p.Price + "</p>";
                    Display += "<p class='text-warning'>★★★☆☆</p>";
                    Display += "<p class='text-description'>" + p.Description + "</p>";
                    Display += "<a href='#'class='btn btn-success'>Add to Cart</a>";
                    Display += "</div>";
                    Display += "</div>";
                    Display += "</div>";

                }

                AllProducts.InnerHtml = Display;
            }
        }


       
        //The method to get the products from the database and sort them according to thier catagory
        private void ShowProducts(string category)
        {
           
            var products = SC.GetProductsByCategory(category);

            if (products != null)
            {
                string Display = "";

                foreach (Product p in products)
                {
                    Display += "<div class='col-md-4 mb-4'>";
                    Display += "<div class='watch-card text-center'>";
                    Display += "<img src='" + p.ImageUrl_ + "' class='img-fluid' alt='Smart Watch'>";
                    Display += "<div class='watch-content'>";
                    Display += "<h5 class='text-success'>" + p.Name + "</h5>";
                    Display += "<p class='text-warning'> R" + p.Price + "</p>";
                    Display += "<p class='text-warning'>★★★☆☆</p>";
                    Display += "<p class='text-description'>" + p.Description + "</p>";
                    Display += "<a href='#'class='btn btn-success'>Add to Cart</a>";
                    Display += "</div>";
                    Display += "</div>";
                    Display += "</div>";
                }

                AllProducts.InnerHtml = Display;

            }
        }


        //This is the button to display all produts to the user
        protected void btnAll_Click(object sender, EventArgs e)
        {
            GetProducts();
        }


        //This is the button to display all SmartWatches to the user
        protected void btnSmartWatches_Click(object sender, EventArgs e)
        {
            ShowProducts("Smart Watches");
        }

        //This is the button to display all Rolex to the user
        protected void btnRolex_Click(object sender, EventArgs e)
        {
            ShowProducts("Rolex");
        }

        //This is the button to display all Omega to the user
        protected void btnOmega_Click(object sender, EventArgs e)
        {
            ShowProducts("Omega");
        }
    }
}


 
 
          