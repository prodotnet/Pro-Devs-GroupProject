using Pro_Devs.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pro_Devs
{
    public partial class Cart : System.Web.UI.Page
    {
        ServiceClient SC = new ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                int productId;
                if (int.TryParse(Request.QueryString["Id"], out productId))
                {
                    AddToCart(productId);
                }
                else
                {
                    Response.Write("Invalid product ID.");
                }
            }

            if (!IsPostBack)
            {
                LoadCartItems();
            }
        }

        private void AddToCart(int productId)
        {
            int userId;
            if (int.TryParse(Session["UserId"]?.ToString(), out userId))
            {
               
                bool result = SC.AddToCart(userId, productId, 1);

                if (!result)
                {
                    // Display error message if adding to cart fails
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Failed to add the product to the cart')", true);
                }
                else
                {
                    // Redirect to refresh the cart page
                    Response.Redirect("Cart.aspx");
                }
            }
            else
            {
                // Redirect to login page if user is not logged in
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please login ')", true);
                Response.Redirect("UserLogin.aspx");
            }
        }

        private void LoadCartItems()
        {
            int userId;
            if (int.TryParse(Session["UserId"]?.ToString(), out userId))
            {
                try
                {
                    // Fetch cart items using the WCF service
                    CartItem[] cartItemsArray = SC.GetCartItems(userId);

                    // Convert the array to a List
                    List<CartItem> cartItems = new List<CartItem>(cartItemsArray);

                 
                    var cartItemsWithProducts = cartItems.Select(item =>
                    {
                        Product product = SC.GetProduct(item.ProductId);
                        return new
                        {
                            ImageUrl_ = product?.ImageUrl_,
                            Name = product?.Name,
                            Quantity = item.Quantity,
                            Price = product?.Price,
                            Total = (product?.Price ?? 0) * item.Quantity
                        };
                    }).ToList();


                    ProductsRepeater.DataSource = cartItemsWithProducts;
                    ProductsRepeater.DataBind();
                }
                catch (Exception ex)
                {
                   
                    string errorMessage = "An error occurred while loading cart items.";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('{errorMessage}');", true);
                }
            }
            else
            {
                
                string alertMessage = "User not logged in.";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('{alertMessage}');", true);
                Response.Redirect("UserLogin.aspx");
            }
        }



    }
}
