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
 * Servlet implementation class addsesction2
 */
@WebServlet("/add2")
public class addsesction2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String schn = request.getParameter("cname");
		String did = request.getParameter("orgname");
		String fy = request.getParameter("syear");
		//String ey = request.getParameter("tyear");
		String ceid = request.getParameter("cerid");
		String url = request.getParameter("url");

		
		jdbc jxx = new jdbc();
		//response.getWriter().append(schn).append(did).append(fy).append(ey);
		HttpSession session = request.getSession();
		String mail = (String) session.getAttribute("mail");
		
		String[] prvname = null ;
		try {
			prvname = Load_edu_li_w.getlinames(mail);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sub = prvname[0] + "___"+schn;
		try {
			jxx.updateli(mail,sub);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sub2 = prvname[1] +"___" + did;
		try {
			jxx.updateli2(mail, sub2);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String yea = fy ;
		String sub3 = prvname[2] +"___"+ yea; 
		try {
			jxx.updateli5(mail, sub3);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String subx = prvname[3] +"___" + ceid;
		try {
			jxx.updateli3(mail, subx);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String subxx = prvname[4] +"___" + url;
		try {
			jxx.updateli4(mail, subxx);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("profile.jsp");
	}

}
