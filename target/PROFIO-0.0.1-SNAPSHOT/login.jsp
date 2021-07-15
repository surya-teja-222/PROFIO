<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="https://kit.fontawesome.com/64d58efce2.js" ></script>
        <link rel="icon" type="image/png" sizes="32x32" href="web/images/tab-img.ico">
        <link rel="stylesheet" href="web/login/style.css" />
        <title>Sign in & Sign up Form</title>
    </head>

    <body>
        <div class="container">
            <div class="forms-container">
                <div class="signin-signup">
                    <form action="login" method = "post" class="sign-in-form">
                        <h2 class="title">Sign in</h2>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="email" name="email" placeholder="E-mail" required />
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" name="pass" placeholder="Password" required />
                        </div>
                        <div><p id="error"></p></div> 
                        <input type="submit" value="Login" class="btn solid" />
                        <p class="social-text">Or Sign in with Other Platforms</p>
                        <div class="social-media">
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-microsoft"></i>
                            </a>
                        </div>
                    </form>
                    <form action="signup" method = "post" class="sign-up-form">
                        <h2 class="title">Sign up</h2>
                        <div class="input-field">
                            <i class="fas fa-envelope"></i>
                            <input type="email" placeholder="Email" name="signupemail" required/>
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" placeholder="Password" name="signuppass" required/>
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" placeholder="Confirm Password" required/>
                        </div>
                        <input type="submit" class="btn" value="Sign up" />
                        <p class="social-text">Or Sign up with Other Platforms</p>
                        <div class="social-media">

                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-microsoft"></i>
                            </a>
                        </div>
                    </form>
                </div>
            </div>

            <div class="panels-container">
                <div class="panel left-panel">
                    <div class="content">
                        <img src="web/login/logo.gif" alt="" height="50cm">
                        <label for=""><br><br><br></label>
                        <h3>New here ?</h3>
                        <p>
                            Within a matter of minutes join the growing community of Profio.Click here to quickly get
                            started
                        </p>
                        <button class="btn transparent" id="sign-up-btn">
                            Sign up
                        </button>
                    </div>
                    <img src="web/login/img/login.png" class="image" alt="" />

                </div>
                <div class="panel right-panel">
                    <div class="content">
                        <img src="web/login/logo.gif" alt="" height="50cm">
                        <label for=""><br><br><br></label>
                        <h3>One of us ?</h3>
                        <p>
                            Click the Sign In button below to Sign In to your Account.
                        </p>
                        <button class="btn transparent" id="sign-in-btn">
                            Sign in
                        </button>
                    </div>
                    <img src="web/login/img/signup.svg" class="image" alt="">
                </div>
            </div>
        </div>

        <script src="web/login/app.js"></script>
    </body>

    </html>