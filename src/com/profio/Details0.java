package com.profio;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Details0")
public class Details0 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String country = request.getParameter("residecountry");
		String city    = request.getParameter("residecity");
		String gender  = request.getParameter("gender");
		session.setAttribute("country", country);
		session.setAttribute("city", city);
		session.setAttribute("gender", gender);
		response.sendRedirect("2details.jsp");
	}

}
