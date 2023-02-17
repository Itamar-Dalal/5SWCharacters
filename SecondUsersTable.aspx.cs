using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StarWarsCharactersmp
{
    public partial class SecondUsersTable : System.Web.UI.Page
    {
        public string st = "";
        protected string msg = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDataBase.mdf";
            string tableName = "usersTable";

            sqlSelect = $"SELECT uName, yearBorn, city FROM {tableName}";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            int length = table.Rows.Count;

            if (length == 0)
            {
                msg = "No one has registered";
            }

            else
            {
                st += "<tr>";
                st += "<th>User Name</th>";
                st += "<th>Year Born</th>";
                st += "<th>City</th>";
                st += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += "<td>" + table.Rows[i]["uName"] + "</td>";
                    st += "<td>" + table.Rows[i]["yearBorn"] + "</td>";
                    st += "<td>" + table.Rows[i]["city"] + "</td>";
                    st += "</tr>";

                    msg = $"{length} pepole has registered according to the query";
                }
            }
        }
    }
}