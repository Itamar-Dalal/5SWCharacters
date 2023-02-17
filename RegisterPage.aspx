<%@ Page Title="" Language="C#" MasterPageFile="~/SWCharactersmp.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="StarWarsCharactersmp.RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="Scripts/Register.js"></script>

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
    <form method="post" id="Form" runat="server" onsubmit="return chkForm();" onreset="return clrForm()">
        <table style="margin-left: auto; margin-right: auto; border-collapse: separate; border-spacing: 1.2em; background-image: url('Images/BackgroundOfRagister.jpg')">
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;" colspan="8">
                    <h2 style="text-align: center; text-shadow: 1.5px 1.5px #ffd6c9; font-size: 50px">User Registration</h2>
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
                <td style="border-style: hidden;">First Name</td>
                <td style="border-style: hidden; text-align: center;">
                    <input placeholder="Enter First Name..." class="input1" type="text" id="fName" name="fName" size="40" />
                    <br />
                    <input type="text" id="mFName" size="31" style="display: none; font-weight: bold; color: red;" disabled="disabled" />

                </td>

            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Last Name</td>
                <td style="border-style: hidden; text-align: center;">
                    <input placeholder="Enter Last Name..." class="input1" type="text" id="lName" name="lName" size="40" />
                    <br />
                    <input type="text" id="mLName" size="31" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Email</td>
                <td style="border-style: hidden; text-align: center;">
                    <input placeholder="Enter Email..." class="input1" type="text" id="email" name="email" size="40" />
                    <br />
                    <input type="text" id="mEmail" size="11" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Gender</td>
                <td style="border-style: hidden; color: #e8e8e8;">
                    <input type="radio" name="gender" value="male" checked>Male 
                    <input type="radio" name="gender" value="female">
                    Female 
                    <br />
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Phone Number</td>
                <td style="border-style: hidden; color: #e8e8e8; text-align: center;" dir="ltr">
                    <select style="position: relative; left: 0px;" class="input1" id="Prefix" name="Prefix">
                        <option value="Choose">Choose</option>
                        <option value="050">050</option>
                        <option value="052">052</option>
                        <option value="053">053</option>
                        <option value="054">054</option>
                        <option value="055">055</option>
                        <option value="057">057</option>
                        <option value="058">058</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="077">077</option>
                    </select>

                    &nbsp;&nbsp; - &nbsp;&nbsp; 

                    <input placeholder="Enter Phone Number..." class="input1" type="text" name="phoneNum" id="phoneNum" size="18" />
                    <br />
                    <input type="text" id="mPhone" size="40" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Password</td>
                <td style="border-style: hidden; text-align: center;">
                    <input placeholder="Enter Password..." class="input1" type="password" id="passWord" name="passWord" size="40" />
                    <br />
                    <input type="text" id="mPassWord" size="15" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>
            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Verify Password</td>
                <td style="border-style: hidden; text-align: center;">
                    <input placeholder="Enter Password Again..." class="input1" type="password" id="verifyPassword" name="verifyPassword" size="40" />
                    <br />
                    <input type="text" id="mVerifyPassword" size="33" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>

            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Year Born</td>
                <td style="border-style: hidden; text-align: center;">
                    <select class="input1" style="width: 350px;" id="YearBorn" name="YearBorn" value="2007"><%=yrBorn %> </select>
                </td>
            </tr>

            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">City</td>
                <td style="border-style: hidden; text-align: center;">
                    <select class="input1" style="width: 350px;" id="city" name="city">
                        <option style='width: 305px; text-align: center;' value="Choose">Choose</option>
                        <option style='width: 305px; text-align: center;' value="New York">New York</option>
                        <option style='width: 305px; text-align: center;' value="Los Angeles">Los Angeles</option>
                        <option style='width: 305px; text-align: center;' value="Chicago">Chicago</option>
                        <option style='width: 305px; text-align: center;' value="Houston">Houston</option>
                        <option style='width: 305px; text-align: center;' value="Phoenix">Phoenix</option>
                        <option style='width: 305px; text-align: center;' value="Jerusalem">Jerusalem</option>
                        <option style='width: 305px; text-align: center;' value="Tel Aviv">Tel Aviv</option>
                        <option style='width: 305px; text-align: center;' value="Haifa">Haifa</option>
                        <option style='width: 305px; text-align: center;' value="Rishon LeZion">Rishon LeZion</option>
                        <option style='width: 305px; text-align: center;' value="Petah Tikva">Petah Tikva</option>
                        <option style='width: 305px; text-align: center;' value="Ashdod">Ashdod</option>
                        <option style='width: 305px; text-align: center;' value="Beersheba">Beersheba</option>
                        <option style='width: 305px; text-align: center;' value="Netanya">Netanya</option>
                        <option style='width: 305px; text-align: center;' value="Holon">Holon</option>
                        <option style='width: 305px; text-align: center;' value="Bnei Brak">Bnei Brak</option>
                        <option style='width: 305px; text-align: center;' value="Ramat Gan">Ramat Gan</option>
                        <option style='width: 305px; text-align: center;' value="Bat Yam">Bat Yam</option>
                        <option style='width: 305px; text-align: center;' value="Rehovot">Rehovot</option>
                        <option style='width: 305px; text-align: center;' value="Ashkelon">Ashkelon</option>
                        <option style='width: 305px; text-align: center;' value="Modiin">Modiin</option>
                        <option style='width: 305px; text-align: center;' value="Herzliya">Herzliya</option>
                        <option style='width: 305px; text-align: center;' value="Paris">Paris</option>
                        <option style='width: 305px; text-align: center;' value="Rome">Rome</option>
                        <option style='width: 305px; text-align: center;' value="London">London</option>
                        <option style='width: 305px; text-align: center;' value="Barcelona">Barcelona</option>
                        <option style='width: 305px; text-align: center;' value="Berlin">Berlin</option>
                        <option style='width: 305px; text-align: center;' value="Madrid">Madrid</option>
                        <option style='width: 305px; text-align: center;' value="Amsterdam">Amsterdam</option>
                        <option style='width: 305px; text-align: center;' value="Moscow">Moscow</option>
                        <option style='width: 305px; text-align: center;' value="other">Other</option>
                    </select>
                    <input type="text" id="cityInput" name="cityInput" style="display: none;">
                    <br />
                    <input type="text" id="mCity" size="13" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>

            <tr style="border-style: hidden;">
                <td style="border-style: hidden;">Trilogy Liked</td>
                <td style="border-style: hidden; color: #e8e8e8">
                    <input type="checkbox" name="hobies" value="1">
                    Original Trilogy &nbsp;&nbsp;&nbsp;&nbsp;
                    <div />
                    <input type="checkbox" name="hobies" value="2">
                    Prequel Trilogy &nbsp;&nbsp;&nbsp;&nbsp;
                    <div />
                    <input type="checkbox" name="hobies" value="3">
                    Sequel Trilogy &nbsp;&nbsp;&nbsp;&nbsp;
                 <br />
                    <input type="text" id="mHobies" size="13" style="display: none; font-weight: bold; color: red;" disabled="disabled" />
                </td>
            </tr>

            <tr style="border-style: hidden;">
                <td colspan="8" style="text-align: center; border-style: hidden;">
                    <input class="input1" type="submit" name="submit" value="submit" />
                    &nbsp;&nbsp;&nbsp;
                    <input class="input1" type="reset" name="clear" value="clear" />
                </td>
            </tr>
        </table>
    </form>

    <br />

    <!-- <%= st %> -->
    <h3 style="direction: ltr; text-align: center;"><%= sqlMsg %></h3>
    <h3 style="direction: ltr; text-align: center;"><%= msg %></h3>

    <br />
    <br />
</asp:Content>
