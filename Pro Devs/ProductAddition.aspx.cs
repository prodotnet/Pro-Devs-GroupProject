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

               string urlas = "img/";
            
                // Create a new product object
                Product addProduct = new Product
                {
                    Name = txtName.Text,
                    Description = txtDescription.Text,
                    Price = Convert.ToDecimal(txtPrice.Text),
                    Category = ddlCategory.SelectedValue,
                    ImageUrl_ = urlas+fileUploadImage.FileName
                };

                bool result = SC.AddProduct(addProduct);

             try
             {



                if (result)
                {
                    
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Product added successfully')", true);
                   

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