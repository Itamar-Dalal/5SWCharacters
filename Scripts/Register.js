function verifyUserName(input) {
    return input.length >= 2;
}

function verifyFirstName(input) {
    return input.length >= 2;
}

function verifyLastName(input) {
    return input.length >= 2;
}

function verifyEmail(input) {
    var badChars = "'$%^&*()_+[]{ }<>?תאבגדהוזחטיכךלמםנןסעפצקרש"

    for (var i = 0; i < badChars.length; i++) {
        if (input.includes(badChars[i]) || input.includes('"')) {
            return false;
        }
    }

    return (
        input.length > 6 &&
        input.indexOf("@") == input.lastIndexOf("@") &&
        input.indexOf("@") > 2 &&
        input.lastIndexOf("@") != input.length - 1 &&
        input.indexOf(".", input.indexOf("@")) - input.indexOf("@") >= 2 &&
        input.indexOf(".", input.indexOf("@")) != input.length - 1
    );
}

function verifyPassword(input) {
    return input.length >= 6;
}

function verifyPrefix(input) {
    return input.length == 3 || input.length == 2;
}

function verifyPhoneNumber(input) {
    return input.length == 7;
}


function verifyVerifyPassword(input1, input2) {
    if (input1.length != 0) {
        if (input1 == input2) {
            return true;
        }
        else {
            return false;
        }
    }
    else {
        return false;
    }

}

function clrForm() {
    document.getElementById("mUName").style.display = "none";
    document.getElementById("mFName").style.display = "none";
    document.getElementById("mLName").style.display = "none";
    document.getElementById("mEmail").style.display = "none";
    document.getElementById("mPassWord").style.display = "none";
    document.getElementById("mPhone").style.display = "none";
    document.getElementById("mVerifyPassword").style.display = "none";
    document.getElementById("mCity").style.display = "none";
    document.getElementById("mHobies").style.display = "none";

    document.getElementById("Form").Reset();

}


function chkForm() {
    var UserName = document.getElementById("uName").value.trim();
    var FirstName = document.getElementById("fName").value.trim();
    var LastName = document.getElementById("lName").value.trim();
    var Email = document.getElementById("email").value.trim();
    var Password = document.getElementById("passWord").value.trim();
    var VerifyPassword = document.getElementById("verifyPassword").value.trim();
    var Prefix = document.getElementById("Prefix").value.trim();
    var PhoneNumber = document.getElementById("phoneNum").value.trim();
    var City = document.getElementById("city").value.trim();
    var Hobies = document.getElementsByName("hobies");

    var hobChecked = false;
    var correct = true;

    if (verifyUserName(UserName)) {
        document.getElementById("mUName").style.display = "none";
    }
    else {
        document.getElementById("mUName").value = "User name is too short or does not exist";
        document.getElementById("mUName").style.display = "inline";
        correct = false;
    }

    if (verifyFirstName(FirstName)) {
        document.getElementById("mFName").style.display = "none";
    }
    else {
        document.getElementById("mFName").value = "First name is too short or does not exist";
        document.getElementById("mFName").style.display = "inline";
        correct = false;
    }

    if (verifyLastName(LastName)) {
        document.getElementById("mLName").style.display = "none";
    }
    else {
        document.getElementById("mLName").value = "Last name is too short or does not exist";
        document.getElementById("mLName").style.display = "inline";
        correct = false;
    }

    if (verifyEmail(Email)) {
        document.getElementById("mEmail").style.display = "none";
    }
    else {
        document.getElementById("mEmail").value = "Email is not valid";
        document.getElementById("mEmail").style.display = "inline";
        correct = false;
    }

    if (verifyPassword(Password)) {
        document.getElementById("mPassWord").style.display = "none";
    }
    else {
        document.getElementById("mPassWord").value = "Password is not valid";
        document.getElementById("mPassWord").style.display = "inline";
        correct = false;
    }

    if (verifyPhoneNumber(PhoneNumber) && verifyPrefix(Prefix) && !isNaN(PhoneNumber)) {
        document.getElementById("mPhone").style.display = "none";
    }
    else {
        document.getElementById("mPhone").value = "Phone number is not valid or Prefix did not entered";
        document.getElementById("mPhone").style.display = "inline";
        correct = false;
    }

    if (verifyVerifyPassword(Password, VerifyPassword)) {
        document.getElementById("mVerifyPassword").style.display = "none";
    }
    else {
        document.getElementById("mVerifyPassword").value = "Not the same Password or did not entered";
        document.getElementById("mVerifyPassword").style.display = "inline";
        correct = false;
    }

    if (City != "Choose") {
        document.getElementById("mCity").style.display = "none";
    }
    else {
        document.getElementById("mCity").value = "City did not entered";
        document.getElementById("mCity").style.display = "inline";
        correct = false;
    }

    for (var i = 0; i < Hobies.length; i++) {
        if (Hobies[i].checked)
            hobChecked = true;
    }

    if (!hobChecked) {
        document.getElementById("mHobies").value = "No answer checked";
        document.getElementById("mHobies").style.display = "inline";
        correct = false;
    }

    else {
        document.getElementById("mHobies").style.display = "none";
    }

    return correct;
}