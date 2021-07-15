package com.profio;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Servlet implementation class follow
 */
@WebServlet("/followw")
public class follow extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String mail = "suryatejareddy222@gmail.com";
//		String rmail = "e20cse185@bennett.edu.in";
		HttpSession session = request.getSession();
		String mail = (String)session.getAttribute("mail");
		String rmail = (String) session.getAttribute("rmail");

		String prvl = "";
		try {
			prvl = jdbc.getval12(rmail);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			jdbc.setval12(rmail, prvl + " "+mail);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("profile.jsp");
	}
	
	public String[] getfollow(String mail ,String rmail) throws FileNotFoundException, IOException, ParseException, ClassNotFoundException, SQLException {
		
	    String name = jdbc.getval12(rmail);
	    String[] namee = new String[10];
	    jdbc jx = new jdbc();
	    String foll = jx.getfollowers(rmail);
	    String f[] = foll.split(" ");
	    try {
 	    namee = name.split(" ");}catch(Exception e) {}
	    
	    String r[] = new String[4];
	    r[0] = "Follow";
	    r[1] = "Follow";
	    r[2] ="";
	    if(namee[0] != null) {
	    for(int i = 0; i < namee.length ; i++) {
	    	if(namee[i].equals(mail)) {r[0] =  "requested"; r[1] = "requested" ; r[2] = "disabled";}
	    	else if(f[i].equals(mail)) {r[0] =  "following"; r[1] = "following" ; r[2] = "disabled";}
	    }}
	    return r;
		}
}
