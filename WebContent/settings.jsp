<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.profio.*"%>
    
<!DOCTYPE html>
<html>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("mail") == null){response.sendRedirect("login.jsp");}
%>
<head>
    <title>Profio</title>
    <link rel="icon" href="web/images/tab-img.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://kit.fontawesome.com/7d068a4f24.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!--  -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="web/app/settings.css">
</head>

<body>
    <header class="w3-top">
    <% getpicurl x = new getpicurl(); %>
        <nav class="w3-teal flex" style="padding-top: 15px;padding-bottom: 0px;">
            <label><a href="home.jsp">
                    <img src="web/images/logo.gif" id="gif-logo" style="height: 1cm; width: auto;"></a>
            </label>
            <div class="w3-dropdown-hover w3-right">
                <label class="w3-right"><a href="notifications.jsp">
                    <i class="material-icons fa-2x">keyboard_arrow_down</i></a>
                </label>
                <div id="menu" class="w3-dropdown-content w3-bar-block  w3-light-gray" style="right:0;top: 20px;">
                    <a href="profile.jsp" class="w3-bar-item w3-button">
                        <label class=" w3-round-xxlarge">
                            <img class=" w3-round-xxlarge" src="<%=x.geturl((String) session.getAttribute("mail")) %>"
                                style="height: 1cm;width: 1cm;">
                            <label><%= session.getAttribute("name") %></label>
                        </label>
                    </a>
                    <a>
                        <div class="w3-margin"></div>
                    </a>
                    <a href="settings.jsp" class="w3-bar-item w3-button">Settings & Privacy</a>
                    <a href="settings.jsp" class="w3-bar-item w3-button">Help & Support</a>
                    <a href="logout" class="w3-bar-item w3-button">Log-Out</a>
                </div>
            </div>
            <label class="w3-right right-fx">
                <i class="material-icons fa-2x">notifications_none</i>
            </label>
            <label class="w3-right right-fx">
                <a href="profile.jsp">
                    <label id="uname-1" class=" w3-round-xxlarge"
                        onmouseover="document.getElementById('uname-1').style.backgroundColor='lightgrey';"
                        onmouseout="document.getElementById('uname-1').style.backgroundColor='#009688';">
                        <img class=" w3-round-xxlarge" src="<%=x.geturl((String) session.getAttribute("mail")) %>"
                            style="height: 0.8cm;width: 0.8cm;">
                        <label style="color: white;"><%= session.getAttribute("name") %></label>
                    </label>
                </a>
            </label>
            <label class="w3-right right-fx">
                <a href="home.jsp" style="color: white;">
                    <i class="fas fa-home fa-2x" id="home-header"></i>
                </a>
            </label>
        </nav>
    </header>
    <label><br><br><br></label>




    <!-- add body here!!!!!! -->

    <div class="card-body">
        <div class="row">
            <div class="col-sm-3" id="left-bar">
                <div style="padding-top: 20px;">
                    <!-- <img src="resources/svg/settings.svg" alt="settings" > -->
                    <label>
                        <a href="settings.jsp">
                            <h1 style="font-weight:bolder;color: black;">Settings</h1>
                        </a>
                    </label>
                </div>
                <div style="padding-top:20px;"></div>
                <div class="options" id="general-head"
                    onclick="opensettings('general-body','general-head');style.backgroundColor='rgba(173, 216, 230, 0.37)';">
                    <label><img src="web/resources/svg/settings.svg" alt="settings-general"> General</label>
                </div>
                <div class="options" id="privacy-head" onclick="opensettings('privacy-body','privacy-head');">
                    <label><img src="web/resources/svg/privacy.svg" alt="privacy"> Privacy</label>
                </div>
                <div class="options" id="security-head" onclick="opensettings('security-body','security-head');">
                    <label><img src="web/resources/svg/security.svg" alt="security"> Security</label>
                </div>
                <hr>
                <div class="options" id="help-head" onclick="opensettings('help-body','help-head');"><label><img
                            src="web/resources/svg/help.svg" alt="help"> Help/Support</label></div>
                <div class="options" id="notification-head"
                    onclick="opensettings('notification-body','notification-head');"><label><img
                            src="web/resources/svg/notification.svg" alt="notify"> Notifications</label></div>
            </div>
            <div class="col-sm-9">
                <!-- complete body here  -->
                <!-- settings-body -->
                <div class="settings-body" id="general-body">
                    <div>
                        <h5 style="font-size: x-large;"><img src="web/resources/svg/settings.svg" alt="" height="30px">
                            General Account Settings</h5>
                        <hr style="border: none;height: 1px;background: black;margin-bottom: 10px;">
                        <div style="padding: 10px;font-size: medium"><label style="padding-left: 10px;">Profile
                                Picture:</label>

                            <label class="w3-right" data-toggle="modal" data-target="#imgedit">
                            <img class="w3-circle" src="<%=x.geturl((String) session.getAttribute("mail")) %>" height="50cm" data-toggle="tooltip" title="Edit">
                                </label>
                                <div class="modal fade" id="imgedit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                      <div class="modal-content">
                                      <form action="picture-edit" method="post" enctype="multipart/form-data">
                                        <div class="modal-header">
                                          <h5 class="modal-title" id="exampleModalLabel">Remove/Upload a new profile picture.</h5>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                          </button>
                                        </div>
                                        <div class="modal-body">
                                                <input type="file" name="img-new" required/>
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                          <button type="submit" class="btn btn-primary">Save changes</button>
                                        </div>
                                        </form>
                                      </div>
                                    </div>
                                  </div>
                        </div>
                        <hr>
                        <% jdbc jdb = new jdbc();String[] ar1 = jdb.getsett((String)session.getAttribute("mail")); %>
                        <div style="padding: 10px;font-size: medium"><label style="padding-left: 10px;">Name:</label>
                            <label style="padding-left: 72px;"><%= ar1[0] %></label> <label class="w3-right"><a
                                    href="#" data-toggle="modal" data-target="#dataedit">Edit</a></label>
                        </div>
                        <hr>
                        <!--  <div style="padding: 10px;font-size: medium"><label style="padding-left: 10px;">User
                                Name:</label> <label style="padding-left: 35px;">Surya-Teja-Reddy-222</label> <label
                                class="w3-right"><a href="#" data-toggle="modal" data-target="#dataedit">Edit</a></label></div>
                        <hr>-->
                        <div style="padding: 10px;font-size: medium"><label style="padding-left: 10px;">Email:</label>
                            <label style="padding-left: 75px;"><%= session.getAttribute("mail")%></label> <label
                                class="w3-right"><a href="#" data-toggle="modal" data-target="#dataedit">Edit</a></label>
                        </div>
                        <hr>
                        <div style="padding: 10px;font-size: medium"><label style="padding-left: 10px;">Mobile:</label>
                            <label style="padding-left: 65px;"><%= ar1[1] %></label> <label class="w3-right"><a
                                    href="#" data-toggle="modal" data-target="#dataedit">Edit</a></label>
                        </div>
                        <div class="w3-padding w3-text-red"><label for=""> Changing your username might have unintended
                                side effects.One or more changes might require you to re-login.</label></div>

                        <!-- <div class="w3-right" style="padding-right: 3cm;">
                            <input type="submit" class="btn btn-primary">
                        </div> -->
                        <div class="modal fade" id="dataedit" tabindex="-1" role="dialog"  aria-hidden="true">
                            
                            <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalLabel">Edit details.</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <form action="Editdetails" method="post">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label >Name:</label>
                                        <input type="text" class="form-control" value="<%= ar1[0] %>" name="e-name">
                                    </div>
                                    <!--  <div class="form-group">
                                        <label>User Name:</label>
                                        <input type="text" class="form-control" value="Surya Teja Reddy" >
                                    </div> -->
                                    <div class="form-group">
                                        <label>Email:</label>
                                        <input type="email" class="form-control" value="<%= session.getAttribute("mail") %>" name="e-mail" >
                                    </div>
                                    <div class="form-group">
                                        <label>Mobile:</label>
                                        <input type="text" class="form-control" value="<%= ar1[1] %>" name="e-tel">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                  <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                                </form>
                              </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="settings-body" id="privacy-body" style="display: none;">
                <form action="privacy" method = "post">
                <% 
                	jdbc jd = new jdbc(); 
                	String[] arx = jd.getprivacysettings((String) session.getAttribute("mail"));
                %>
                    <h5 style="font-size: x-large;"><img src="web/resources/svg/privacy.svg" alt=""> Account Privacy
                    </h5>
                    <div class="row">
                        <div class="col-3">
                            <p style="padding-left:10px ;">Private Account :</p>
                        </div>
                        <div class="col-3">
                            <div class="md-form">
                                <div class="material-switch">
                                    <input id="switch-primary" name="switch-primary" type="checkbox">
                                    <label for="switch-primary" class="primary-color"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p style="font-family: 'Antic Slab', serif;padding-left:10px ;">When your account is private, only
                        people you approve
                        can see your details on Profio . Your existing connections won't be effected . However everyone
                        can see your Name and profile Picture, Employers who verified their identity can also see your
                        e-mail address.Customise additional details below.</p>
                    <hr>
                    <div class="row">
                        <div class="col-5">
                            <label style="padding-left:10px ;" data-toggle="tooltip"
                                title="Your basic contact info like mail,mobile and website url">Who can see your basic
                                contact info:</label>

                        </div>
                        <div class="col-3">
                                <div class="form-group">
                                    <select class="form-control" name= "bc">
                                        <option <% if(arx[0].equals("e")){out.print("selected");} %> value="e">Everyone</option>
                                        <option <% if(arx[0].equals("o")){out.print("selected");} %> value="o">Only you.</option>
                                        <option <% if(arx[0].equals("c")){out.print("selected");} %> value="c">People whom I approve</option>
                                    </select>
                                </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-5">
                            <label style="padding-left:10px ;" data-toggle="tooltip" title="Your schooling details.">Who
                                can see your previous educational details :</label>
                        </div>
                        <div class="col-3">
                                <div class="form-group">
                                    <select class="form-control" name="ed">
                                        <option <% if(arx[1].equals("e")){out.print("selected");} %> value="e">Everyone</option>
                                        <option <% if(arx[1].equals("o")){out.print("selected");} %> value="o">Only you.</option>
                                        <option <% if(arx[1].equals("c")){out.print("selected");} %> value="c">People whom I approve</option>
                                    </select>
                                </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-5">
                            <label style="padding-left:10px ;" data-toggle="tooltip"
                                title="Your Licenses /Certifications">Who can see your Licenses /Certifications
                                :</label>
                        </div>
                        <div class="col-3">
                            
                                <div class="form-group">
                                    <select class="form-control" name="lc">
                                        <option <% if(arx[2].equals("e")){out.print("selected");} %> value="e">Everyone</option>
                                        <option <% if(arx[2].equals("o")){out.print("selected");} %> value="o">Only you.</option>
                                        <option <% if(arx[2].equals("c")){out.print("selected");} %> value="c">People whom I approve</option>
                                    </select>
                                </div>
                            
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-5">
                            <label style="padding-left:10px ;" data-toggle="tooltip"
                                title="Your Previous work experience">Who can see your Work experience :</label>
                        </div>
                        <div class="col-3">
                            
                                <div class="form-group">
                                    <select class="form-control" name="we">
                                        <option <% if(arx[3].equals("e")){out.print("selected");} %> value="e">Everyone</option>
                                        <option <% if(arx[3].equals("o")){out.print("selected");} %> value="o">Only you.</option>
                                        <option <% if(arx[3].equals("c")){out.print("selected");} %> value="c">People whom I approve</option>
                                    </select>
                                </div>
                            
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-5">
                            <label style="padding-left:10px ;" data-toggle="tooltip"
                                title="Your accounts like snapchat,instagram ....">Who can see your Social Connections :</label>
                        </div>
                        <div class="col-3">
                            
                                <div class="form-group">
                                    <select class="form-control" name="sc">
                                        <option <% if(arx[4].equals("e")){out.print("selected");} %> value="e">Everyone</option>
                                        <option <% if(arx[4].equals("o")){out.print("selected");} %> value="o">Only you.</option>
                                        <option <% if(arx[4].equals("c")){out.print("selected");} %> value="c">People whom I approve</option>
                                    </select>
                                </div>
                            
                        </div>
                    </div>
                    <div class="w3-right w3-padding" id="submit-data" hidden="">
                    <a href="settings.jsp"><button  type="button" class="btn  btn-danger" style="align-items: inline">Discard changes</button></a>
                    
                    <button   type="submit" class="btn  btn-success" style="align-items: inline">Save changes</button>
                    
                    </div>
					</form>
                </div>
                <div class="settings-body" id="security-body" style="display: none;">
                    <h5 style="font-size: large;padding-left: 10px;"><img src="web/resources/svg/privacy.svg" alt="">
                        Privacy/Security Help
                    </h5>
                    <hr style="border: none;height: 1px;background: black;margin-bottom: 10px;">
                    <a href="#" style="padding-left: 30px;padding-top: 30px;">Require additional support with your
                        profile ?</a>
                    <hr style="border: none;height: 0.1px;background: black;margin-bottom: 10px;width: 50%;">
                    <label style="font-size: large;padding-left: 30px;"> <u>Change Password</u></label>
                    <form action="?surya" style="padding-left: 30px;">
                        <div class="form-group">
                            <label for="oldpass">Old password:</label>
                            <input type="password" class="form-control" id="oldpass" style="width: 40%;">
                        </div>
                        <div class="form-group">
                            <label for="npwd">New Password:</label>
                            <input type="password" class="form-control" id="npwd" style="width: 40%;">
                            <label for="pwd2">Confirm New Password:</label>
                            <input type="password" class="form-control" id="pwd2" style="width: 40%;">
                        </div>
                        <label for="" style="font-weight: 300;">Make sure it's at least 15 characters OR at least 8
                            characters including a number and a lowercase letter.</label><br>
                        <button type="submit" class="btn btn-primary">Update password</button>
                    </form>
                    <hr>
                    <h5 style="font-size: large;padding-left: 10px;">Account Data</h5>
                    <a href="#" style="padding-left: 30px;padding-top: 30px;">Request Account Data</a>
                    <hr>
                    <h5 style="font-size: large;padding-left: 10px;">Edit/Enable 2 factor Auth</h5>
                    <a href="#" style="padding-left: 30px;padding-top: 30px;">Edit two factor Auth</a>
                    <hr>
                    <h5 style="font-size: large;padding-left: 10px;">Data Download</h5>
                    <a href="#" style="padding-left: 30px;padding-top: 30px;">Request Download</a>
                    <hr>
                    <div class="danger-box " style="padding-left: 30px;padding-top: 30px;">
                        <div>
                            <h6><u> Delete Your Account</u></h6><br><form action="delete" method="post">
                            <div class="row">
                            
                                <label class="col-8" for="delete">Delete your account:</label>
                                <button type="submit" class="col-2 btn btn-danger" id="delete">Delete</button>
                                
                            </div><br>
                            <div class="row">
                                <label class="col-8" for="Deactivate">Temporarily Deactivate your account:</label>
                                <button type="submit" class="col-2 btn btn-danger" id="Deactivate">Deactivate</button>
                            </div></form>
                            <hr>
                            <div> <label style="font-weight: 300;font-size: smaller;" for="">By deleting your account
                                    you cannot recover any
                                    of its data,To Download your account data click <a href="#">Here.</a>Your profile
                                    will be removed within
                                    3hrs from our servers.<br>By temporarily deactivating your account you can recover
                                    your account anytime
                                    after 6 months of deactivating.After that your account will be completely
                                    deleted.</label></div>
                        </div>
                    </div>

                </div>
                <div class="settings-body" id="help-body" style="display: none;">
                    <h5 style="font-size: x-large;padding-left: 10px;"><img src="web/resources/svg/help.svg" alt=""
                            height="25px"> Help Center</h5>
                    <hr style="border: none;height: 1px;background: black;margin-bottom: 10px;">
                    <a href="#" style="padding-left: 30px;padding-top: 30px;">Your Reports</a>
                    <hr>
                    <a href="#" style="padding-left: 30px;padding-top: 30px;">Your Policy Violations.</a>
                </div>
                <div class="settings-body" id="notification-body" style="display: none;">
                    <h5 style="font-size: x-large;padding-left: 10px;"><img src="web/resources/svg/notification.svg"
                            alt="" height="25px"> Notification Center</h5>
                    <hr style="border: none;height: 1px;background: black;margin-bottom: 10px;">
                    <p style="font-family: 'Antic Slab', serif;">Profio may still send you important notifications about
                        your account and content outside of your preferred notification settings.</p>
                    <div class="row">
                        <div class="col-3">
                            <p style="padding-left:10px ;">Emails about profile view :</p>
                        </div>
                        <div class="col-1">
                            <div class="md-form">
                                <div class="material-switch">
                                    <input id="switch-primary" name="switch-primary" type="checkbox">
                                    <label for="switch-primary" class="primary-color"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-3">
                            <p style="padding-left:10px ;">Emails about connection request :</p>
                        </div>
                        <div class="col-1">
                            <div class="md-form">
                                <div class="material-switch">
                                    <input id="switch-primary" name="switch-primary" type="checkbox">
                                    <label for="switch-primary" class="primary-color"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-3">
                            <p style="padding-left:10px ;">Emails about connection request acceptance :</p>
                        </div>
                        <div class="col-1">
                            <div class="md-form">
                                <div class="material-switch">
                                    <input id="switch-primary" name="switch-primary" type="checkbox">
                                    <label for="switch-primary" class="primary-color"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>







    <footer class="footer">
        <div class="container">
            <a class="footer__logo" href="/home/">
                <img src="web/resources/img/logo.gif" id="gif-logo" style="height: 1cm; width: auto;">
            </a>

            <div class="footer__social">
                <a href="https://www.facebook.com/surya.teja.reddy.222/">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20">
                        <title>Facebook</title>
                        <path fill="#FFF"
                            d="M18.896 0H1.104C.494 0 0 .494 0 1.104v17.793C0 19.506.494 20 1.104 20h9.58v-7.745H8.076V9.237h2.606V7.01c0-2.583 1.578-3.99 3.883-3.99 1.104 0 2.052.082 2.329.119v2.7h-1.598c-1.254 0-1.496.597-1.496 1.47v1.928h2.989l-.39 3.018h-2.6V20h5.098c.608 0 1.102-.494 1.102-1.104V1.104C20 .494 19.506 0 18.896 0z" />
                    </svg>
                </a>
                <a href="https://github.com/surya-teja-222">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <title>Github</title>
                        <path fill="#FFF"
                            d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" />
                    </svg>
                </a>
                <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="21" height="18">
                        <title>Twitter</title>
                        <path fill="#FFF"
                            d="M20.667 2.797a8.192 8.192 0 01-2.357.646 4.11 4.11 0 001.804-2.27 8.22 8.22 0 01-2.606.996A4.096 4.096 0 0014.513.873c-2.649 0-4.595 2.472-3.997 5.038a11.648 11.648 0 01-8.457-4.287 4.109 4.109 0 001.27 5.478A4.086 4.086 0 011.47 6.59c-.045 1.901 1.317 3.68 3.29 4.075a4.113 4.113 0 01-1.853.07 4.106 4.106 0 003.834 2.85 8.25 8.25 0 01-6.075 1.7 11.616 11.616 0 006.29 1.843c7.618 0 11.922-6.434 11.662-12.205a8.354 8.354 0 002.048-2.124z" />
                    </svg>
                </a>
                <a href="Mailto:suryatejareddy222@gmail.com">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <title>Mail</title>
                        <path fill="#FFF"
                            d="M0 3v18h24v-18h-24zm6.623 7.929l-4.623 5.712v-9.458l4.623 3.746zm-4.141-5.929h19.035l-9.517 7.713-9.518-7.713zm5.694 7.188l3.824 3.099 3.83-3.104 5.612 6.817h-18.779l5.513-6.812zm9.208-1.264l4.616-3.741v9.348l-4.616-5.607z" />
                    </svg>
                </a>
                <a href="https://www.instagram.com/surya_teja_222/">
                    <svg xmlns="http://www.w3.org/2000/svg" width="21" height="20">
                        <title>Instagram</title>
                        <path fill="#FFF"
                            d="M10.333 1.802c2.67 0 2.987.01 4.042.059 2.71.123 3.976 1.409 4.1 4.099.048 1.054.057 1.37.057 4.04 0 2.672-.01 2.988-.058 4.042-.124 2.687-1.386 3.975-4.099 4.099-1.055.048-1.37.058-4.042.058-2.67 0-2.986-.01-4.04-.058-2.717-.124-3.976-1.416-4.1-4.1-.048-1.054-.058-1.37-.058-4.041 0-2.67.01-2.986.058-4.04.124-2.69 1.387-3.977 4.1-4.1 1.054-.048 1.37-.058 4.04-.058zm0-1.802C7.618 0 7.278.012 6.211.06 2.579.227.56 2.242.394 5.877.345 6.944.334 7.284.334 10s.011 3.057.06 4.123c.166 3.632 2.181 5.65 5.816 5.817 1.068.048 1.408.06 4.123.06 2.716 0 3.057-.012 4.124-.06 3.628-.167 5.651-2.182 5.816-5.817.049-1.066.06-1.407.06-4.123s-.011-3.056-.06-4.122C20.11 2.249 18.093.228 14.458.06 13.39.01 13.049 0 10.333 0zm0 4.865a5.135 5.135 0 100 10.27 5.135 5.135 0 000-10.27zm0 8.468a3.333 3.333 0 110-6.666 3.333 3.333 0 010 6.666zm5.339-9.87a1.2 1.2 0 10-.001 2.4 1.2 1.2 0 000-2.4z" />
                    </svg>
                </a>
            </div>

            <div class="footer__links col1">
                <a href="home.jsp">About Us</a>
                <a href="home.jsp">Contact</a>
                <a href="home.jsp">Blog</a>
            </div>

            <div class="footer__links col2">
                <a href="home.jsp">Careers</a>
                <a href="home.jsp">Support</a>
                <a href="home.jsp">Privacy Policy</a>
            </div>

            <div class="footer__cta">
                <a href="home.jsp" class="button">Request Invite</a>
            </div>

            <div class="footer__copyright">
                &copy;2021 Profio. All Rights Reserved.
            </div>

        </div>
    </footer>
    <script>
        function opensettings(settingsid, headid) {
            var i;
            var x = document.getElementsByClassName("settings-body");
            var y = document.getElementsByClassName("options");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
                y[i].style.backgroundColor = 'white';
            }
            document.getElementById(settingsid).style.display = 'block';
            document.getElementById(headid).style.backgroundColor = 'rgba(173, 216, 230, 0.37)';
        }
    </script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    
    
    
    <script>
    var button = $('#submit-data');
    $('form :input').not(button).bind('keyup change', function () {
        // get all that inputs that has changed
        var changed = $('form :input').not(button).filter(function () {
            if (this.type == 'radio' || this.type == 'checkbox') {
                return this.checked != $(this).data('default');
            } else {
                return this.value != $(this).data('default');
            }
        });
        // disable if none have changed - else enable if at least one has changed
        $('#submit-data').prop('hidden', !changed.length);
    });
    </script>
</body>

</html>