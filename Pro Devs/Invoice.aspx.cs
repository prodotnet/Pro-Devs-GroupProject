using Pro_Devs.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pro_Devs
{
    public partial class Invoice : System.Web.UI.Page
    {
        ServiceClient Client = new ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int invoiceId;
                if (int.TryParse(Request.QueryString["invoiceId"], out invoiceId))
                {
                   // DisplayInvoice(invoiceId);
                }
                else
                {
                    lblInvoiceDetails.Text = "Invalid invoice ID.";
                }
            }
        }


        /**
        private void DisplayInvoice(int invoiceId)
        {
            var invoice = Client.Checkout(invoiceId); 

            if (invoice != null)
            {
                lblInvoiceDetails.Text = $"Invoice ID: {invoice.Id}<br />" +
                                         $"Date: {invoice.Date}<br />" +
                                         $"Total Amount: R{invoice.TotalAmount:F2}<br />" +
                                         $"<h5>Items:</h5>";

                foreach (var item in invoice.CartItems)
                {
                    lblInvoiceDetails.Text += $"Product: {item.Product.Name} - " +
                                              $"Quantity: {item.Quantity} - " +
                                              $"Price: R{item.Price:F2}<br />";
                }
            }
            else
            {
                lblInvoiceDetails.Text = "Invoice not found.";
            }
        }**/
    }
}