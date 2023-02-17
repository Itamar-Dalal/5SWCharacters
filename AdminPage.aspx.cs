using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StarWarsCharactersmp
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<h3 style='text-align:center; color: crimson'>You are not an administrator, You don't have permission to visit this page </h3>";
                msg += "<a href='5SWCharacters.aspx'>Go Back</a>";
            }
            else
            {
                msg += "<h3 style='text-align: center;'><a href='UsersTablePage.aspx'>Users Table</a></h3>";
                msg += "<br/>";
                msg += "<br />\n<h3 style='text-align: center;'><a href='ComplexQuery.aspx'>Complex Query</a></h3>";
                msg += "<br />\n<ul style='text-align: center; list-style-type: none;'>";
                msg += "\n<li> <a href='SecondUsersTable.aspx'>Select the user name, year of birth, and city</a> </li>";
                msg += "<br/>";
                msg += "\n\n<li> <a href='ThirdUsersTable.aspx'>Select users whose city is Herzeliya</a> </li>";
                msg += "<br/>";
                msg += "\n\n<li> <a href='FourthUsersTable.aspx'>Select users with prefix 054</a> </li>";
                msg += "<br/>";
                msg += "\n\n<li> <a href='FifthUsersTable.aspx'>Select users whose last name starts with \'D\'</a> </li>";
                msg += "<br/>";
                msg += "\n\n<li> <a href='SixthUsersTable.aspx'>Select users whose first name contains the letter \'M\'</a> </li>";
                msg += "<br/>";
                msg += "\n\n<li> <a href='SeventhUsersTable.aspx'>Select users who like both original and sequel</a> </li>";
                msg += "<br/>";
                msg += "\n\n<li> <a href='EighthUsersTable.aspx'>Select users who do not like prequel and whose year of birth is 2007 or whose last name contains the letter \'D\'</a> </li>";
                msg += "<br/>";
                msg += "\n</ul>";
            }
        }
    }
}