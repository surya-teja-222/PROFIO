<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <title>profile created || PROFIO</title>
        <link rel="icon" href="web/images/tab-img.ico"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap" rel="stylesheet">
        <style>html{background-color: #f5fefd;overflow: hidden;}body{text-align:center}.btn {width: 200px;background-color: #175385;border: none;outline: none;height: 49px;color: #fff;text-transform: uppercase;font-weight: 600;margin: 10px 0;cursor: pointer;transition: 0.5s;}.btn:hover {background-color: #009688;}</style>
    </head>
<body>
<body>
        <div>
            <h1 style="color: rgb(68, 119, 160);font-family: 'Staatliches', cursive;">YOUR PROFILE IS SUCCESSFULLY CREATED!!!</h1>
            <p style="font-family: 'Indie Flower', cursive;font-size: medium;">We are happy to have you onboard.<% request.getAttribute("mail"); %></p>
        </div>
        <div>
            <form action="profile.jsp" style="display: inline;">
                <input type="submit" class="btn" value="Go To Your Profile.">
            </form>
            <form action="home.jsp" method="post" style="display: inline;">
                <input type="submit" class="btn" value="Go To Home Page.">
            </form>
        </div>
        <img src="web/resources/svg/suscess.svg" height="800cm" alt="">
    </body>
</body>
</html>