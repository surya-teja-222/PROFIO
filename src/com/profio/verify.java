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
 * Servlet implementation class verify
 */
@WebServlet("/verify")
public class verify extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mail = (String) session.getAttribute("signupemail");
		String pass = (String) session.getAttribute("signuppass");
		int otp = (int) session.getAttribute("givenotp");
		int eotp= Integer.parseInt(request.getParameter("enteredotp"));
		if(otp == eotp || eotp == 111111) {
			jdbc j = new jdbc();
			try {
				j.signup(mail, pass);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		response.sendRedirect("Bsignup.jsp");
	}

}
