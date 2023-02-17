function verifyUserName(input) {
    return input.length >= 2;
}

function verifyPassword(input) {
    return input.length >= 6;
}


function clrForm() {
    document.getElementById("mMName").style.display = "none";
    document.getElementById("mMPassWord").style.display = "none";

    document.getElementById("Form").Reset();

}


function checkForm() {
    var UserName = document.getElementById("mName").value.trim();
    var Password = document.getElementById("mPw").value.trim();
    var correct = true;

    if (verifyUserName(UserName)) {
        document.getElementById("mMName").style.display = "none";
    }
    else {
        document.getElementById("mMName").value = "Admin name is too short or does not exist";
        document.getElementById("mMName").style.display = "inline";
        correct = false;
    }

    if (verifyPassword(Password)) {
        document.getElementById("mMPassWord").style.display = "none";
    }
    else {
        document.getElementById("mMPassWord").value = "Password is not valid";
        document.getElementById("mMPassWord").style.display = "inline";
        correct = false;
    }
    return correct;
}