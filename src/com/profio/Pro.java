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
 * Servlet implementation class Pro
 */
@WebServlet("/pro")
public class Pro extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String value = (String) request.getParameter("search");
		//response.sendRedirect("profile.jsp/"+value[1]);
		
//		HttpSession session = request.getSession();
		
//		response.sendRedirect("viewprofile");
		jdbc j = new jdbc();
		String names = null;
		String profs = null;
		String works = null;
		String mails = null;
		try {
			names = j.getsearch(value);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			profs = j.getprofession(value);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			works = j.getwork(value);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			mails = j.getmail(value);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String colours = "#EFEEDE///#f4c2c2///#fe6f5e///#aed9e0";
		HttpSession session = request.getSession();
		session.setAttribute("names", names);
		session.setAttribute("profs", profs);
		session.setAttribute("works", works);
		session.setAttribute("mails", mails);
		session.setAttribute("colours", colours);
		session.setAttribute("requestedprofile", value);
		System.out.println(names+"\n"+profs+"\n"+works);
		response.sendRedirect("search.jsp");
	}
}
