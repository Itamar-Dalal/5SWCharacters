using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace StarWarsCharactersmp
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlAdmin = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "yes")
            {
                msg += "You are already an administrator";
            }
            else
            {
                if (Request.Form["submit"] != null)
                {
                    string name = Request.Form["mName"];
                    string pw = Request.Form["mPw"];

                    string fileName = "usersDataBase.mdf";

                    sqlAdmin = $"SELECT * FROM adminTable WHERE (mName = '{name}' AND pw = '{pw}')";

                    DataTable table = Helper.ExecuteDataTable(fileName, sqlAdmin);

                    int length = table.Rows.Count;
                    if (length == 0)
                    {
                        msg = "<div style='text-align:center;'>";
                        msg += "<h3>You are not an administrator, You don't have permission to visit this page</h3>";
                        msg += "</div>";
                    }
                    else
                    {
                        Session["userFName"] = "Admin";
                        Session["admin"] = "yes";
                        Response.Redirect("AdminPage.aspx");
                    }
                }
            }
        }
    }
}