using Pro_Devs.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;

namespace Pro_Devs
{
    public partial class Cart : System.Web.UI.Page
    {
        ServiceClient Client = new ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("UserLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                DisplayCart();
            }
        }

        private void DisplayCart()
        {

           

                var userId = Convert.ToInt32(Session["UserId"]);
                string display = "";
                decimal totalAmount = 0;

            try
            {



                var cartItems = Client.GetCartItems(userId);
                if (cartItems == null || !cartItems.Any())
                {
                    ShoppingCart.InnerHtml = "<tr><td colspan='5' class='text-center text-warning'>Your cart is empty.</td></tr>";
                    TotalAmount.InnerText = "Total Amount: R0.00";
                    return;
                }
                else
                {
                    foreach (var item in cartItems)
                    {
                        totalAmount += item.Price * item.Quantity;
                        display += "<tr class='text-success'>";
                        display += $"<td><img src='{item.ImageUrl}' alt='{item.Name}' style='width:100px;height:auto;' /></td>";
                        display += $"<td>{item.Name}</td>";
                        display += $"<td>R{item.Price:F2}</td>";
                        display += $"<td>";
                        display += $"<form method='post' action='cart.aspx' style='display:inline;'>";
                        display += $"<input type='hidden' name='action' value='update' />";
                        display += $"<input type='hidden' name='productId' value='{item.ProductId}' />";
                        display += $"<input type='hidden' name='quantity' value='{Math.Max(item.Quantity - 1, 0)}' />";
                        display += $"<button type='submit' class='btn btn-warning btn-sm'>-</button>";
                        display += $"</form>";
                        display += $"<span style='margin:0 10px;'>{item.Quantity}</span>";
                        display += $"<form method='post' action='cart.aspx' style='display:inline;'>";
                        display += $"<input type='hidden' name='action' value='update' />";
                        display += $"<input type='hidden' name='productId' value='{item.ProductId}' />";
                        display += $"<input type='hidden' name='quantity' value='{item.Quantity + 1}' />";
                        display += $"<button type='submit' class='btn btn-success btn-sm'>+</button>";
                        display += $"</form>";
                        display += $"</td>";
                        display += $"<td><a href='Cart.aspx?removeId={item.ProductId}' class='btn btn-danger btn-sm'>Remove</a></td>";
                        display += "</tr>";
                    }

                    ShoppingCart.InnerHtml = display;
                    TotalAmount.InnerText = $"Total Amount: R{totalAmount:F2}";
                }

            }
            catch (Exception ex)
            {
                return;
            }

            
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Request.QueryString["removeId"] != null)
            {
                int removeID = Convert.ToInt32(Request.QueryString["removeId"]);
                RemoveFromCart(removeID);
                Response.Redirect("Cart.aspx");
            }

            if (Request.Form["action"] == "update")
            {
                int productId = Convert.ToInt32(Request.Form["productId"]);
                int quantity = Convert.ToInt32(Request.Form["quantity"]);
                UpdateQuantity(productId, quantity);
                Response.Redirect("Cart.aspx");
            }
        }

        private void RemoveFromCart(int prodID)
        {
            var userId = Convert.ToInt32(Session["UserId"]);
            Client.RemoveFromCart(userId, prodID);
        }

        private void UpdateQuantity(int productId, int quantity)
        {
            var userId = Convert.ToInt32(Session["UserId"]);
            if (quantity > 0)
            {
                Client.UpdateCart(userId, productId, quantity);
            }
            else
            {
                RemoveFromCart(productId);
            }
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            var userId = Convert.ToInt32(Session["UserId"]);
            var invoice = Client.Checkout(userId);

            if (invoice != null)
            {
                Response.Redirect("OrderConfirmation.aspx");
            }
            else
            {
                lblError.Text = "An error occurred during checkout. Please try again.";
                lblError.Visible = true;
            }
        }
    }
}
