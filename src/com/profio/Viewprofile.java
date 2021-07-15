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
 * Servlet implementation class Viewprofile
 */
@WebServlet("/viewprofile")
public class Viewprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session =request.getSession();
		String rmail = (String) request.getParameter("requestedmail143");
		String mail = (String) session.getAttribute("mail");
		jdbc j = new jdbc();
		String work= "";
		if (rmail == null ) {
		rmail = mail;}
		try {
			work = j.getprofiledata(rmail);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		System.out.print(work);
		String[] d1 =  work.split("//");
		for(int i = 0 ; i < d1.length ; i++) {
			System.out.println(d1[i]);
		}
//		got half of required data here!!!.
		String Social = null;
		try {
			Social = j.getSocial(rmail);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String[] d2 =  Social.split("//");
		for(int i = 0 ; i < d2.length ; i++) {
			System.out.println(d2[i]);
		}
//		got social data.
//		adding to old data container.
		Data p = new Data(mail, d1[7], d1[0], d1[6], d1[5], null, d1[2], d1[3], d1[1], null, null, null, Social, null, null, null, null, null, null);
		session.setAttribute("rmail", rmail);
		session.setAttribute("p", p);
		response.sendRedirect("profile.jsp"+"?"+d1[0]);

	}
	

}
/*
 * what does this contain:
 * 1)a user who is logged in viewing his profile(include edit,add, personal recommendations)
 * 2)a user who is logged in viewing other profiles.
 * 3)a user not logged in watching a profile.
 * 4)a company logged in looking into a profile
 * 		----that's it ------
 * MAKE SURE ALL REQUESTS WORK AS GET REQUESTS.
 * */
 