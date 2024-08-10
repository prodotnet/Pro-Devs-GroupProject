using Pro_Devs.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pro_Devs
{
    public partial class ProductAddition : System.Web.UI.Page
    {
        ServiceClient SC = new ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            try
            {
                // Create a new product object
                Product addProduct = new Product
                {
                    Name = txtName.Text.Trim(),
                    Description = txtDescription.Text.Trim(),
                    Price = decimal.Parse(txtPrice.Text.Trim()),
                    Category = ddlCategory.SelectedValue,
                    ImageUrl_ = txtImageUrl.Text.Trim()
                };

                bool result = SC.AddProduct(addProduct);

                if (result)
                {
                    lblMessage.Text = "Product added successfully!";
                    lblErrorMessage.Text = "";
                }
                else
                {
                    lblMessage.Text = "";
                    lblErrorMessage.Text = "Failed to add the product. Please try again.";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "";
                lblErrorMessage.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}