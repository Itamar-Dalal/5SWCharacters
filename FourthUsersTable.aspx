<%@ Page Title="" Language="C#" MasterPageFile="~/SWCharactersmp.Master" AutoEventWireup="true" CodeBehind="FourthUsersTable.aspx.cs" Inherits="StarWarsCharactersmp.FourthUsersTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1, h2, table{
            text-align: center;
        }

        h3{
            position: absolute;
            left: 700px;
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h1> Users Table </h1>

    <h2> <%= sqlSelect %> </h2>

    <table border="1" align="center">
        <%= st %>
    </table>

    <h3 style="position:absolute; left: 500px;">
        <%= msg %>
    </h3>

    <div class="row" style="text-align:center; z-index:0; position: absolute; bottom: 160px; left: 200px; right: 200px; font-size: 23px">
          <ul id="menu">
                <li> <a href="SecondUsersTable.aspx" title="Select the user name, year of birth, and city">Second Query</a> </li>
                <li> <a href="ThirdUsersTable.aspx" title="Select users whose city is Herzeliya">Third Query</a> </li>
                <li> <a href="FourthUsersTable.aspx" title="Select users with prefix 054">Fourth Query</a> </li>
                <li> <a href="FifthUsersTable.aspx" title="Select users whose last name starts with 'D'">Fifth Query</a> </li>
                <li> <a href="SixthUsersTable.aspx" title="Select users whose first name contains the letter 'M'">Sixth Query</a> </li>
                <li> <a href="SeventhUsersTable.aspx" title="Select users who like both original and sequel">Seventh Query</a> </li>
                <li> <a href="EighthUsersTable.aspx" title="Select users who do not like prequel and whose year of birth is 2007 or whose last name contains the letter 'D'">Eighth Query</a> </li>
          </ul>
    </div>
</asp:Content>
