using Pro_Devs.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pro_Devs
{
    public partial class Dashboard : System.Web.UI.Page
    {
        ServiceClient Client = new ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayReportData();
            }
        }

        private void DisplayReportData()
        {
            
            int totalProductsSold = Client.GetTotalProductsSold();
            int totalOrders = Client.GetTotalOrdersPlaced();
            int ProductInSock = Client.GetProductsInSockCount();
            int registeredUsersToday = Client.GetRegisteredUsersCountByDate(DateTime.Today);




            // Displaying data on the page
            lblTotalProductsSold.Text = totalProductsSold.ToString();
            lblRegisteredUsersToday.Text = registeredUsersToday.ToString();
            lblTotalOrders.Text = totalOrders.ToString();
            lblAvailableStock.Text = ProductInSock.ToString();

        }
    }
}