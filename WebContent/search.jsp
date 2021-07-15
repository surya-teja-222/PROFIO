<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.profio.getpicurl" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Search</title> 
        <!-- add -jsp in title here -->
        <!-- additional scripts -->
        <link rel="icon" href="web/images/tab-img.ico">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
        <script src="https://kit.fontawesome.com/7d068a4f24.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Antic+Slab&display=swap" rel="stylesheet">
        <style>
            header {position: relative;z-index: 1;background-color: #009688;}
            form {
  flex-direction: column;
  transition: all 0.2s 0.7s;
  overflow: hidden;
  grid-row: 1 / 2;
}

.input-field {
  max-width: 380px;
  width: 100%;
  background-color: #f0f0f0;
  margin: 10px 0;
  height: 55px;
  border-radius: 55px;
  display: grid;
  grid-template-columns: 15% 75% 10%;
  padding: 0 0.4rem;
  position: relative;
}

.input-field i {
  text-align: center;
  line-height: 55px;
  color: #acacac;
  transition: 0.5s;
  font-size: 1.1rem;
}

.input-field input {
  background: none;
  outline: none;
  border: none;
  line-height: 1;
  font-weight: 600;
  font-size: 1.1rem;
  color: #333;
}

.input-field input::placeholder {
  color: #aaa;
  font-weight: 500;
}

#101{
    height: max-content;
    box-shadow:2px 2px 5px 0 rgba(0,0,0,0.16),2px 2px 0px 0 rgba(0,0,0,0.12)
}

h5{
    text-transform: uppercase;
    padding-top: 5px;
}

        </style>
    </head>
    <body style="background-image: url('web/images/picsearch.svg'); background-size: cover;">
        <header class="w3-top ">
            <nav class="w3-teal" style="padding: 24px;">
                <label><a href="home.jsp"><img src="web/images/logo.gif" id="gif-logo" style="height: 1cm; width: auto;"></a></label>
            </nav>
        </header>
<br><br><br><br>
<% getpicurl x = new getpicurl(); %>
        <div class="card-body">
            <div class="row" >
                <div class="col-sm-3" id="101"  >
                <form action = "pro">
                    <h1>
                        <div class="input-field">
                            <i class="fas fa-search"></i>
                            <input type="search" name="search" placeholder="Find Someone ?" value="<%= session.getAttribute("requestedprofile") %>" id= "inpf" onkeypress="document.getElementById('cross').style.display='block';"/>
                            <i class="fas fa-times-circle" style="display: none;" onmouseover="this.style.color='red';" onmouseout="this.style.color='#acacac';" onclick="document.getElementById('inpf').value=null"  id="cross"></i>
                        </div>
                    </h1>
                   </form>
                </div>
                <div class="col-sm-9" style="padding-left: 50px;">                  
                    <% 
                    	String names = (String)session.getAttribute("names"); String[] name = names.split("///");
                    	String profs = (String)session.getAttribute("profs"); String[] prof = profs.split("///");
                    	String works = (String)session.getAttribute("works"); String[] work = works.split("///");
                    	String mails = (String)session.getAttribute("mails"); String[] mail = mails.split("///");
                    	String colours = (String)session.getAttribute("colours"); String[] colour = colours.split("///");
                    	System.out.println(name.length+" "+prof.length+" "+work.length+" "+mail.length +" "+colour.length);
                    	for(int i = 0; i<name.length ; i++){
                    		out.println("                     <form action=\"viewprofile\"><div class=\"w3-card w3-round-large \" style=\"width: 70%;background-color: "+colour[i]+" ;padding-bottom: 10px;\">\r\n"
                            		+ "                        <div class=\"row\" style=\"padding: 10px;\">\r\n"
                            		+ "                            <div class=\"col-sm-2\">\r\n"
                            		+ "                                <img src="+x.geturl(mail[i]) +" class=\"w3-circle\" height=\"70cm\">\r\n"
                            		+ "                            </div>\r\n"
                            		+ "                            <div class=\"col-sm-8\"style=\"padding-left: 30px;\">\r\n"
                            		+ "                                <h5>"+name[i]+"</h5>\r\n"
                            		+ "                                <p>"+prof[i]+" at "+work[i]+"</p>\r\n"
                            		+ "                            </div>\r\n"
                            		+ "                            <div class=\"col-sm-2\" style=\"padding-top: 20px;\">\r\n"
                            		+"<input type=\"text\" name=\"requestedmail143\" value="+mail[i]+" style=\"display:none;\">"
                            		+ "                                <button type=\"submit\" class=\"w3-button w3-round-medium w3-green\">View</button>\r\n"
                            		+ "                            </div>\r\n"
                            		+ "                        </div>\r\n"
                            		+ "                    </div>\r\n"
                            		+ "                    <div class=\"w3-padding\"></div></form>");
                    	}	
                    %>
                    <!--  <div class="w3-card w3-round-large " style="width: 70%;background-color: #f4c2c2;padding-bottom: 10px;">
                        <div class="row" style="padding: 10px;">
                            <div class="col-sm-2">
                                <img src="web/images/img_avatar1.png" class="w3-circle" height="70cm">
                            </div>
                            <div class="col-sm-8"style="padding-left: 30px;">
                                <h5>Surya</h5>
                                <p>Student at Bennett University</p>
                            </div>
                            <div class="col-sm-2" style="padding-top: 20px;">
                                <button class="w3-button w3-round-medium w3-green">View</button>
                            </div>
                        </div>
                    </div>
                    <div class="w3-padding"></div>
                    <div class="w3-card w3-round-large " style="width: 70%;background-color: #fe6f5e;padding-bottom: 10px;">
                        <div class="row" style="padding: 10px;">
                            <div class="col-sm-2">
                                <img src="web/images/img_avatar1.png" class="w3-circle" height="70cm">
                            </div>
                            <div class="col-sm-8"style="padding-left: 30px;">
                                <h5>Surya</h5>
                                <p>Student at Bennett University</p>
                            </div>
                            <div class="col-sm-2" style="padding-top: 20px;">
                                <button class="w3-button w3-round-medium w3-green">View</button>
                            </div>
                        </div>
                    </div>
                    <div class="w3-padding"></div>
                    <div class="w3-card w3-round-large " style="width: 70%;background-color: #aed9e0;padding-bottom: 10px;">
                        <div class="row" style="padding: 10px;">
                            <div class="col-sm-2">
                                <img src="web/images/img_avatar1.png" class="w3-circle" height="70cm">
                            </div>
                            <div class="col-sm-8"style="padding-left: 30px;">
                                <h5>Surya</h5>
                                <p>Student at Bennett University</p>
                            </div>
                            <div class="col-sm-2" style="padding-top: 20px;">
                                <button class="w3-button w3-round-medium w3-green">View</button>
                            </div>
                        </div>
                    </div>-->
                </div>
                
            </div>
        </div>
    
    </body>
</html>