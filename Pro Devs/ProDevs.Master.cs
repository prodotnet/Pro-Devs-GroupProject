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
                int ID = Convert.ToInt32(Session["UserId"]);

                if (ID == 0)
                {
                    // User is not logged in
                    Login.Visible = true;
                    Logout.Visible = false;
                    ProductMange.Visible = false;
                }
                else
                {
                    // User is logged in
                    Login.Visible = false;
                    Logout.Visible = true;
                    ProductMange.Visible = true;
                }
            }
            else
            {
                // Session is not available
                Login.Visible = true;
                Logout.Visible = false;
                ProductMange.Visible = false;
            }
        }

    }
    
}