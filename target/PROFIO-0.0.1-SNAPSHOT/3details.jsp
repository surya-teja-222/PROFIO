<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Sign-Up PROFIO
        </title>
        <link rel="icon" href="web/images/tab-img.ico"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://kit.fontawesome.com/7d068a4f24.js"></script>
        <link rel="stylesheet" href="web/resources/styles/signup3.css">
        <script type="text/javascript" src="web/resources/scripts/signup(2).js"></script>
		<style>html{overflow-y: scroll!important;overflow-x: hidden;}</style>
    </head>
    <body>
        <div class="body-left">
            <div class="container-left">
                <div  class="container-left" id="namedob" >
                  <img src="web/images/logo.gif" class="logo" height="50cm" alt=""> 
                    <label for=""><br><br><br></label>
                    <label class="left-lab">You are just a few <br> clicks away to join Profio</label>
                    <br>
                    <img src="web/resources/img/bluetechpngtree.png" class="image-2" alt="">
                </div>
            </div>
        </div>
        <div class="body-right">
            <div class="container-right" >
                        <form action="signup3" method="post" style="padding-top: 30px;" class="234" id="186">
                            <h2 class="title2"><label for=""> Add your Social Profiles to your Profio Account</label></h2>
                            <div class="input-field">
                                <i class="fas fa-link"></i>
                              <input type="text" placeholder="Your Website URL" name="faweb" />
                            </div>
                            <div class="input-field">
                                <i class="fab fa-instagram"></i>
                              <input type="text" placeholder="Your Instagram UserName/URL" name="fainsta" />
                            </div>
                            <div class="input-field">
                                <i class="fab fa-facebook"></i>
                              <input type="text" placeholder="Your Facebook URL" name="fafb"/>
                            </div>
                            <div class="input-field">
                                <i class="fab fa-twitter"></i>
                              <input type="text" placeholder="Your Twitter ID" name="fatwit"/>
                            </div>
                            <div class="input-field">
                                <i class="fab fa-snapchat-ghost"></i>
                              <input type="text" placeholder="Your Snapchat ID" name="fasnap" />
                            </div>
                            <div class="input-field">
                                <i class="fab fa-github-square"></i>
                              <input type="text" placeholder="Your github ID/URL" name="fagit" />
                            </div>
                            <input type="submit" value="Next" class="btn solid" />
                        </form>
            </div>
        </div>
    </body>
</html>