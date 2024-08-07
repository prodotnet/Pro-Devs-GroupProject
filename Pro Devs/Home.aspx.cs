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
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetProducts();
            }

        }


        private void GetProducts()
        {
            ServiceClient SC = new ServiceClient();

            string Display = "";

            dynamic Products = SC.GetAllProducts();

            if (Products != null)
            {
                foreach (Product p in Products)
                {
                    Display += "<div class='col-md-4 mb-4'>";
                    Display += " <div class='watch-card text-center'>";
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


    }
}


 
 
          