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
 * Servlet implementation class privacy
 */
@WebServlet("/privacy")
public class privacy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mail =(String) session.getAttribute("mail");
		String bc = request.getParameter("bc");
//		System.out.println(bc);
		String ed = request.getParameter("ed");
		String lc = request.getParameter("lc");
		String we = request.getParameter("we");
		String sc = request.getParameter("sc");
		jdbc j = new jdbc();
		try {
			j.updateprivacysettings(mail, bc, ed, lc, we, sc);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("settings.jsp");
		
	}

}
