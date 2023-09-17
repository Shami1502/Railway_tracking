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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Btn1_Click(object sender, EventArgs e)
        {
            try
            {
                Railway_Tracking.Entities.User user = new Railway_Tracking.Entities.User();
                user.UserName = TextBox3.Text;
                user.UserPhone = TextBox7.Text;
                user.EmailAddress = TextBox6.Text;
                user.UserPassword = TextBox8.Text;
                user.Address = TextBox9.Text;
                user.City = TextBox10.Text;
                user.Country = TextBox11.Text;
                DataRepository.UserProvider.Insert(user);

            }
            catch (Exception exp)
            {
                throw;
            }
        }
    }
}