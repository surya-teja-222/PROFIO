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
                    <form action="Details0" method="post" style="padding-top: 70px;" class="rightclass">
                        <h2 class="title">Add Your Personal Details</h2>
                        <div class="input-field">
                            <i class="fas fa-globe-asia"></i>
                          <input type="text" placeholder="Your country of Residence" name="residecountry" required maxlength="25"/>
                        </div>
                        <div class="input-field">
                            <i class="fas fa-city"></i>
                          <input type="text" placeholder="Your City" name="residecity" required maxlength="25"/>
                        </div>
                        <div class="input-field">
                            <i class="fas fa-venus-mars"></i>
                          <select id="gender" style="width: 90%;background-color: #f0f0f0;" name="gender" required>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Non Binary">Non Binary</option>
                            <option value="Undisclosed" >Undisclosed</option>
                            <option value="Select Your Gender" selected disabled>Select Your Gender</option>
                          </select>
                        </div>
                        <input type="submit" value="next" class="btn solid" />
                    </form>
                </div>
            </div>
        </body>
    </html>