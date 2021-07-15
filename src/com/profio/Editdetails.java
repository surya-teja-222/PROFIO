package com.profio;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Editdetails
 */
@WebServlet("/Editdetails")
public class Editdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("e-name");
		String mail = request.getParameter("e-mail");
		String mobile = request.getParameter("e-tel");
		HttpSession session = request.getSession();
		String oldmail = (String) session.getAttribute("mail");
		jdbc j = new jdbc();
//		UPDATING 
//		MAIL
		try {
			j.updatemail(oldmail, mail);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
//		updating 
//		name
		try {
			j.updatename(name, mail);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
//		updating 
//		tel
		try {
			j.updatetel(mobile, mail);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		getpicurl p = new getpicurl();
		String url = p.geturl(oldmail);
		if(url.equals("web/resources/img/img_avatar1.png")){System.out.println("no change required");}else {
				int index = url.lastIndexOf('.');
				File oldName = new File("C:\\Users\\Surya teja reddy\\git\\PROFIO\\PROFIO\\WebContent\\"+url);
				File newName = new File("C:\\Users\\Surya teja reddy\\git\\PROFIO\\PROFIO\\WebContent\\web\\images\\db\\"+mail+"."+url.substring( index+1));
				oldName.renameTo(newName);
			}
		session.removeAttribute("mail");
		session.removeAttribute("name");
		response.sendRedirect("login.jsp");
	}

}
