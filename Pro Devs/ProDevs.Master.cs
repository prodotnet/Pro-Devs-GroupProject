using Pro_Devs.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pro_Devs
{
    public partial class ProDevs : System.Web.UI.MasterPage
    {
        ServiceClient SC = new ServiceClient();



        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensure the session value is valid
            if (Session["UserId"] != null)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                string firstName = Session["Name"]?.ToString();
                string lastName = Session["Surname"]?.ToString();

                welcomeMessage.InnerHtml = $"Welcome back, <span class='text-warning' style='font-size: 20px;'>{firstName}</span> <span class='text-warning' style='font-size: 20px;'>{lastName}</span>";



                Login.Visible = false;
                imgId.Visible = false;
                Logout.Visible = true;
                ProductMange.Visible = true;


                // Update cart count
                UpdateCartCount(userId);

            }

        }


        protected void Logout_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Session.Abandon();


            Response.Redirect("Home.aspx");
        }



        private void UpdateCartCount(int userId)
        {
            try
            {
                int cartItemCount = SC.GetCartItemCount(userId); // Assuming this method exists in your service client
                cartCount.InnerText = cartItemCount.ToString();
            }
            catch (Exception ex)
            {
                // Handle exceptions (e.g., log the error)
                cartCount.InnerText = "0"; // Default to 0 if there's an issue
            }
        }
    }

}