<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.profio.*"%>
<!DOCTYPE html>
<html>

<head>
    <title>notifications</title>
    <link rel="icon" href="web/images/tab-img.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://kit.fontawesome.com/7d068a4f24.js"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!--  -->
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
    <link
        href="https://fonts.googleapis.com/css2?family=Viaoda+Libre&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="web/resources/styles/profile.css">
    </head>

    <body ><br><br><br>


    <header class="w3-top ">
		<%
		getpicurl x = new getpicurl();
		%>
		<nav class="w3-teal flex" style="padding-top: 20px;">
			<label> <a href="home.jsp"> <img
					src="web/resources/img/logo.gif" id="gif-logo"
					style="height: 1cm; width: auto;">
			</a>
			</label>
			<div class="w3-dropdown-hover w3-right">
				<label class="w3-right"> <i class="material-icons fa-2x">keyboard_arrow_down</i>
				</label>
				<div id="menu"
					class="w3-dropdown-content w3-bar-block  w3-light-gray"
					style="right: 0; top: 20px;">
					<a href="#" class="w3-bar-item w3-button"> <label
						class=" w3-round-xxlarge"> <img class=" w3-round-xxlarge"
							src="<%=x.geturl((String) session.getAttribute("mail"))%>" 
							style="height: 1cm; width: 1cm;"> <label><%=session.getAttribute("name")%></label>
					</label>
					</a> <a>
						<div class="w3-margin"></div>
					</a> <a href="settings.jsp" class="w3-bar-item w3-button">Settings
						& Privacy</a> <a href="settings.jsp" class="w3-bar-item w3-button">Help &
						Support</a> <a href="logout" class="w3-bar-item w3-button">Log-Out</a>
				</div>
			</div>
			<label class="w3-right right-fx"> <i
				class="material-icons fa-2x">notifications_none</i>
			</label> <label class="w3-right right-fx"> <label id="uname-1"
				class=" w3-round-xxlarge"
				onmouseover="document.getElementById('uname-1').style.backgroundColor='lightgrey';"
				onmouseout="document.getElementById('uname-1').style.backgroundColor='#009688';">
					<img class=" w3-round-xxlarge"
					src="<%=x.geturl((String) session.getAttribute("mail"))%>"
					style="height: 0.8cm; width: 0.8cm;"> <label><%=session.getAttribute("name")%></label>
			</label>
			</label> <label class="w3-right right-fx"> <a href="home.jsp"
				style="color: white;"><i class="fas fa-home fa-2x"
					id="home-header"></i></a>
			</label>
		</nav>
	</header>
<br><br>
    <%jdbc jx = new jdbc();String values = jx.getvall((String) session.getAttribute("mail"));%>
        <!-- hide this div when tere are no notifications -->
         
        <div class="w3-center" style="padding: 5px 150px 0px 150px;" <%if(values == null){values = "";}if(values.equals("")){out.println("hidden");}else{out.println();} %>>
            <div >
                <div><h1 style="font-size: x-large; text-align: left;" class="w3-padding" 
                	
                ><u>NOTIFICATIONS </u></h1></div>

                <div class="w3-padding-16"></div>

                <div><h6 style="font-weight: bold; text-align: left;"class="w3-padding">New</h6></div>
                <div class="w3-card w3-round-medium " style="width: 100%;padding-bottom: 10px;">
                    <%
                    notifications no = new notifications();
                    String mail  = (String)session.getAttribute("mail");
                    String[] m = no.mail(mail);
                    for(String i : m){System.out.println(i);}
                    String[] n = no.name(mail);
                    String[] pro = no.profilepic(mail);
                    String[] p = no.profession(mail);
                    String[] w = no.workplace(mail);
                    %>
                    <% for(int i = 1 ; i< m.length ; i++){
                    	out.println("<div class=\"row\" style=\"padding: 10px;\">\r\n"
                        		+ "                        <div class=\"col-sm-2\">\r\n"
                        		+ "                            <img src="+pro[i]+" class=\"w3-circle\" height=\"70cm\">\r\n"
                        		+ "                        </div>\r\n"
                        		+ "                        <div class=\"col-sm-7\"style=\"padding-left: 30px;\">\r\n"
                        		+ "                            <h5 style=\"text-align: left;\">"+n[i]+" || "+p[i]+" at "+w[i]+"</h5>\r\n"
                        		+ "                            <p style=\"text-align: left;\">"+n[i]+" Has requested to see your profile </p>\r\n"
                        		+ "                        </div>\r\n"
                        		+ "                        <div class=\"col-sm-3\" style=\"padding-top: 20px;\">\r\n"
                        		+ "                        <form method =\"post\">\r\n <input type=\"text\" value = "+m[i]+ " hidden name = \"requestedmail143\">"
                        		+ "                            <button class=\"w3-button w3-round-medium w3-green\" type=\"submit\" style=\"display:inline-block;\" formaction=\"viewprofile\" formmethod=\"get\">View</button>\r\n"
                        		+ "                            <button class=\"w3-button w3-round-medium w3-green\" type=\"submit\" style=\"display:inline-block;\" formaction=\"afollow\">Accept</button>\r\n"
                        		+ "                            </form>\r\n"
                        		+ "                        </div>\r\n"
                        		+ "                    </div>");
                    } %>
                    <!--  <div class="row" style="padding: 10px;">
                        <div class="col-sm-2">
                            <img src="web/images/img_avatar1.png" class="w3-circle" height="70cm">
                        </div>
                        <div class="col-sm-8"style="padding-left: 30px;">
                            <h5 style="text-align: left;">Surya || Student at Bennett University</h5>
                            <p style="text-align: left;">Surya Has requested to see your profile </p>
                        </div>
                        <div class="col-sm-2" style="padding-top: 20px;">
                        <form method ="post">
                            <button class="w3-button w3-round-medium w3-green" type="submit">Accept</button>
                            </form>
                        </div>
                    </div> -->
                    
                </div>
            </div>
        </div>
        <div class="w3-center"  <%if(m.length<=1){out.println();}else{out.println("hidden");} %>>
            <img  src="web/images/notifications.svg" width="800cm"alt="">
        </div> 
</body>

</html>