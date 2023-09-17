using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Railway_Tracking.Entities;
using Railway_Tracking.Data;

namespace Railway_Tracking_System
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                Railway_Tracking.Entities.User table = new Railway_Tracking.Entities.User();
                table.UserName = TextBox21.Text;
                table.UserPhone = TextBox22.Text;
                table.EmailAddress=TextBox23.Text;
                DataRepository.UserProvider.Insert(table);
            }
            catch (Exception exp)
            {
                throw;
            }
        }
    }
}