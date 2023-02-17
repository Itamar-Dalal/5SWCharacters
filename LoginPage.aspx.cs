using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace StarWarsCharactersmp
{
    public partial class LoginPage : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string pw = Request.Form["pw"];

                string fileName = "usersDataBase.mdf";
                string tableName = "usersTable";

                sqlLogin = "SELECT * FROM " + tableName + " WHERE uName = '" + uName + "' AND password = '" + pw + "'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                int length = table.Rows.Count;
                if(length == 0)
                {
                    msg = "The User Name or Password is incorrect, please try again";
                }
                else
                {
                    Session["uName"] = table.Rows[0]["uName"];
                    Session["userFName"] = table.Rows[0]["fName"];
                    Response.Redirect("5SWCharacters.aspx");
                }
            }
        }
    }
}