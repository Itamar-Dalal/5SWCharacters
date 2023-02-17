using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StarWarsCharactersmp
{
    public partial class EighthUsersTable : System.Web.UI.Page
    {
        public string st = "";
        protected string msg = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDataBase.mdf";
            string tableName = "usersTable";

            sqlSelect = $"SELECT * FROM {tableName} WHERE prequel LIKE '%F%' OR yearBorn LIKE '%2007%' AND lName LIKE '%d%'";
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
                st += "<th>First Name</th>";
                st += "<th>Last Name</th>";
                st += "<th>Email</th>";
                st += "<th>Prefix</th>";
                st += "<th>Phone Number</th>";
                st += "<th>Year Born</th>";
                st += "<th>Gender</th>";
                st += "<th>City</th>";
                st += "<th>Password</th>";
                st += "<th>Original</th>";
                st += "<th>Prequel</th>";
                st += "<th>Sequel</th>";
                st += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += "<td>" + table.Rows[i]["uName"] + "</td>";
                    st += "<td>" + table.Rows[i]["fName"] + "</td>";
                    st += "<td>" + table.Rows[i]["lName"] + "</td>";
                    st += "<td>" + table.Rows[i]["email"] + "</td>";
                    st += "<td>" + table.Rows[i]["prefix"] + "</td>";
                    st += "<td>" + table.Rows[i]["phone"] + "</td>";
                    st += "<td>" + table.Rows[i]["yearBorn"] + "</td>";
                    st += "<td>" + table.Rows[i]["gender"] + "</td>";
                    st += "<td>" + table.Rows[i]["city"] + "</td>";
                    st += "<td>" + table.Rows[i]["password"] + "</td>";
                    st += "<td>" + table.Rows[i]["original"] + "</td>";
                    st += "<td>" + table.Rows[i]["prequel"] + "</td>";
                    st += "<td>" + table.Rows[i]["sequel"] + "</td>";
                    st += "</tr>";

                    msg = $"{length} pepole has registered according to the query";
                }
            }
        }
    }
}