package com.profio;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Signup2
 */
@WebServlet("/signup2")
public class Signup2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String dob = request.getParameter("date");
		HttpSession session = request.getSession();
		session.setAttribute("name", name);
		session.setAttribute("tel", tel);
		session.setAttribute("dob", dob);
		
		
		response.sendRedirect("signup.jsp");
	}

}
