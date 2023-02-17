function verifyUserName(input) {
    return input.length >= 2;
}

function verifyPassword(input) {
    return input.length >= 6;
}


function clrForm() {
    document.getElementById("mUName").style.display = "none";
    document.getElementById("mPassWord").style.display = "none";

    document.getElementById("Form").Reset();

}


function checkForm() {
    var UserName = document.getElementById("uName").value.trim();
    var Password = document.getElementById("pw").value.trim();
    var correct = true;

    if (verifyUserName(UserName)) {
        document.getElementById("mUName").style.display = "none";
    }
    else {
        document.getElementById("mUName").value = "User name is too short or does not exist";
        document.getElementById("mUName").style.display = "inline";
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

    return correct;
}