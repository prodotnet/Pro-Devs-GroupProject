using Pro_Devs.ServiceReference1;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pro_Devs
{
    public partial class Cart : System.Web.UI.Page
    {
         ServiceClient SC = new ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserId"] == null)
            {
                Response.Redirect("UserLogin.aspx");
                return;
            }


            string Display = "";

            if (!IsPostBack)
            {

               if (Request.QueryString["Id"] != null)
               {


                 int prodID = Convert.ToInt32(Request.QueryString["Id"]);



                   var product = SC.GetProduct(prodID);


                   if (product != null)
                   {
                        Display += "<tr class='text-success'>";
                        Display += "<td><img src='" + product.ImageUrl_ + "' alt='" + product.Name + "' style='width:100px;height:auto;' /></td>";
                        Display += "<td>" + product.Name + "</td>";
                        Display += "<td>" + product.Price + "</td>";
                        Display += "<td>";
                        Display += "<button type='button' onclick='changeQuantity(-1, " + product.Id + ")' class='btn btn-warning btn-sm'>-</button>";
                        Display += "<span id='quantity_" + prodID + "' style='margin:0 10px;'>1</span>";
                        Display += "<button type='button' onclick='changeQuantity(1, " + product.Id + ")' class='btn btn-success btn-sm'>+</button>";
                        Display += "</td>";
                        Display += "<td><a href='#' class='btn btn-danger btn-sm'>Remove</a></td>";
                        Display += "</tr>";


                        ShoppingCart.InnerHtml = Display;

                    }

               }
           

            }
        }



    }
}
