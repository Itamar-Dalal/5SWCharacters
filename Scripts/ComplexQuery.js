function detectField1() {
    if (document.getElementById("field1").value == "gender")
        document.getElementById("query1").innerHTML =
            "<input type='radio' name='value1' value='male' checked.'checked' />Male  " +
            "<input type='radio' name='value1' value='female' />Female";
    else if (document.getElementById("field1").value == "yearBorn" || document.getElementById("field1").value == "YearFrom") {
        var yearStr = "<select class='input1' name='value1'><option value=10'>Choose Year</option>";
        var currYear = new Date().getFullYear();
        var fromYear = currYear - 40;
        var toYear = currYear - 10;
        for (var i = fromYear; i < toYear; i++)
            yearStr += "<option value='" + i + "'>" + i + "</option>\n";
        document.getElementById("query1").innerHTML = yearStr + "</select>";
    }

    else if (document.getElementById("field1").value == "prefix") {
        var prefixStr = "<select class='input1' name ='value1'>";
        prefixStr += "<option value='050''>050</option>";
        prefixStr += "<option value='052''>052</option>";
        prefixStr += "<option value='053''>053</option>";
        prefixStr += "<option value='055''>055</option>";
        prefixStr += "<option value='057''>057</option>";
        prefixStr += "<option value='058''>058</option>";
        prefixStr += "<option value='02''>02</option>";
        prefixStr += "<option value='03''>03</option>";
        prefixStr += "<option value='04''>04</option>";
        prefixStr += "<option value='08''>08</option>";
        prefixStr += "<option value='09''>09</option>";
        prefixStr += "<option value='077''>077</option>";
        prefixStr += "</select>";

        document.getElementById("query1").innerHTML = prefixStr;
    }

    else if (document.getElementById("field1").value == "hobies") {
        var hobbyStr = "<select class='input1' name='value1'>";
        hobbyStr += "<option value='1'>Original</option>";
        hobbyStr += "<option value='2'>Prequel</option>";
        hobbyStr += "<option value='3'>Sequel</option>";
        hobbyStr += "</select>";
        document.getElementById("query1").innerHTML = hobbyStr;
    }
    else if (document.getElementById("field1").value == "city") {
        var cityStr = "<select class='input1' name='value1'>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='New York'>New York</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Los Angeles'>Los Angeles</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Chicago'>Chicago</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Houston'>Houston</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Phoenix'>Phoenix</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Jerusalem'>Jerusalem</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Tel Aviv'>Tel Aviv</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Haifa'>Haifa</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Rishon LeZion'>Rishon LeZion</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Petah Tikva'>Petah Tikva</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Ashdod'>Ashdod</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Beersheba'>Beersheba</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Netanya'>Netanya</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Holon'>Holon</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Bnei Brak'>Bnei Brak</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Ramat Gan'>Ramat Gan</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Bat Yam'>Bat Yam</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Rehovot'>Rehovot</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Ashkelon'>Ashkelon</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Modiin'>Modiin</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Herzliya'>Herzliya</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Paris'>Paris</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Rome'>Rome</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='London'>London</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Barcelona'>Barcelona</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Berlin'>Berlin</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Madrid'>Madrid</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Amsterdam'>Amsterdam</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Moscow'>Moscow</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='other'>Other</option>";
        cityStr += "</select>";
        document.getElementById("query1").innerHTML = cityStr;
    }

    else {
        document.getElementById("query1").innerHTML = "<input class='input1' type='text' name='value1' />";
    }
}

function detectField2() {
    if (document.getElementById("field2").value == "gender")
        document.getElementById("query2").innerHTML =
            "<input type='radio' name='value2' value='male' checked='checked' />Male  " +
            "<input type='radio' name='value2' value='female' />Female";
    else if (document.getElementById("field2").value == "yearBorn" || document.getElementById("field2").value == "YearTo") {
        var yearStr = "<select class='input1' name='value2'><option value=10'>Choose Year</option>";
        var currYear = new Date().getFullYear();
        var fromYear = currYear - 40;
        var toYear = currYear - 10;
        for (var i = fromYear; i < toYear; i++)
            yearStr += "<option value='" + i + "'>" + i + "</option>\n";
        document.getElementById("query2").innerHTML = yearStr + "</select>";

    }

    else if (document.getElementById("field2").value == "prefix") {
        var prefixStr = "<select class='input1' name ='value2'>";
        prefixStr += "<option value='050''>050</option>";
        prefixStr += "<option value='052''>052</option>";
        prefixStr += "<option value='053''>053</option>";
        prefixStr += "<option value='055''>055</option>";
        prefixStr += "<option value='057''>057</option>";
        prefixStr += "<option value='058''>058</option>";
        prefixStr += "<option value='02''>02</option>";
        prefixStr += "<option value='03''>03</option>";
        prefixStr += "<option value='04''>04</option>";
        prefixStr += "<option value='08''>08</option>";
        prefixStr += "<option value='09''>09</option>";
        prefixStr += "<option value='077''>077</option>";
        prefixStr += "</select>";

        document.getElementById("query2").innerHTML = prefixStr;
    }

    else if (document.getElementById("field2").value == "hobies") {
        var hobbyStr = "<select class='input1' name='value2'>";
        hobbyStr += "<option value='1'>Original</option>";
        hobbyStr += "<option value='2'>Prequel</option>";
        hobbyStr += "<option value='3'>Sequel</option>";
        hobbyStr += "</select>";
        document.getElementById("query2").innerHTML = hobbyStr;
    }

    else if (document.getElementById("field2").value == "city") {
        var cityStr = "<select class='input1' name='value2'>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='New York'>New York</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Los Angeles'>Los Angeles</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Chicago'>Chicago</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Houston'>Houston</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Phoenix'>Phoenix</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Jerusalem'>Jerusalem</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Tel Aviv'>Tel Aviv</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Haifa'>Haifa</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Rishon LeZion'>Rishon LeZion</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Petah Tikva'>Petah Tikva</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Ashdod'>Ashdod</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Beersheba'>Beersheba</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Netanya'>Netanya</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Holon'>Holon</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Bnei Brak'>Bnei Brak</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Ramat Gan'>Ramat Gan</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Bat Yam'>Bat Yam</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Rehovot'>Rehovot</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Ashkelon'>Ashkelon</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Modiin'>Modiin</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Herzliya'>Herzliya</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Paris'>Paris</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Rome'>Rome</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='London'>London</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Barcelona'>Barcelona</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Berlin'>Berlin</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Madrid'>Madrid</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Amsterdam'>Amsterdam</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='Moscow'>Moscow</option>";
        cityStr += "<option style = 'width:305px; text-align:center;' value='other'>Other</option>";
        cityStr += "</select>";

        document.getElementById("query2").innerHTML = cityStr;
    }

    else {
        document.getElementById("query2").innerHTML = "<input class='input1' type='text' name='value2' />";
    }
}