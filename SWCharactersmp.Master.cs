using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StarWarsCharactersmp
{
    public partial class SWCharactersmp : System.Web.UI.MasterPage
    {
        public string loginMsg;
        public string welcomeMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime currentTime = DateTime.Now;
            lblTime.Text = currentTime.ToString("hh:mm:ss tt");

            welcomeMsg = "Welcome ";
            welcomeMsg += Session["userFName"].ToString();
            if (Session["admin"].ToString() == "yes")
            {
                loginMsg += "<a href='AdminPage.aspx'>Admin Page</a><br /><br /><br /><br />";
                loginMsg += "<a href='LogoutPage.aspx'>Logout</a><br />";

            }

            else if (Session["uName"].ToString() == "Guest")
            {
                loginMsg += "<a href='LoginPage.aspx'>Login</a><br /><br /><br /><br />";
                loginMsg += "<a href='Registerpage.aspx'>Register</a><br />";
            }
            else
            {
                //loginMsg += "<a href='UpdatePage.aspx'>Update Details</a><br /><br /><br /><br />";
                loginMsg += "Update Details <br /><br /><br /><br />";
                loginMsg += "<a href='LogoutPage.aspx'>Logout</a>";
            }
        }
    }
}