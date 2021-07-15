package com.profio;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail = request.getParameter("email");
		String pass = request.getParameter("pass");
		//String x = request.getQueryString();
		//System.out.print(x+"\n");
		//System.out.print(request.getRequestURL());
		HttpSession session = request.getSession();
		jdbc sql = new jdbc();
		try {
			if(!sql.checkm(mail)) {
				session.setAttribute("1234", "**Check Entered mail");
			}
		} catch (ClassNotFoundException | SQLException e1) {
			e1.printStackTrace();
		}
		try {
			if(sql.checklogin(mail, pass)) {
				
				
				session.setAttribute("mail", mail);
				session.setAttribute("name", sql.getname(mail));
				response.sendRedirect("home.jsp");
				
			}
			else {
				response.sendRedirect("login.jsp");
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			e.printStackTrace();
		}
	}

}
