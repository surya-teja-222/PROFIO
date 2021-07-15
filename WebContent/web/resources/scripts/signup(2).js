function openrequiredview(showid) {
    var i;
    var x = document.getElementsByClassName("rightclass");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    document.getElementById(showid).style.display = 'block';
}

function openper(){
    if(document.getElementById("inlineRadio1").checked == true){
        document.getElementById('10102').style.display='none';
    }
    else{
        document.getElementById('10101').style.display='none';
    }
}

function openview(showid){
    var i;
    var x = document.getElementsByClassName("234");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    document.getElementById(showid).style.display = 'block';
}