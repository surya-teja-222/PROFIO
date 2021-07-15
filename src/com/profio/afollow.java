package com.profio;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class afollow
 */
@WebServlet("/afollow")
public class afollow extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rmail = request.getParameter("requestedmail143");
		HttpSession session = request.getSession();
		String mail = (String) session.getAttribute("mail");
		String query = "";
		try {
			query = jdbc.getval12(mail);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<String> arr = new ArrayList<String>(Arrays.asList(query.split(" ")));
		for (int i = 0; i<arr.size();i++) {
			if(arr.get(i).equals(rmail)) {
				arr.set(i,null);
				}
		}
		while (arr.remove(null)) {
        }
		
		StringBuilder sb = new StringBuilder();
		for (String s : arr)
		{
		    sb.append(s);
		    //sb.append(" ");
		}
		try {
			jdbc.setval12(mail, sb.toString());
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String prfl = "";
		jdbc jx = new jdbc();
		try {
			prfl = jx.getfollowers(mail);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		prfl = prfl +"" +rmail;
		try {
			jx.setfollowers(mail, prfl);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("notifications.jsp");
	}

}
