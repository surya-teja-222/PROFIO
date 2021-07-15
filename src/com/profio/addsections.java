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
 * Servlet implementation class addsections
 */
@WebServlet("/add")
public class addsections extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String schn = request.getParameter("uniname");
		String did = request.getParameter("whatdid");
		String fy = request.getParameter("starty");
		String ey = request.getParameter("endy");
		jdbc jxx = new jdbc();
		//response.getWriter().append(schn).append(did).append(fy).append(ey);
		HttpSession session = request.getSession();
		String mail = (String) session.getAttribute("mail");
		
		String[] prvname = null ;
		try {
			prvname = Load_edu_li_w.getedunames(mail);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sub = prvname[0] + "___"+schn;
		try {
			jxx.updateed(mail,sub);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sub2 = prvname[1] +"___" + did;
		try {
			jxx.updateed2(mail, sub2);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String yea = fy +"--"+ey;
		String sub3 = prvname[2] +"___"+ yea; 
		try {
			jxx.updateed3(mail, sub3);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("profile.jsp");
	}

}
