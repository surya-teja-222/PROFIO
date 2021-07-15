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
                        <form action="Details2" method="post" style="padding-top: 70px;" class="234">
                            <h2 class="title"><label for=""> Your Professional State</label></h2>
                            <div class="input-field">
                                <i class="fas fa-briefcase"></i>
                              <select  style="width: 90%;background-color: #f0f0f0;" name="professionalstate" oninput="if(this.value == 'Other'){document.getElementById('otherrs').removeAttribute('hidden')}else{document.getElementById('otherrs').setAttribute('hidden', 'hidden')}">
                                <option value="" disabled selected>Choose An option</option>
                                <option value="Working Professional">Working Professional</option>
                                <option value="Looking for Work/Intern">Looking for Work/Intern</option>
                                <option value="Student">Student</option>
                                <option value="Other">Other</option>
                              </select>
                            </div>
                                <section hidden id= "otherrs">
                            <div hidden class="input-field"  id="otherrs" >
                                <i class="fas fa-briefcase"></i>
                              <input type="text" placeholder="decribe others..." name="valoth" />
                            </div>
                        </section>
                            <div class="input-field">
                                <i class="fas fa-location-arrow"></i>
                              <input type="text" placeholder="Workplace Name" name="workplacename" />
                            </div>
                            <input type="submit" value="next"   class="btn solid" />
                        </form>
                
            </div>
        </div>
    </body>
</html>