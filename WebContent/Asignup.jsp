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
    <body>
        <div class="body-left">
            <!-- I AM IMAGE BODY -->
            <div class="container-left">
                <div class="leftclass">
                    <img src="web/resources/img/logo.gif" class="logo" height="50cm" alt=""> 
                    <label for=""><br><br><br></label>
                    <h1>Verify Your Email</h1>
                    <label class="left-lab"> Complete Your Sign Up process,<br>Verify Your Email <%request.getAttribute("signupemail"); %> to continue</label>
                    <br>
                    <img src="web/resources/img/emailviewnetworkpngtree.png" class="image" alt="">
                </div>
            </div>
        </div>
        <div class="body-right">
            <div class="container-right" >
                <form action="verify" method = "post" style="padding-top: 70px;" class="rightclass">

                    <h2 class="title">Enter OTP</h2>
                    <div class="input-field" style="grid-template-columns: 15% 70%  15%!important;">
                        <i class="fas fa-lock"></i>
                      <input type="text" placeholder="######" minlength="6" maxlength="6" required name="enteredotp"  />
                      	<img class="" style="padding-top:10px;color:gray;" onclick=" window.location.href = 'resend';  "  src="web/images/resend.png" height= "50cm">
                    </div>
                    <input type="submit" value="Validate and Proceed"  class="btn solid" />
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