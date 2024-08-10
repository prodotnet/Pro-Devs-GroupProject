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
            if (!IsPostBack)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                LoadProducts();


            }


           
        }

        private void LoadProducts()
        {
            var products = SC.GetAllProducts();
            ProductsRepeater.DataSource = products;
            ProductsRepeater.DataBind();
        }
    }
}