<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.profio.*"%>
<!DOCTYPE html>
<html>

<head>
<title>Profile-user</title>
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
<style>
	.asdfgh:disabled{
		pointer-events: none;
	}
</style>
</head>

<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("mail") == null) {
		response.sendRedirect("login.jsp");
	}
	Data p = (Data) session.getAttribute("p");
	String fa = p.getSocial();
	String[] faa = fa.split("//");
	
	
	permissions per = new permissions();
	boolean[] viz  = per.permission((String)session.getAttribute("mail"), (String)session.getAttribute("rmail"));
	%>

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
						& Privacy</a> <a href="#" class="w3-bar-item w3-button">Help &
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
	<%follow f = new follow(); String[] sa =f.getfollow((String)session.getAttribute("mail"), (String)session.getAttribute("rmail")); %>
	<%boolean fol =  sa[0].equals("following"); %>
	<br>
	<br>
	<br>
	<br>
	<div class="w3-row-padding">
		<div class="w3-twothird ">
			<div class="w3-card-4 w3-round-large">
				<div>
					<img src="web/resources/img/bg-for-profile-u-edit.png"
						style="width: 100%;"> <img class="w3-circle"
						id="profile-pic-profile" src="<%=x.geturl(p.getRmail())%>">
				</div>
				<div>
					<br>
					<br>
					<br>
					<br>
					<br>
					<h1>
						<label><%=p.getName()%></label>
					</h1>

				</div>
				<div id="user-bio">
					<label> <%=p.getProfession()%> At <%=p.getWorkplace()%></label>
				</div>

				<div>
					<p id="location">
						<i
							class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal w3-hover-text-deep-purple"></i><label>Vizag,India</label>
					</p>
				</div>
				<hr>
				<div class="row">
					<!--  
					<div class="col">
						<label style="padding-left: 1cm;"></label><label id="contact-info"
							data-toggle="modal" data-target="#myModal"> Contact info
						</label>
					</div>
					-->
					<%  
					if(viz[0] || fol){
						out.println("<div class=\"col\">\r\n"
			            		+ "						<label style=\"padding-left: 1cm;\"></label><label id=\"contact-info\"\r\n"
			            		+ "							data-toggle=\"modal\" data-target=\"#myModal\"> Contact info\r\n"
			            		+ "						</label>\r\n"
			            		+ "					</div>" );
					}
					%>
					<div class="col"></div>
					<div class="col"
						<%if (p.getMail().equals(p.getRmail())) {
} else {
	out.println("hidden");
}%>>
						<label id="edit-profile" class="w3-circle" data-toggle="tooltip"
							title="Edit Profile"><i class="material-icons">edit</i></label>
					</div>
										<!-- FOLLOWIG  -->
									 <div class="col"
						 <%if (p.getMail().equals(p.getRmail())) {out.println("hidden");
} else {
}%>>
						<div class="w3-padding w3-right" ></div><form action = "followw" method="post"><button type="submit" id="edit-profile" class="w3-btn btn btn-primary w3-right asdfgh" data-toggle="tooltip"
							title="<%= sa[1]%>" <%= sa[2] %> data-placement="right" style="padding: 5px 20px 5px 20px;"><%= sa[0] %></button></form> <br>
							
							<div class="w3-padding"></div> 
							<!-- END OF FOLLOWING -->
					</div>
					<div class="modal fade" id="myModal">
						<div class="modal-dialog modal-dialog-scrollable"
							style="width: 498px;">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">Contact Info</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<div class="w3-card w3-white w3-padding">
										<span><i class="material-icons" style="color: skyblue;">mail</i>
											<a href="mailto:<%=p.getRmail()%>"
											style="padding-left: 20px;"> <%=p.getRmail()%></a></span>
									</div>
									<div class="w3-card w3-white w3-padding">
										<span><i class="material-icons" style="color: skyblue;">phone</i>
											<a href="tel:+91<%=p.getNum()%>" style="padding-left: 20px;">
												+91 <%=p.getNum()%></a></span>
									</div>
									<div class="w3-card w3-white w3-padding">
										<span><i class="fas fa-link" style="color: skyblue;"></i>
											<a href="<%=faa[5]%>" style="padding-left: 20px;"> <%=faa[5]%></a></span>
									</div>
									<hr>
									<div style="padding-bottom: 5px;"></div>
									<div class="w3-card w3-white w3-padding">
										<span><i class="fab fa-facebook-square facebook fa-2x"></i>
											<a
											href="https://www.facebook.com/search/people/?q=<%=faa[2]%>"
											style="padding-left: 20px;"> <%=faa[2]%></a></span>
									</div>
									<div style="padding-bottom: 5px;"></div>
									<div class="w3-card w3-white w3-padding">
										<span><i class="fab fa-twitter-square fa-2x twitter"></i>
											<a href="https://www.twitter.com/<%=faa[3]%>"
											style="padding-left: 20px;"> <%=faa[3]%></a></span>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Close</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w3-card-4 w3-round-large "></div>
			<div style="padding-top: 1cm;"></div>
			<div class="w3-card-4 w3-round-medium  dash-blue"   <%if(viz[0] && viz[1] && viz[2] && viz[3] && viz[4] ){out.println("hidden");} %>>
				<div style="padding-left: 0.5cm; padding-top: 0.5cm;">
					
					<h2 class="w3-padding">
						<label> Dashboard</label>
					</h2>
					<h3>
						<label>Only You can see this!  
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
						<path d="M11 6.999c2.395.731 4.27 2.607 4.999 5.001.733-2.395 2.608-4.269 5.001-5-2.393-.731-4.268-2.605-5.001-5-.729 2.394-2.604 4.268-4.999 4.999zm7 7c1.437.438 2.562 1.564 2.999 3.001.44-1.437 1.565-2.562 3.001-3-1.436-.439-2.561-1.563-3.001-3-.437 1.436-1.562 2.561-2.999 2.999zm-6 5.501c1.198.365 2.135 1.303 2.499 2.5.366-1.198 1.304-2.135 2.501-2.5-1.197-.366-2.134-1.302-2.501-2.5-.364 1.197-1.301 2.134-2.499 2.5zm-6-8.272c.522.658 1.118 1.253 1.775 1.775-.657.522-1.252 1.117-1.773 1.774-.522-.658-1.118-1.253-1.776-1.776.658-.521 1.252-1.116 1.774-1.773zm-.001-4.228c-.875 2.873-3.128 5.125-5.999 6.001 2.876.88 5.124 3.128 6.004 6.004.875-2.874 3.128-5.124 5.996-6.004-2.868-.874-5.121-3.127-6.001-6.001z"/>
						</svg>
						</label>
						<br>
						It seems that you are not seeing the complete profile . Click follow in order to see complete profile.
						<div class="w3-padding"></div>
					</h3>

				</div>
			</div>
			<div style="padding-top: 1cm;"></div>
			<div class="w3-card-4 w3-round-large  dash-blue"
				<%if (p.getMail().equals(p.getRmail())) {
} else {
	out.println("hidden");
}%>>
				<div style="padding-left: 0.5cm; padding-top: 0.5cm;">
					<label style="padding-top: 1cm; padding-right: 1cm;"
						class="w3-right"><i class="material-icons w3-right">military_tech</i></label>
					<h2 class="w3-padding">
						<label> Dashboard</label>
					</h2>
					<h3>
						<label>Private to you! </label>
					</h3>

				</div>
				<div style="padding: 1cm;">
					<div class="row border w3-round-large">
						<div class="col">
							<a href="#">
								<div style="padding-top: 15px; font-size: x-large;">10</div>
								<div>Number Of Connections</div>
							</a>
						</div>
						<div class="col border-l">
							<a href="#">
								<div style="padding-top: 15px; font-size: x-large;">10</div>
								<div>Number Of Appearences</div>
							</a>
						</div>
					</div>
				</div>
				<div style="padding: 0px 0.8cm 0.5cm 0.8cm;">
					<div class="col border w3-round-medium">
						<div class="row" style="padding: 10px;">
							<a href="#">
								<div class="row">
									<div class="col-sm-2">
										<i class="material-icons fa-2x">people</i>
									</div>
									<div class="col-sm-10" style="padding-left: 0.7cm;">
										<div>10</div>
										<div>Manage View Requests</div>
									</div>
								</div>
							</a>
						</div>
						<div class="row border-x" style="padding: 10px;">
							<a href="#">
								<div class="row">
									<div class="col-sm-2">
										<i class="fas fa-search fa-2x"></i>
									</div>
									<div class="col-sm-10">
										<div>10</div>
										<div>Number Of Search Appearences</div>
									</div>
								</div>
							</a>
						</div>
					</div>
					<hr>
					<label
						style="font-family: 'Viaoda Libre', cursive; font-size: large">If
						you would like to customize visibility of your Profile,Check <a
						href="settings.jsp"><cite title="PRIVACY SETINGS">Here.</cite></a>
					</label>
				</div>
			</div>
			<div style="padding-top: 1.5cm;"></div>
			<!--  --><%Load_edu_li_w dd = new Load_edu_li_w();boolean bb = dd.edcount((String) session.getAttribute("rmail"))>1;System.out.println(bb);%>
			<div class="mx-auto "  <%if (p.getMail().equals(p.getRmail())) {
} else {
	
	out.println("hidden");
} if(bb){out.println("hidden");}%>>
				<div class="p-5 bg-white shadow w3-round-xlarge rounded">
					<!-- Bootstrap carousel-->
					<div class="carousel slide" id="carousel" data-ride="carousel">
						<!-- Bootstrap carousel indicators [nav] -->
						<ol class="carousel-indicators mb-0">
							<li class="active" data-target="#carousel" data-slide-to="0"></li>
							<li data-target="#carousel" data-slide-to="1"></li>
							<li data-target="#carousel" data-slide-to="2"></li>
						</ol>


						<!-- Bootstrap inner [slides]-->
						<div class="carousel-inner px-5 pb-4">
							<!-- Carousel slide  1-->
							<div class="carousel-item active">
								<div class="media">
									<div class="media-body ml-3">
										<blockquote class="blockquote border-0 p-0">
											<h1
												style="padding-left: 0px; font-size: large; font-style: italic;">It
												seems that You have not added any educational details to
												your profile.</h1>
											<p class="font-italic lead">
												<i class="fa fa-quote-left mr-3 text-success"></i>It is
												always good to highlight the school education part. It will
												help the employer to know about your academic progress from
												your school age.
											</p>
											<hr>
											<h1 style="padding-left: 0px;">
												Get started here
												<button class="btn btn-primary" data-toggle="modal"
													data-target="#modal-edu-edit">Add Now</button>
											</h1>

										</blockquote>
									</div>
								</div>
							</div>

							<!-- Carousel slide  2-->
							<div class="carousel-item">
								<div class="media">
									<div class="media-body ml-3">
										<blockquote class="blockquote border-0 p-0">
											<h1
												style="padding-left: 0px; font-size: large; font-style: italic;">It
												seems that You have not added any certificates or licences.</h1>
											<p class="font-italic lead">
												<i class="fa fa-quote-left mr-3 text-success"></i>Applicants
												often struggle to convey what they can actually do for a
												company. Speaking confidently about a skillset that you've
												developed can help guide interviewers in the right
												direction. Adding your certificates provides a clear-cut
												example of what you know and what you can get done."
											</p>
											<footer class="blockquote-footer">
												Team <cite title="Source Title">PROFIO</cite>
											</footer>
											<hr>
											<h1 style="padding-left: 0px;">
												Get started here
												<button class="btn btn-primary" data-toggle="modal"
													data-target="#modal-work-edit">Add Now</button>
											</h1>
										</blockquote>
									</div>
								</div>
							</div>

							<!-- Carousel slide  3-->
							<div class="carousel-item">
								<div class="media">
									<div class="media-body ml-3">
										<blockquote class="blockquote border-0 p-0">
											<h1
												style="padding-left: 0px; font-size: large; font-style: italic;">It
												seems that You have not added any previous work experience
												to your profile.</h1>
											<p class="font-italic lead">
												<i class="fa fa-quote-left mr-3 text-success"></i>91% of
												employers prefer their candidates to have work experience,
												and 65% of them prefer their candidates to have relevant
												work experience.
											</p>
											<footer class="blockquote-footer">
												Team <cite title="Source Title">PROFIO</cite>
											</footer>
											<hr>
											<h1 style="padding-left: 0px;">
												Get started here
												<button class="btn btn-primary" data-toggle="modal"
													data-target="#modal-work-edit">Add Now</button>
											</h1>
										</blockquote>
									</div>
								</div>
							</div>

						</div>


						<!-- Bootstrap controls [dots]-->
						<a class="carousel-control-prev width-auto" href="#carousel"
							role="button" data-slide="prev"> <i
							class="fa fa-angle-left text-dark text-lg"></i> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next width-auto" href="#carousel"
							role="button" data-slide="next"> <i
							class="fa fa-angle-right text-dark text-lg"></i> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
			<!--  -->
			<div style="padding-top: 0.5cm;"></div>
			
			<div <%if (( viz[1] || fol) ) {
} else {
	out.println("hidden");
}%>>
				<div class="card">
					<div class="card-header"
						onmousemove="document.getElementById('addiconedu').style.display='block'"
						onmouseout="document.getElementById('addiconedu').style.display='none'">
						<label
							style="font-size: large; font-family: cursive; font-weight: 400; padding-top: 0.3cm;">Education</label>
						<label class=" w3-right "
							<%if (p.getMail().equals(p.getRmail())) {
} else {
	out.println("hidden");
}%>><i
							class="material-icons w3-circle " style="padding: 10px;"
							data-toggle="modal" data-target="#modal-edu-edit"
							onmouseover="style.backgroundColor='lightgrey'"
							onmouseout="style.backgroundColor='#f7f7f7'">edit</i></label> <label
							class=" w3-right "
							<%if (p.getMail().equals(p.getRmail())) {
} else {
	out.println("hidden");
}%>>
							<div id="addiconedu">
								<i class="material-icons w3-circle" style="padding: 10px;"
									data-toggle="modal" data-target="#modal-edu-edit"
									onmouseover="style.backgroundColor='lightgrey'"
									onmouseout="style.backgroundColor='#f7f7f7'">add</i>
							</div>
						</label>
					</div>
					
					<div class="card-body" style="padding: 0.3cm 0.5cm 0.5cm 0.5cm;">
						<div class="card">
							<div class="card-body">
								<% Load_edu_li_w d = new Load_edu_li_w(); 
									String[] ename = d.returnedname((String) session.getAttribute("rmail"));
									String[] next  = d.returneded((String) session.getAttribute("rmail"));
									String[] year = d.returnedyear((String) session.getAttribute("rmail"));
									
									String[] lname = d.returnliname((String) session.getAttribute("rmail"));
									String[] lcompn  = d.returnlicname((String) session.getAttribute("rmail"));
									String[] lyear = d.returnliyear((String) session.getAttribute("rmail"));
									String[] lid = d.returnliid((String) session.getAttribute("rmail"));
									String[] url = d.returnliurl((String) session.getAttribute("rmail"));
									
									String[] wname = d.returnwoname((String) session.getAttribute("rmail"));
									String[] wnext  = d.returnwoed((String) session.getAttribute("rmail"));
									String[] wyear = d.returnwoyear((String) session.getAttribute("rmail"));
								
								%>
								<%
									for(int i = 1 ;i<d.edcount((String) session.getAttribute("rmail")); i++){
										out.println("<div class=\"card-columns row w3-padding\">\r\n"
							            		+ "									<div class=\"col-sm-2\">\r\n"
							            		+ "										<img class=\"w3-circle \" src=\"web/resources/img/school.png\"\r\n"
							            		+ "											style=\"height: 2cm; width: 2cm; background-color: antiquewhite;\">\r\n"
							            		+ "									</div>\r\n"
							            		+ "									<div class=\"col-sm-8\">\r\n"
							            		+ "										<label style=\"line-height: 0.3cm;\"> <label><strong>"+ename[i]+"</strong></label></label><br> <label style=\"line-height: 0.3cm;\">"+next[i]+"</label><br> <label\r\n"
							            		+ "											style=\"font-weight: 100; line-height: 0.2cm;\">"+year[i]+"</label>\r\n"
							            		+ "									</div>\r\n"
							            		+ "								</div>\r\n"
							            		+ "								<hr>");
									}
									if(d.edcount((String) session.getAttribute("rmail"))<=1){
										out.println("Nothing to show here");
									}
								%>
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<label><br></label>
			<div >
				<div class="card" <%if ( viz[2] || fol) {
} else {
	out.println("hidden");
}%>>
					<div class="card-header">
						<label
							style="font-size: large; font-weight: 400; padding-top: 0.3cm;">
							Licenses /Certifications </label> <label class=" w3-right "><i
							class="material-icons w3-circle " style="padding: 10px;"
							onmouseover="style.backgroundColor='lightgrey'"
							onmouseout="style.backgroundColor='#f7f7f7'" data-toggle="modal"
							data-target="#modal-certificate-edit"
							<%if (p.getMail().equals(p.getRmail())) {
} else {
	out.println("hidden");
}%>>edit</i></label>
						<label class=" w3-right" id="addiconcertifications"><i
							class="material-icons w3-circle" style="padding: 10px;"
							onmouseover="style.backgroundColor='lightgrey'"
							onmouseout="style.backgroundColor='#f7f7f7'" data-toggle="modal"
							data-target="#modal-certificate-edit"
							<%if (p.getMail().equals(p.getRmail())) {
} else {
	out.println("hidden");
}%>>add</i></label>
					</div>
					<div class="card-body" style="padding: 0.3cm 0.5cm 0.5cm 0.5cm;">
						<div class="card">
							<div class="card-columns row w3-padding">
							
								<div class="card-body">
									<!--  <div class="card-columns row w3-padding">
										<div class="col-sm-2">
											<img class="w3-circle "
												src="web/resources/img/certificates.png"
												style="height: 2cm; width: 100%; background-color: antiquewhite;">
										</div>
										<div class="col-sm-8">
											<label style="line-height: 0.3cm;"> <a href="#"
												class="certificate-style"> <label
													style="line-height: 0.3cm; font-weight: bold;">Certificate
														name-like IBM cloud development</label><br> <label
													style="line-height: 0.3cm;">Company Name :like IBM</label><br>
													<label style="line-height: 0.3cm;">Issued Date
														-Expiration Date</label><br> <label
													style="font-weight: 100; line-height: 0.2cm;">Credential
														Id:397fa137bb6543a2a937de66af2e4bac</label>
											</a><br>
											<br> <a
												href="https://credentials.edx.org/credentials/397fa137bb6543a2a937de66af2e4bac/"
												id="ve-cred">See Credential</a>
										</div>
									</div>
									<hr> -->
									
									<%
									for(int i = 1 ;i<d.licount((String) session.getAttribute("rmail")); i++){
										out.println("									<div class=\"card-columns row w3-padding\">\r\n"
							            		+ "										<div class=\"col-sm-2\">\r\n"
							            		+ "											<img class=\"w3-circle \"\r\n"
							            		+ "												src=\"web/resources/img/certificates.png\"\r\n"
							            		+ "												style=\"height: 2cm; width: 100%; background-color: antiquewhite;\">\r\n"
							            		+ "										</div>\r\n"
							            		+ "										<div class=\"col-sm-8\">\r\n"
							            		+ "											<label style=\"line-height: 0.3cm;\"> <a href=\"#\"\r\n"
							            		+ "												class=\"certificate-style\"> <label\r\n"
							            		+ "													style=\"line-height: 0.3cm; font-weight: bold;\">"+lname[i]+"</label><br> <label\r\n"
							            		+ "													style=\"line-height: 0.3cm;\">"+lcompn[i]+"</label><br>\r\n"
							            		+ "													<label style=\"line-height: 0.3cm;\">"+lyear[i]+"</label><br> <label\r\n"
							            		+ "													style=\"font-weight: 100; line-height: 0.2cm;\">Credential\r\n"
							            		+ "														Id:"+lid[i]+"</label>\r\n"
							            		+ "											</a><br>\r\n"
							            		+ "											<br> <a\r\n"
							            		+ "												href="+url[i]+"\r\n"
							            		+ "												id=\"ve-cred\">See Credential</a>\r\n"
							            		+ "										</div>\r\n"
							            		+ "									</div>\r\n"
							            		+ "									<hr>");
									}
									if(d.licount((String) session.getAttribute("rmail"))<=1){
										out.println("Nothing to show here");
									}
								%>
									
									
									
								</div>
								
								
							</div>
						</div>

					</div>
				</div>
				<label><br></label>
				<div class="card "  <%if ( viz[3] || fol) {
} else {
	out.println("hidden");
}%>>
					<div class="card-header w3-padding-24"
						style="font-family: cursive; font-size: large;">
						Previous Work Experience <label class=" w3-right "><i
							class="material-icons w3-circle " style="padding: 10px;"
							onmouseover="style.backgroundColor='lightgrey'"
							data-toggle="modal" data-target="#modal-work-edit"
							onmouseout="style.backgroundColor='#f7f7f7'"
							<%if (p.getMail().equals(p.getRmail())) {
} else {
	out.println("hidden");
}%>>edit</i></label>
						<label class=" w3-right" id="addiconcertifications"><i
							class="material-icons w3-circle" style="padding: 10px;"
							onmouseover="style.backgroundColor='lightgrey'"
							data-toggle="modal" data-target="#modal-work-edit"
							onmouseout="style.backgroundColor='#f7f7f7'"
							<%if (p.getMail().equals(p.getRmail())) {
} else {
	out.println("hidden");
}%>>add</i></label>
					</div>
					<div class="card-body">
					<div class="card w3-padding">
						<!--  <div class="card-columns row w3-padding">
							<div class="col-sm-2">
								<img class="w3-circle "
									src="web/resources/img/iconmonstr-task-1-240-.png"
									style="height: 2cm; width: 2cm; color: black;">
							</div>
							<div class="col-sm-8">
								<label style="line-height: 0.3cm;"> <label><strong>Company
											Name</strong></label></label><br> <label style="line-height: 0.3cm;">worked
									as</label><br> <label
									style="font-weight: 100; line-height: 0.2cm;">from year
									- to year</label>
							</div>
						</div>
						<hr>  -->
						<%
									for(int i = 1 ;i<d.wocount((String) session.getAttribute("rmail")); i++){
										out.println("<div class=\"card-columns row w3-padding\">\r\n"
							            		+ "							<div class=\"col-sm-2\">\r\n"
							            		+ "								<img class=\"w3-circle \"\r\n"
							            		+ "									src=\"web/resources/img/iconmonstr-task-1-240-.png\"\r\n"
							            		+ "									style=\"height: 2cm; width: 2cm; color: black;\">\r\n"
							            		+ "							</div>\r\n"
							            		+ "							<div class=\"col-sm-8\">\r\n"
							            		+ "								<label style=\"line-height: 0.3cm;\"> <label><strong>"+wname[i]+"</strong></label></label><br> <label style=\"line-height: 0.3cm;\">"+wnext[i]+"</label><br> <label\r\n"
							            		+ "									style=\"font-weight: 100; line-height: 0.2cm;\">"+wyear+"</label>\r\n"
							            		+ "							</div>\r\n"
							            		+ "						</div>\r\n"
							            		+ "						<hr>");
									}
									if(d.wocount((String) session.getAttribute("rmail"))<=1){
										out.println("Nothing to show here");
									}
								%>
						
						
						<!--  <div class="card-columns row w3-padding">
							<div class="col-sm-2">
								<img class="w3-circle "
									src="web/resources/img/iconmonstr-task-1-240-.png"
									style="height: 2cm; width: 2cm; color: black;">
							</div>
							<div class="col-sm-8">
								<label style="line-height: 0.3cm;"> <label><strong>IBM</strong></label></label><br>
								<label style="line-height: 0.3cm;">IT Professional</label><br>
								<label style="font-weight: 100; line-height: 0.2cm;">2018-2021</label>
							</div>
						</div>-->
					</div></div>
				</div>
				<div>
					<br>
					<br>
				</div>
				<div class="w3-card w3-round-xlarge w3-padding-16  dash-blue">
					<h1 style="padding-top: 10px;">
						looking for someone else ? <br> Get started here!!!
					</h1>
					<br>
					<form action="pro" method="get" class="form">
						<label style="text-align: center; height: max-content;">
							<div class="input-field">
								<i class="fas fa-search"></i> <input type="search" name="search"
									placeholder="Find Someone ?" id="inpf"
									onkeypress="document.getElementById('cross').style.display='block';" />
								<i class="fas fa-times-circle" style="display: none;"
									onmouseover="this.style.color='red';"
									onmouseout="this.style.color='#acacac';"
									onclick="document.getElementById('inpf').value=null" id="cross"></i>
							</div>
						</label>
					</form>
				</div>
				<div class="w3-padding"></div>
				<div class="modal fade" id="modal-edu-edit">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Add/Edit Educational Details.</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
							<!-- Modal body -->
							<div class="modal-body">
								<div class="w3-bar w3-black">
									<button class="w3-bar-item w3-button"
										onclick="openCity('Add-New-edu')">Add New</button>
									<button class="w3-bar-item w3-button"
										onclick="openCity('Edit-edu')">Edit Existing</button>
								</div>
								<div id="Add-New-edu"
									class="w3-container w3-display-container edu">
									<h4 style="font-family: cursive; padding: 15px 0px 15px 0px;">Add
										New</h4>
									<form action = "add" method="post" class="was-validated">
										<div class="form-group">
											<label for="school-add">School:</label> <input type="text"
												class="form-control" placeholder="Ex:Bennett University"
												id="school-add" name= "uniname" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group">
											<label for="degree-add">Field Of Study:</label> <input
												type="text" class="form-control" placeholder="Ex:B-tech."
												id="degree-add" name="whatdid" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group">
											<label for="from-year-add">Start Year</label> <input
												type="month" class="form-control" name="starty" placeholder="Jul,2020"
												id="from-year-add" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
											<label for="to-year-add">End Year/Expected Year</label> <input
												type="month" class="form-control" name="endy" placeholder="Jul,2024"
												id="to-year-add" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<button type="submit" class="btn btn-primary">Submit</button>
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Discard</button>
									</form>
								</div>
								<div id="Edit-edu" class="w3-container w3-display-container edu"
									style="display: none">
									<h4 style="font-family: cursive; padding: 15px 0px 15px 0px;">Edit
										Existing</h4>
									<div>
										<div class="w3-card w3-padding-16"
											style="padding: 0px 20px 0px 20px;">
											Bennett University <a type="submit"
												class="btn btn-danger w3-right">X</a>
										</div>
										<div class="w3-card w3-padding-16"
											style="padding: 0px 20px 0px 20px;">
											Ascent Classes <a type="submit"
												class="btn btn-danger w3-right">X</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="modal fade" id="modal-certificate-edit">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Add/Edit Certificate Details.</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
							<!-- Modal body -->
							<div class="modal-body">
								<div class="w3-bar w3-black">
									<button class="w3-bar-item w3-button"
										onclick="openCity('Add-New-cer')">Add New</button>
									<button class="w3-bar-item w3-button"
										onclick="openCity('Edit-cer')">Edit Existing</button>
								</div>
								<div id="Add-New-cer"
									class="w3-container w3-display-container edu">
									<h4 style="font-family: cursive; padding: 15px 0px 15px 0px;">Add
										New</h4>
									<form action="add2" method="post" class="was-validated">
										<div class="form-group">
											<label for="cer-add">Certificate Name:</label> <input
												type="text" class="form-control"
												placeholder="Ex:IBM certified Data Analyst" id="cer-add" name="cname"
												required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group">
											<label for="org-add">Issued Organisation:</label> <input
												type="text" class="form-control" placeholder="Ex:IBM" name="orgname"
												id="org-add" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group">
											<label for="org-add">Credential Id:</label> <input
												type="text" class="form-control" placeholder="ID" name="cerid"
												id="org-add" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group">
											<label for="org-add">Credential URL:</label> <input
												type="text" class="form-control" placeholder="url" name="url"
												id="org-add" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group">
											<label for="from-year-add-cer">Issued Date</label> <input
												type="month" class="form-control" placeholder="Jul,2020" name= "syear"
												id="from-year-add-cer" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
											<label for="to-year-add-cer">Expiration Year</label> <input
												type="month" class="form-control" placeholder="Jul,2024" name= "tyear"
												id="to-year-add-cer" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<button type="submit" class="btn btn-primary"
											>Submit</button>
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Discard</button>
									</form>
								</div>
								<div id="Edit-cer" class="w3-container w3-display-container edu"
									style="display: none">
									<h4 style="font-family: cursive; padding: 15px 0px 15px 0px;">Edit
										Existing</h4>
									<div>
										<div class="w3-card w3-padding-16"
											style="padding: 0px 20px 0px 20px;">
											Certificate name-like IBM cloud development <a type="submit"
												class="btn btn-danger w3-right">X</a>
										</div>
										<div class="w3-card w3-padding-16"
											style="padding: 0px 20px 0px 20px;">
											CAD101EN-Introduction to Cloud Development with HTML, CSS,
											and JavaScript<a type="submit"
												class="btn btn-danger w3-right">X</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="modal-work-edit">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Add/Edit Previous Work Details.</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
							<!-- Modal body -->
							<div class="modal-body">
								<div class="w3-bar w3-black">
									<button class="w3-bar-item w3-button"
										onclick="openCity('Add-New-work')">Add New</button>
									<button class="w3-bar-item w3-button"
										onclick="openCity('Edit-work')">Edit Existing</button>
								</div>
								<div id="Add-New-work"
									class="w3-container w3-display-container edu">
									<h4 style="font-family: cursive; padding: 15px 0px 15px 0px;">Add
										New</h4>
									<form action="add3" method="post" class="was-validated">
										<div class="form-group">
											<label for="work-add">Company Name:</label> <input
												type="text" class="form-control" placeholder="Ex:IBM" name="cname"
												id="work-add" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group">
											<label for="worked-as-add">Worked as:</label> <input
												type="text" class="form-control"
												placeholder="Ex:Data Analyst" id="worked-as-add" name="work" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group">
											<label for="from-year-add-work">Worked From</label> <input
												type="month" class="form-control" placeholder="Jul,2020" name="fyear"
												id="from-year-add-work" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
											<label for="to-year-add-work">Worked Till</label> <input
												type="month" class="form-control" placeholder="Jul,2024" name="tyear"
												id="to-year-add-work" required>
											<div class="valid-feedback"></div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<button type="submit" class="btn btn-primary">Submit</button>
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Discard</button>
									</form>
								</div>
								<div id="Edit-work"
									class="w3-container w3-display-container edu"
									style="display: none">
									<h4 style="font-family: cursive; padding: 15px 0px 15px 0px;">Edit
										Existing</h4>
									<div>
										<div class="w3-card w3-padding-16"
											style="padding: 0px 20px 0px 20px;">
											Company Name <a type="submit" class="btn btn-danger w3-right">X</a>
										</div>
										<div class="w3-card w3-padding-16"
											style="padding: 0px 20px 0px 20px;">
											IBM<a type="submit" class="btn btn-danger w3-right">X</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="w3-third "><br>
			<div class="w3-card w3-round-medium">
				<div class="w3-container">
					<br>
					<p>
						<i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><%=p.getProfession()%>
						</p>
					<p>
						<i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><%=p.getCity()%>,
						<%=p.getCountry()%>
						</p>
					<p <%if(viz[4] || fol){}else{out.println("hidden");} %>>
						<i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i><a
							style="color: black;" href="mailto:<%=p.getRmail()%>"><%=p.getRmail()%></a>
						</p>
					<p <%if(viz[4] || fol){}else{out.println("hidden");} %>>
						<i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>+91
						<%=p.getNum()%>
						</p>
				</div>
			</div>
			<br>

			<div class="card" <%if(viz[4] || fol){}else{out.println("hidden");} %>>
				<div class="card-header">Other Social Accounts</div>
				<div class="card-body">
					<div class="w3-card w3-white w3-padding ">
						<span><span class="instagram"><i
								class="fab fa-instagram"></i></span> <a
							href="https://instagram.com/<%=faa[1]%>"
							style="padding-left: 20px;"> <%=faa[1]%></a></span>
					</div>
					<div style="padding-bottom: 5px;"></div>
					<div class="w3-card w3-white w3-padding">
						<span><i class="fab fa-facebook-square facebook fa-2x"></i>
							<a href="https://www.facebook.com/search/people/?q=<%=faa[2]%>"
							style="padding-left: 20px;"> <%=faa[2]%></a></span>
					</div>
					<div style="padding-bottom: 5px;"></div>
					<div class="w3-card w3-white w3-padding">
						<span><i class="fab fa-snapchat-square snapchat fa-2x"></i>
							<a href="https://www.snapchat.com/add/<%=faa[4]%>"
							style="padding-left: 20px;"> <%=faa[4]%></a></span>
					</div>
					<div style="padding-bottom: 5px;"></div>
					<div class="w3-card w3-white w3-padding">
						<span><i class="fab fa-twitter-square fa-2x twitter"></i> <a
							href="https://www.twitter.com/<%=faa[3]%>"
							style="padding-left: 20px;"> <%=faa[3]%></a></span>
					</div>
					<div style="padding-bottom: 5px;"></div>
					<div class="w3-card w3-white w3-padding">
						<span><i class="fab fa-github-square fa-2x"></i> <a
							href="https://github.com/search?q=<%=faa[5]%>&type=users"
							style="padding-left: 20px;"> <%=faa[5]%></a></span>
					</div>
					<div class=" w3-padding suggested w3-white">
						<label id="ve-mr-suggested"><u> View More</u></label>
					</div>
				</div>
			</div>
			<br>
			<div>
				<div class="w3-quarter ">
					<br>
				</div>
				<div class="w3-threequarter ">
					<div class="w3-card w3-round-large w3-padding">
						<label style="padding-bottom: 0.5cm;">Incoming follow requests.</label>
						<div>
							<div class=" w3-padding suggested w3-light-gray w3-round-large">
								<img class="w3-circle avatar-suggested"
									src="web/images/img_avatar1.png"><span>Name-1</span><span><button
										class="btn btn-outline-primary"
										style="border-radius: 40px; font-size: x-small; padding: 2%; float: right;">Accept</button></span>
							</div>

							<div class=" w3-padding suggested w3-white">
								<label id="ve-mr-suggested"><u> View All</u></label>
							</div>
						</div>
					</div>
					<div style="padding-bottom: 0.5cm;"></div>
					<div class="w3-card">
						<img src="web/resources/img/ad-profio.png"
							class="  w3-round-large" style="width: 300px; height: 260px;">
					</div>
					<br>
				</div>


			</div>
		</div>




	</div>


	<footer class="footer">
		<div class="container">

			<a class="footer__logo" href="home.jsp"> <img
				src="web/resources/img/logo.gif" id="gif-logo"
				style="height: 1cm; width: auto;">
			</a>

			<div class="footer__social">
				<a href="https://www.facebook.com/surya.teja.reddy.222/"> <svg
						xmlns="http://www.w3.org/2000/svg" width="20" height="20">
                        <title>Facebook</title>
                        <path fill="#FFF"
							d="M18.896 0H1.104C.494 0 0 .494 0 1.104v17.793C0 19.506.494 20 1.104 20h9.58v-7.745H8.076V9.237h2.606V7.01c0-2.583 1.578-3.99 3.883-3.99 1.104 0 2.052.082 2.329.119v2.7h-1.598c-1.254 0-1.496.597-1.496 1.47v1.928h2.989l-.39 3.018h-2.6V20h5.098c.608 0 1.102-.494 1.102-1.104V1.104C20 .494 19.506 0 18.896 0z" />
                    </svg>
				</a> <a href="https://github.com/surya-teja-222"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24">
                        <title>Github</title>
                        <path fill="#FFF"
							d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" />
                    </svg>
				</a> <a href="https://github.com/surya-teja-222"> <svg
						xmlns="http://www.w3.org/2000/svg" width="21" height="18">
                        <title>Twitter</title>
                        <path fill="#FFF"
							d="M20.667 2.797a8.192 8.192 0 01-2.357.646 4.11 4.11 0 001.804-2.27 8.22 8.22 0 01-2.606.996A4.096 4.096 0 0014.513.873c-2.649 0-4.595 2.472-3.997 5.038a11.648 11.648 0 01-8.457-4.287 4.109 4.109 0 001.27 5.478A4.086 4.086 0 011.47 6.59c-.045 1.901 1.317 3.68 3.29 4.075a4.113 4.113 0 01-1.853.07 4.106 4.106 0 003.834 2.85 8.25 8.25 0 01-6.075 1.7 11.616 11.616 0 006.29 1.843c7.618 0 11.922-6.434 11.662-12.205a8.354 8.354 0 002.048-2.124z" />
                    </svg>
				</a> <a href="Mailto:suryatejareddy222@gmail.com"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24">
                        <title>Mail</title>
                        <path fill="#FFF"
							d="M0 3v18h24v-18h-24zm6.623 7.929l-4.623 5.712v-9.458l4.623 3.746zm-4.141-5.929h19.035l-9.517 7.713-9.518-7.713zm5.694 7.188l3.824 3.099 3.83-3.104 5.612 6.817h-18.779l5.513-6.812zm9.208-1.264l4.616-3.741v9.348l-4.616-5.607z" />
                    </svg>
				</a> <a href="https://www.instagram.com/surya_teja_222/"> <svg
						xmlns="http://www.w3.org/2000/svg" width="21" height="20">
                        <title>Instagram</title>
                        <path fill="#FFF"
							d="M10.333 1.802c2.67 0 2.987.01 4.042.059 2.71.123 3.976 1.409 4.1 4.099.048 1.054.057 1.37.057 4.04 0 2.672-.01 2.988-.058 4.042-.124 2.687-1.386 3.975-4.099 4.099-1.055.048-1.37.058-4.042.058-2.67 0-2.986-.01-4.04-.058-2.717-.124-3.976-1.416-4.1-4.1-.048-1.054-.058-1.37-.058-4.041 0-2.67.01-2.986.058-4.04.124-2.69 1.387-3.977 4.1-4.1 1.054-.048 1.37-.058 4.04-.058zm0-1.802C7.618 0 7.278.012 6.211.06 2.579.227.56 2.242.394 5.877.345 6.944.334 7.284.334 10s.011 3.057.06 4.123c.166 3.632 2.181 5.65 5.816 5.817 1.068.048 1.408.06 4.123.06 2.716 0 3.057-.012 4.124-.06 3.628-.167 5.651-2.182 5.816-5.817.049-1.066.06-1.407.06-4.123s-.011-3.056-.06-4.122C20.11 2.249 18.093.228 14.458.06 13.39.01 13.049 0 10.333 0zm0 4.865a5.135 5.135 0 100 10.27 5.135 5.135 0 000-10.27zm0 8.468a3.333 3.333 0 110-6.666 3.333 3.333 0 010 6.666zm5.339-9.87a1.2 1.2 0 10-.001 2.4 1.2 1.2 0 000-2.4z" />
                    </svg>
				</a>
			</div>

			<div class="footer__links col1">
				<a href="home.jsp">About Us</a> <a href="home.jsp">Contact</a> <a
					href="home.jsp">Blog</a>
			</div>

			<div class="footer__links col2">
				<a href="home.jsp">Careers</a> <a href="home.jsp">Support</a> <a
					href="home.jsp">Privacy Policy</a>
			</div>

			<div class="footer__cta">
				<a href="mailto:suryatejareddy222@gmail.com" class="button">Contact
					us</a>
			</div>

			<div class="footer__copyright">&copy; Profio. All Rights
				Reserved.</div>

		</div>
	</footer>



	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
	<script>
		function hid(x) {
			var k = document.getElementsByClassName(x);
			k.style.display = 'block';
		}
	</script>
	<script>
		function openCity(cityName) {
			var i;
			var x = document.getElementsByClassName("edu");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			document.getElementById(cityName).style.display = "block";
		}
	</script>



</body>

</html>