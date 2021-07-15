package com.profio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Load_edu_li_w {
	static String[] getedunames(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from edu_dat where mail =?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String[] arr = new String[5];
		arr[0] = rs.getString("snam");
		arr[1] = rs.getString("doin");
		arr[2] = rs.getString("year");
		return arr;
	}
	static String[] getlinames(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from lice_dat where mail =?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String[] arr = new String[5];
		arr[0] = rs.getString("cnam");
		arr[1] = rs.getString("comp");
		arr[2] = rs.getString("year");
		arr[3] = rs.getString("id");
		arr[4] = rs.getString("url");
		return arr;
	}
	static String[] getwonames(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from work_dat where mail =?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String[] arr = new String[5];
		arr[0] = rs.getString("snam");
		arr[1] = rs.getString("doin");
		arr[2] = rs.getString("year");
		return arr;
	}
//	
	public int  edcount(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getedunames(mail);
		String[] n1 = arr[0].split("___");
		return n1.length;
	}
	public int licount(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getlinames(mail);
		String[]  n1 = arr[0].split("___");
		return n1.length;
	}
	public int wocount(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getwonames(mail);
		String[] n1 = arr[0].split("___");
		return n1.length;
	}
//	
//	
	public String[] returnedname(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getedunames(mail);
		String[] n1 = new String[10];
		if(arr[0] != null) {
		 n1 = arr[0].split("___");}
		return n1;
	}
	public String[] returneded(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getedunames(mail);
		String[] n1 = new String[10];
		if(arr[1] != null) {
		 n1 = arr[1].split("___");}
		return n1;
	}
	public String[] returnedyear(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getedunames(mail);
		String[] n1 = new String[10];
		if(arr[2] != null) {
		 n1 = arr[2].split("___");}
		return n1;
	}
//	
	public String[] returnliname(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getlinames(mail);
		String[] n1 = new String[10];
		if(arr[0] != null) {
		 n1 = arr[0].split("___");}
		return n1;
	}
	public String[] returnlicname(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getlinames(mail);
		String[] n1 = new String[10];
		if(arr[1] != null) {
		 n1 = arr[1].split("___");}
		return n1;
	}
	public String[] returnliyear(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getlinames(mail);
		String[] n1 = new String[10];
		if(arr[2] != null) {
		 n1 = arr[2].split("___");}
		return n1;
	}
	public String[] returnliid(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getlinames(mail);
		String[] n1 = new String[10];
		if(arr[3] != null) {
		 n1 = arr[3].split("___");}
		return n1;
	}
	public String[] returnliurl(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getlinames(mail);
		String[] n1 = new String[10];
		if(arr[4] != null) {
		 n1 = arr[4].split("___");}
		return n1;
	}
	
//	
//	
	public String[] returnwoname(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getwonames(mail);
		String[] n1 = new String[10];
		if(arr[0] != null) {
		 n1 = arr[0].split("___");}
		return n1;
	}
	public String[] returnwoed(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getwonames(mail);
		String[] n1 = new String[10];
		if(arr[1] != null) {
		 n1 = arr[1].split("___");}
		return n1;
	}
	public String[] returnwoyear(String mail) throws ClassNotFoundException, SQLException {
		String[] arr = getwonames(mail);
		String[] n1 = new String[10];
		if(arr[2] != null) {
		 n1 = arr[2].split("___");}
		return n1;
	}
}
