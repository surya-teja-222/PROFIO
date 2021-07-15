<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.profio.getpicurl" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" type="image/png" sizes="32x32" href="web/images/tab-img.ico">
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="web/app/style.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>PROFIO | Home</title>
    <script src="https://kit.fontawesome.com/7d068a4f24.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="877045984053-3djfacngttq3k5382gmqj40osfiokcr3.apps.googleusercontent.com">
  </head>
  <body>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>
    <header class="w3-top ">
    <% getpicurl x = new getpicurl(); %>
      <nav class="w3-teal" style="padding: 24px;">

        <label id="logo-side-name" hidden="hidden" class="w3-cursive">Profio</label>
        <label>
          <a>
            <img src="web/images/logo.gif" id="gif-logo" style="height: 1cm; width: auto;">
          </a>
        </label>


        <a  class="button  w3-right" href="login.jsp" <%if(session.getAttribute("mail") != null ){out.println("hidden");}%>>LOGIN</a>

        <!--  <div hidden="hidden">-->
          <div class="w3-dropdown-hover w3-right" <%if(session.getAttribute("mail") != null ){}else{out.println("hidden");} %>>
            <label class="w3-right" <%if(session.getAttribute("mail") != null ){}else{out.println("hidden");} %>>
              <i class="material-icons fa-2x" >keyboard_arrow_down</i>
            </label>
            <div id="menu" class="w3-dropdown-content w3-bar-block  w3-light-gray" style="right:0;top: 20px;width:max-content;">
              <a href="#" class="w3-bar-item w3-button">
                <label class=" w3-round-xxlarge" >
                  <img class=" w3-round-xxlarge" src="<%=x.geturl((String) session.getAttribute("mail")) %>" style="height: 1cm;width: 1cm;">
                  <label><%=session.getAttribute("name") %></label>
                </label>
              </a>
              <a>
                <div class="w3-margin"></div>
              </a>
              <a href="settings.jsp" class="w3-bar-item w3-button">Settings & Privacy</a>
              <a href="settings.jsp" class="w3-bar-item w3-button">Help & Support</a>
              <a href="logout" onclick="signOut();" class="w3-bar-item w3-button">Log-Out</a>
              <script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
  }
</script>
            </div>
          </div>
          <label class="w3-right right-fx" style="padding-right: 20px;" <%if(session.getAttribute("mail") != null ){}else{out.println("hidden");} %>>
            <a href="notifications.jsp"><i class="material-icons fa-2x">notifications_none</i></a>
          </label>
          <label class="w3-right right-fx" style="padding-right: 20px;" <%if(session.getAttribute("mail") != null ){}else{out.println("hidden");} %>>
            <a href="viewprofile">
            
            <label id="uname-1" class=" w3-round-xxlarge"
              onmouseover="document.getElementById('uname-1').style.backgroundColor='lightgrey';"
              onmouseout="document.getElementById('uname-1').style.backgroundColor='#009688';">
              <img class=" w3-round-xxlarge" src="<%=x.geturl((String) session.getAttribute("mail")) %>" style="height: 0.8cm;width: 0.8cm;">
              <label ><%=session.getAttribute("name") %></label>
            </label>
            </a>
          </label>
          <label class="w3-right right-fx" style="padding-right: 20px;" <%if(session.getAttribute("mail") != null ){}else{out.println("hidden");} %>>
            <a href="#" style="color: white;"><i class="fas fa-home fa-2x" id="home-header"></i></a>
          </label>

        <!--  </div>-->


      </nav>
    </header>



    <section class="hero">
      <div class="container">
        <div class="hero__image"></div>
        
        
        <div class="hero__text container--pall">
        <form action="pro" method="get">
            <label  style="text-align: center;height: max-content;">
              <div class="input-field">
              <i class="fas fa-search"></i>
              <input type="search" name="search" placeholder="Find Someone ?" id= "inpf" onkeypress="document.getElementById('cross').style.display='block';"/>
              <i class="fas fa-times-circle" style="display: none;" onmouseover="this.style.color='red';" onmouseout="this.style.color='#acacac';" onclick="document.getElementById('inpf').value=null"  id="cross"></i>
            
            </div>
          </label>
          </form>
          
          
          <h1>
            Next generation digital Resume
          </h1>
          <p>
            Applying For a job?<br> The do it in your way! <br>Carry a digital resume.
          </p>
          <a href="login.jsp" class="button hero__cta" <%if(session.getAttribute("mail") == null ){}else{out.println("hidden");} %> >Login</a>
        </div>
      </div>
    </section>

    <section class="feature">

      <div class="feature__content container container--pall">

        <div class="feature__intro">
          <h2>Why choose Profio ?</h2>
          <p>
            We work hard every moment to give you and your employeer the best user experience.
          </p>
        </div>

        <div class="feature__grid">

          <div class="feature__item">
            <div class="feature__icon"><img src="web/images/icon-online.svg" /></div>
            <div class="feature__title">
              Easy To Use
            </div>
            <div class="feature__description">
              Our modern web applications allow you to keep track of your profile
              wherever you are in the world.
            </div>
          </div>

          <div class="feature__item">
            <div class="feature__icon"><img src="web/images/icon-budgeting.svg" /></div>
            <div class="feature__title">
              Efficient
            </div>
            <div class="feature__description">
              See exactly who waches your peofile. Receive notifications when someone watches you.
            </div>
          </div>

          <div class="feature__item">
            <div class="feature__icon"><img src="web/images/icon-onboarding.svg" /></div>
            <div class="feature__title">
              Fast Onboarding
            </div>
            <div class="feature__description">
              We don't do branches. Open your account in minutes online and start taking control right away.
            </div>
          </div>

          <div class="feature__item">
            <div class="feature__icon"><img src="web/images/icon-api.svg" /></div>
            <div class="feature__title">
              Privacy
            </div>
            <div class="feature__description">
              Your data goes no where, We secure them on our secured server.keep a control over who watches your
              profile.
            </div>
          </div>

        </div>
      </div>

    </section>



    <footer class="footer">
      <div class="container">

        <a class="footer__logo" href="#">
          <img src="web/images/logo.gif" height="50cm" />
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
          <a href="#">About Us</a>
          <a href="#">Contact</a>
          <a href="#">Blog</a>
        </div>

        <div class="footer__links col2">
          <a href="#">Careers</a>
          <a href="#">Support</a>
          <a href="#">Privacy Policy</a>
        </div>

        <div class="footer__cta">
          <a href="login.jsp" class="button" <%if(request.getAttribute("mail") != null ){}else{out.println("hidden");} %>>Login/SignUp</a>
          <a href="login.jsp" class="button" <%if(request.getAttribute("mail") == null ){}else{out.println("hidden");} %>>Contact Us.</a>
        </div>

        <div class="footer__copyright">
          &copy; Profio. All Rights Reserved.
        </div>

      </div>
    </footer>









    <script src="/app/script.js"></script>
  </body>

  </html>