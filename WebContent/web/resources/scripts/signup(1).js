function openrequiredview(showid,showid2) {
    var i;
    var x = document.getElementsByClassName("leftclass");
    var y = document.getElementsByClassName("rightclass");
    console.log(y);

    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
        y[i].style.display = "none";
    }
    document.getElementById(showid).style.display = 'block';
    document.getElementById(showid2).style.display = 'block';
}
