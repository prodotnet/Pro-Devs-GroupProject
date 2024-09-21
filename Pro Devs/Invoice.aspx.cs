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
            if (Session["UserId"] == null)
            {
                Response.Redirect("UserLogin.aspx");
                return;
            }
            if (!IsPostBack)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                LoadInvoice(userId);
            }


        }

      

        private void LoadInvoice(int userId)
        {
            dynamic invoice = Client.GetInvoiceDetails(userId);

            if (invoice != null)
            {
                lblName.Text = Session["Name"]?.ToString() ?? "N/A";
                lblSurname.Text = Session["Surname"]?.ToString() ?? "N/A";
                lblEmail.Text = Session["Email"]?.ToString() ?? "N/A";

                lblInvoiceDate.Text = invoice.Date.ToString("d");

                dynamic invoiceItems = Client.GetInvoiceItems(invoice.Id);

                if (invoiceItems == null || invoiceItems.Length == 0)
                {
                    lblError.Text = "No items found for this invoice.";
                    lblError.Visible = true;
                }
                else
                {



                    string display = "";
                    foreach (var item in invoiceItems)
                    {
                        display += "<tr class='text-success'>";
                        display += "<td>" + item.Name + "</td>";
                        display += "<td>" + item.Quantity + "</td>";
                        display += $"<td>R{(item.Price * item.Quantity):F2}</td>";
                        display += "</tr>";
                    }




                    InvoiceRecord.InnerHtml = display; 
                    lblTotalAmount.Text = $"R{invoice.TotalAmount:F2}"; 
                }
            }
            else
            {
                lblError.Text = "No invoice found.";
                lblError.Visible = true;
            }
        }


        protected void btnContinueShopping_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Products.aspx");
        }

        protected void DownloadInvoice_Click(object sender, EventArgs e)
        {
            
        }
       
    }
}