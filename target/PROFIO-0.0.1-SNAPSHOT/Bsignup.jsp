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
        <script src="https://kit.fontawesome.com/7d068a4f24.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="web/resources/styles/signup2.css">
        <script type="text/javascript" src="web/resources/scripts/signup(1).js"></script>
    </head>
<body>
		<div class="body-left">
            <!-- I AM IMAGE BODY -->
            <div class="container-left">
                <div  class="container-left" id="namedob">
                    <img src="web/resources/img/logo.gif" class="logo" height="50cm" alt=""> 
                    <label for=""><br><br><br></label>
                    <label class="left-lab">You are just a few <br> clicks away to join Profio</label>
                    <br>
                    <img src="web/resources/img/bluetechpngtree.png" class="image-2" alt="">
                </div>
            </div>


        </div>
        <div class="body-right">
            <div class="container-right" >
                <form action="signup2" method="post" style="padding-top: 70px;" id="namedob2" class="rightclass">
                    <h2 class="title">Add Your Personal Details</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                      <input type="text" placeholder="Your Name" name="name" maxlength="25"/>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-phone"></i>
                      <input type="tel" placeholder="Your Mobile " name="tel" pattern="[0-9]{10}" />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-calendar-week"></i>
                      <!-- <input type="date" required/> -->
                      <input type="text" name="date" placeholder="DOB:dd/mm/yyyy"  onkeyup="var v = this.value;if (v.match(/^\d{2}$/) !== null) {this.value = v + '/';} else if (v.match(/^\d{2}\/\d{2}$/) !== null) {this.value = v + '/';}"maxlength="10">
                    </div>
                    <div class="w3-container w3-padding-16">
                        <input type="checkbox" id="check101" name="check101" onchange="check();">
                        <label for="check101"> On clicking, you are agree to all <a href="#">terms&conditions</a> of profio
                            INC.<br></label>
                    </div>
                    <input type="submit" value="Next" id="submit101" disabled="disabled" class="btn solid" />
                </form>

            </div>
        </div>



        <script>
            var checker = document.getElementById('check101');
            var sendbtn = document.getElementById('submit101');
            // when unchecked or checked, run the function
            checker.onchange = function () {
                if (this.checked) {
                    sendbtn.disabled = false;
                } else {
                    sendbtn.disabled = true;
                }
    
            }
        </script>
    </body>
</body>
</html>