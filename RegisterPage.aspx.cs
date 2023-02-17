using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;

namespace StarWarsCharactersmp
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlMsg = "";
        public string st = "";
        public string yrBorn = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string myTime = DateTime.Now.ToString();
            int year = DateTime.Now.Year;
            int from = year - 60;
            int to = year - 3;

            for (int y = from; y < to; y++)
            {
                if(y == year - 16)
                {
                    yrBorn += "<option style = 'width:305px; text-align:center;' value='" + y + "'selected>" + "- " + y + " -" + "</option>";
                }
                else
                {
                    yrBorn += "<option style = 'width:305px; text-align:center;' value='" + y + "'>" + "- " + y + " -" + "</option>";
                }
            }

            if (Request.Form["submit"] == null)
            {
                return;
            }


            string fileName = "usersDataBase.mdf";
            string tableName = "usersTable";

            st += "<table dir = 'ltr' border = '1' style=\"margin-left: auto; margin-right: auto;\">";
            st += "<tr> <th colspan='2'>The Incoming Details</th></tr>";

            string uName = Request.Form["uName"];
            string fName = Request.Form["fName"];
            string lName = Request.Form["lName"];
            string email = Request.Form["email"];
            string gender = Request.Form["gender"];
            string prefix = Request.Form["Prefix"];
            string phoneNum = Request.Form["phoneNum"];
            string passWord = Request.Form["PassWord"];
            string yearBorn = Request.Form["YearBorn"];
            string city = Request.Form["city"];
            string hobbies = Request.Form["hobies"];

            char hob1 = 'F';
            char hob2 = 'F';
            char hob3 = 'F';

            if(hobbies != null)
            {
                hobbies = Request.Form["hobies"].ToString();

                if (hobbies.Contains('1')) hob1 = 'T';
                if (hobbies.Contains('2')) hob2 = 'T';
                if (hobbies.Contains('3')) hob3 = 'T';

            }

            int yBorn = int.Parse(yearBorn);


            st += "<tr><td>User Name: </td><td>" + uName + "</td></tr>";
            st += "<tr><td>First Name: </td><td>" + fName + "</td></tr>";
            st += "<tr><td>Last Name: </td><td>" + lName + "</td></tr>";
            st += "<tr><td>Email: </td><td>" + email + "</td></tr>";
            st += "<tr><td>Gender: </td><td>" + gender + "</td></tr>";
            st += "<tr><td>Phone Number: </td><td>" + prefix + '-' + phoneNum + "</td></tr>";
            st += "<tr><td>Password: </td><td>" + passWord + "</td></tr>";
            st += "<tr><td>Year Born: </td><td>" + yearBorn + "</td></tr>";
            st += "<tr><td>City: </td><td>" + city + "</td></tr>";
            st += "<tr><td>Trilogy Liked: </td><td>";
            if(hob1 == 'T')
            {
                st += "Original ";
            }
            if (hob2 == 'T')
            {
                st += "Prequel ";
            }
            if (hob3 == 'T')
            {
                st += "Sequel ";
            }
            st += "</td></tr>";
            st += "</table>";


            // -------------------------------------

            string sqlSelect = $"SELECT * FROM {tableName} WHERE uName = '{uName}'";
            if (Helper.IsExist(fileName, sqlSelect))
            {
                msg = "User Name has been taken";
                sqlMsg = sqlSelect;
            }
            else
            {
                string sqlInsert = "INSERT INTO " + tableName;
                sqlInsert += " VALUES ('" + uName + "', N'" + fName + "', N'" + lName + "', '";
                sqlInsert += email + "', '" + prefix + "', '" + phoneNum + "', ";
                sqlInsert += yearBorn + ", '" + gender + "', N'" + city + "', '" + passWord + "', '" + hob1 + "', '" + hob2 + "', '" + hob3 + "')";

                sqlMsg = sqlInsert;

                Helper.DoQuery(fileName, sqlInsert);
                msg = "Succses! New user has been added to the Users Table";
            }

        }
    }
}