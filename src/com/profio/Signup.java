package com.profio;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail = request.getParameter("signupemail");
		String pass = request.getParameter("signuppass");
		HttpSession session = request.getSession();
		jdbc j = new jdbc();
		try {
			System.out.println(j.checkifexists(mail));
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			if(!j.checkifexists(mail)) {
				System.out.println("dsuygsduyfgsduyy");
				session.setAttribute("12345", "**You tried to signup with an email which which already exists,<br> Please Try again!");
				response.sendRedirect("login.jsp");
				
			}
			else {
				System.out.println("else");
			session.setAttribute("signupemail", mail);
			session.setAttribute("signuppass", pass);
			smtp m = new smtp();
			int givenotp= m.sendmail(mail);
			session.setAttribute("givenotp", givenotp);
			session.setAttribute("mail", mail);
			response.sendRedirect("Asignup.jsp");}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
