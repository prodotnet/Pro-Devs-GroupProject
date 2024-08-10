using Pro_Devs.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pro_Devs
{
    public partial class ProductDelete : System.Web.UI.Page
    {
        ServiceClient SC = new ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDeleteProduct_Click(object sender, EventArgs e)
        {
            try
            {
                int productId;
                if (int.TryParse(txtProductId.Text.Trim(), out productId))
                {
                    bool result = SC.DeleteProduct(productId);

                    if (result)
                    {
                       
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Product deleted successfully')", true);
                    }
                    else
                    {
                        lblErrorMessage.Text = "Failed to delete the product. Please try again.";
                    }
                }
                else
                {
                    lblErrorMessage.Text = "Invalid product ID.";
                }
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}