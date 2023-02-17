<%@ Page Title="" Language="C#" MasterPageFile="~/SWCharactersmp.Master" AutoEventWireup="true" CodeBehind="ComplexQuery.aspx.cs" Inherits="StarWarsCharactersmp.ComplexQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .input1 {
            border: 2px solid #e8e8e8;
            padding: 15px;
            border-radius: 10px;
            background-color: #212121;
            font-size: small;
            font-weight: bold;
            color: #e8e8e8;
            text-align: center;
        }

            .input1:focus {
                outline-color: white;
                background-color: #212121;
                color: #e8e8e8;
                box-shadow: 5px 5px #888888;
            }
    </style>

    <script src="Scripts/ComplexQuery.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" id="Form" runat="server" onsubmit="return chkForm();" onreset="return clrForm()">
        <table style="margin-left: auto; margin-right: auto; border-collapse: separate; border-spacing: 1.2em; background-image: url('Images/BackgroundOfRagister.jpg')">
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;" colspan="8">
                    <h2 style="text-align: center; text-shadow: 1.5px 1.5px #ffd6c9; font-size: 50px">Complex Query</h2>
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden; width: 20px;" dir="ltr">
                    <select name="field1" id="field1" onclick="detectField1();" style="position: relative; left: 0px;" class="input1">
                        <option value="uName">User Name</option>
                        <option value="fName">First Name</option>
                        <option value="lName">Last Name</option>
                        <option value="email">Email</option>
                        <option value="prefix">Prefix</option>
                        <option value="phone">Phone</option>
                        <option value="yearBorn">Year Born</option>
                        <option value="YearFrom">From Year</option>
                        <option value="gender">Gender</option>
                        <option value="city">City</option>
                        <option value="password">Password</option>
                        <option value="hobies">Trilogy Liked</option>
                    </select>
                </td>
                <td style="width: 300px; border-style: hidden">
                    <div id="query1" style="text-align: center; color: #e8e8e8"></div>
                </td>
            </tr>

            <tr>
                <td style="border-style: hidden; color: #e8e8e8;">
                    <input type="radio" name="op" value="and" checked="checked">
                    AND 
                    <br />
                    <input type="radio" name="op" value="or">
                    OR 
                </td>
            </tr>

            <tr style="border-style: hidden;">
                <td style="border-style: hidden; width: 20px;" dir="ltr">
                    <select name="field2" id="field2" onclick="detectField2();" style="position: relative; left: 0px;" class="input1">
                        <option value="uName">User Name</option>
                        <option value="fName">First Name</option>
                        <option value="lName">Last Name</option>
                        <option value="email">Email</option>
                        <option value="prefix">Prefix</option>
                        <option value="phone">Phone</option>
                        <option value="yearBorn">Year Born</option>
                        <option value="YearTo">To Year</option>
                        <option value="gender">Gender</option>
                        <option value="city">City</option>
                        <option value="password">Password</option>
                        <option value="hobies">Trilogy Liked</option>
                    </select>
                </td>
                <td style="width: 300px; border-style: hidden">
                    <div id="query2" style="text-align: center; color: #e8e8e8"></div>
                </td>
            </tr>

            <tr style="border-style: hidden;">
                <td colspan="8" style="text-align: center; border-style: hidden;">
                    <input class="input1" type="submit" name="submit" value="Search" />
                    &nbsp;&nbsp;&nbsp;
                    <input class="input1" type="reset" name="clear" value="clear" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <h2 style="text-align: center; direction: ltr;"><%= sql %></h2>
        <table border="1" align="center">
            <%= st %>
        </table>

        <h3 style="text-align:center;">
            <%= msg %>
        </h3>
        <br />
    </form>
</asp:Content>
