package com.profio;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class pictureedit
 */
@WebServlet("/picture-edit")
@MultipartConfig
public class pictureedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Part filePart = request.getPart("img-new");
		String fileName = filePart.getSubmittedFileName();
		int index = fileName.lastIndexOf('.');
	    HttpSession session = request.getSession();
	    String mail = (String) session.getAttribute("mail");
	    getpicurl p = new getpicurl();
	    String pre = p.geturl(mail);
	    String prepath= "D:\\New folder\\projects_1\\PROFIO\\WebContent\\"+pre;
	    File file = new File(prepath);
	    file.delete();
	    for (Part part : request.getParts()) {
	      part.write("D:\\New folder\\projects_1\\PROFIO\\WebContent\\web\\images\\db\\" + mail+"."+fileName.substring( index+1));
	    }
	    
	    
	    response.getWriter().print("The file uploaded sucessfully.");
	    response.sendRedirect("home.jsp");
	}

}
