using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.ModelBinding;

namespace StarWarsCharactersmp
{
    public partial class ComplexQuery : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string field1 = Request.Form["field1"];
            string field2 = Request.Form["field2"];

            string value1 = Request.Form["value1"];
            string value2 = Request.Form["value2"];

            string op = Request.Form["op"];

            string fileName = "usersDataBase.mdf";
            string tableName = "usersTable";

            string qry1 = "", qry2 = "";

            if (value1 != null)
            {
                if (field1 == "gender" || field1 == "prefix")
                {
                    qry1 = field1 + " = '" + value1 + "'";
                }

                else if (field1 == "yearBorn")
                {
                    qry1 = field1 + " = " + value1;
                }

                else if (field1 == "YearFrom")
                {
                    qry1 = "yearBorn" + " >= " + value1;
                }

                else if (field1 == "hobies")
                {
                    var val1 = int.Parse(value1);
                    switch (val1)
                    {
                        case 1: field1 = "original"; break;
                        case 2: field1 = "prequel"; break;
                        case 3: field1 = "sequel"; break;
                    }
                    qry1 = field1 + " = 'T'";
                }

                else if (field1 == "email")
                {
                    qry1 = field1 + " like '%" + value1 + "%'";
                }

                else
                {
                    qry1 = field1 + " like N'" + value1 + "%'";
                }
            }

            if (value2 != null)
            {
                if (field2 == "gender" || field2 == "prefix")
                {
                    qry2 = field2 + " = '" + value2 + "'";
                }

                else if (field2 == "yearBorn")
                {
                    qry2 = field2 + " = " + value2;
                }

                else if (field2 == "YearTo")
                {
                    qry2 = "yearBorn" + " <= " + value2;
                }

                else if (field2 == "hobies")
                {
                    var val2 = int.Parse(value2);
                    switch (val2)
                    {
                        case 1: field2 = "original"; break;
                        case 2: field2 = "prequel"; break;
                        case 3: field2 = "sequel"; break;
                    }
                    qry2 = field2 + " = 'T'";
                }

                else if (field2 == "email")
                {
                    qry2 = field2 + " like '%" + value2 + "%'";
                }

                else
                {
                    qry2 = field2 + " like N'" + value2 + "%'";
                }
            }

            string sqlSelect = $"SELECT * FROM {tableName}";
            if (qry1 != "" || qry2 != "")
            {
                if (qry1 != "" && qry2 == "")
                {
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE " + qry1;
                }
                else
                {
                    if (qry1 == "" && qry2 != "")
                    {
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE " + qry2 ;

                    }
                    else
                    {
                        if (op == "and")
                        {
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE " + qry1 + " AND " + qry2 ;
                        }
                        else
                        {
                            sqlSelect = "SELECT * FROM " + tableName + " WHERE " + qry1 + " OR " + qry2 ;
                        }
                    }
                }
            }
            sql = sqlSelect;

            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            int length = table.Rows.Count;
            if (length == 0)
            {
                msg = "No users were found matching the search";
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
                }
                msg = $"{length} pepole has registered according to the query";
            }
        }
    }
}