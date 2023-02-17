<%@ Page Title="" Language="C#" MasterPageFile="~/SWCharactersmp.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="StarWarsCharactersmp.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="Scripts/Login.js"></script>

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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" id="Form" runat="server" onsubmit = "return checkForm();" onreset="return clrForm()">
        <table style="margin-left: auto; margin-right: auto; border-collapse: separate; border-spacing: 1.2em; background-image: url('Images/BackgroundOfRagister.jpg')">
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;" colspan="8">
                    <h2 style="text-align: center; text-shadow: 1.5px 1.5px #ffd6c9; font-size: 50px">User Login</h2>
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">User Name</td>
                <td style="border-style: hidden; text-align: center;">
                    <input class="input1" placeholder="Enter User Name..." type="text" id="uName" name="uName" size="40" />
                    <br />
                    <input type="text" id="mUName" size="31" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Password</td>
                <td style="border-style: hidden; text-align: center;">
                    <input placeholder="Enter Password..." class="input1" type="password" id="pw" name="pw" size="40" />
                    <br />
                    <input type="text" id="mPassWord" size="15" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td colspan="8" style="text-align: center; border-style: hidden;">
                    <input class="input1" type="submit" name="submit" value="submit" />
                    &nbsp;&nbsp;&nbsp;
                    <input class="input1" type="reset" name="clear" value="clear" />
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td colspan="8" style="text-align: center; border-style: hidden;">Don't have an account yet? <a href="RegisterPage.aspx">Register</a> now</td>
            </tr>
        </table>
        <br />
        <div style="width: fit-content; margin: 0 auto;">
            <h3 style="text-align:center; color: crimson; background-color: silver; font-weight: bold; border-radius: 7px; padding-left:5px; padding-right: 5px">
                <%= msg %>
            </h3>
        </div>
        <br />
    </form>
</asp:Content>
