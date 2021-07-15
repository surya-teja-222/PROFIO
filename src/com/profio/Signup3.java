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
 * Servlet implementation class Signup3
 */
@WebServlet("/signup3")
public class Signup3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mail       =(String) session.getAttribute("mail");
		String name       =(String) session.getAttribute("name");
		String tel        =(String) session.getAttribute("tel");
		String country    =(String) session.getAttribute("country");
		String city       =(String) session.getAttribute("city");
		String gender     =(String) session.getAttribute("gender");
		String profession =(String) session.getAttribute("profession");
		String workplace  =(String) session.getAttribute("workplace");
		String dob        =(String) session.getAttribute("dob");
		
		
		String web =request.getParameter("faweb");
		String insta =request.getParameter("fainsta");
		String fb =request.getParameter("fafb");
		String tweet =request.getParameter("fatwit");
		String snap =request.getParameter("fasnap");
		String git =request.getParameter("fagit");
		
		
//		if (account=="option1") {
			jdbc j  = new jdbc();
			try {
				j.profiledata(mail, name, tel, country, city, gender, profession, workplace, dob);
				j.addsocial(mail, tel, web, insta, fb, tweet, snap, git);
				j.addinitialprivacysettings(mail);
				j.setcanview(mail);
				j.follow1(mail);
				j.add(mail);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
//		}	
			
			response.sendRedirect("success.jsp");
		
	}

}
