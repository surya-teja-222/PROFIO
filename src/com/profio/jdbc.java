package com.profio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class jdbc {
	public boolean checklogin(String mail,String pass) throws ClassNotFoundException, SQLException {
		String query = "select * from login_mail where mail=? and pass =?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		st.setString(2, pass);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {return true;}
		return false;
	}
	public boolean checkm(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from login_mail where mail=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {return true;}
		return false;
	}
	public boolean checkifexists(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from login_mail where mail=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {return false;}else {return true;}
	}
	static boolean checkglogin(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from login_g where mail=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {return true;}
		return false;
	}
	
	public void signup(String mail, String pass) throws ClassNotFoundException, SQLException {
		String query = "insert into login_mail values(?,?)";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		st.setString(2, pass);
		if(mail != null) {
		st.executeUpdate();}
	}
	public void profiledata(String mail,String name , String tel,String country,String city,String gender, String profession,String workplace,String dob ) throws SQLException, ClassNotFoundException {
		String query = "insert into udat_profile values(?,?,?,?,?,?,?,?,?)";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		st.setString(2, name);
		st.setString(3, tel);
		st.setString(4, country);
		st.setString(5, city);
		st.setString(6,gender);
		st.setString(7,profession );
		st.setString(8, workplace);
		st.setString(9, dob);
		if(mail != null) {
			st.executeUpdate();}
	}
	public void addsocial(String mail, String tel,String web ,String insta,String fb , String tweet,String snap,String git) throws ClassNotFoundException, SQLException {
		String query = "insert into social values(?,?,?,?,?,?,?,?)";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		if(web.length()==0) {web = "na";}
		if(insta.length()==0) {insta = "na";}
		if(fb.length()==0) {fb = "na";}
		if(tweet.length()==0) {tweet = "na";}
		if(snap.length()==0) {snap = "na";}
		if(git.length()==0) {git = "na";}
		
		st.setString(1, mail);
		st.setString(2, tel);
		st.setString(3, web);
		st.setString(4, insta);
		st.setString(5, fb);
		st.setString(6,tweet);
		st.setString(7,snap );
		st.setString(8, git);
		if(mail != null) {
			st.executeUpdate();}
	}
	public String getprofiledata(String rmail) throws ClassNotFoundException, SQLException {
		String query = "select * from udat_profile where mail = ? ; ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, rmail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String rmailr = rs.getString("mail");
		String name = rs.getString("name");
		String tel = rs.getString("tel");
		String country = rs.getString("country");
		String city = rs.getString("city");
		String gender = rs.getString("gender");
		String profession = rs.getString("profession");
		String workplace = rs.getString("workplace");
		return name+ "//" +tel + "//" + country +"//"+city+"//"+ gender+"//"+profession+"//"+workplace+"//"+rmailr;
		
	}
	
	
	public String getSocial(String rmail) throws ClassNotFoundException, SQLException {
		String query = "select * from social where mail = ?  ; ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, rmail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String web = rs.getString("web");
		String insta = rs.getString("insta");
		String fb = rs.getString("fb");
		String tweet = rs.getString("tweet");
		String snap = rs.getString("snap");
		String git = rs.getString("git");
		return web+"//"+insta+"//"+fb+"//"+tweet+"//"+snap+"//" +git;
	}
	public String getname(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from udat_profile where mail =? ; ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String name = rs.getString("name");
		return name;
	}
	
	
	public String getsearch(String word) throws ClassNotFoundException, SQLException {
		String query = "select * from udat_profile where name LIKE '%"+word+"%' ; ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		ResultSet rs = st.executeQuery();
		String name = "";
		if(rs.next()) {
			name = rs.getString("name");
		}
		while(rs.next()) {
			name = name + "///" + rs.getString("name");
		}
		return name;
	}
	public String getwork(String word) throws ClassNotFoundException, SQLException {
		String query = "select * from udat_profile where name LIKE '%"+word+"%' ; ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		ResultSet rs = st.executeQuery();
		String name = "";
		if(rs.next()) {
			name = rs.getString("workplace");
		}
		while(rs.next()) {
			name = name + "///" + rs.getString("workplace");
		}
		return name;
	}
	public String getprofession(String word) throws ClassNotFoundException, SQLException {
		String query = "select * from udat_profile where name LIKE '%"+word+"%' ; ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		ResultSet rs = st.executeQuery();
		String name = "";
		if(rs.next()) {
			name =  rs.getString("profession");
		}
		while(rs.next()) {
			name = name + "///" + rs.getString("profession");
		}
		return name;
	}
	public String getmail(String word) throws ClassNotFoundException, SQLException {
		String query = "select * from udat_profile where name LIKE '%"+word+"%' ; ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		ResultSet rs = st.executeQuery();
		String name = "";
		if(rs.next()) {
			name =  rs.getString("mail");
		}
		while(rs.next()) {
			name = name + "///" + rs.getString("mail");
		}
		return name;
	}
	
	
	
	public void updatemail(String old,String newm) throws ClassNotFoundException, SQLException {
		String query0 = "update login_mail set mail=? where mail = ?";
		String query1 = "update udat_profile set mail=? where mail = ?";
		String query2 = "update social set mail=? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st0 = con.prepareStatement(query0);
		PreparedStatement st1 = con.prepareStatement(query1);
		PreparedStatement st2 = con.prepareStatement(query2);
		st0.setString(1, newm);
		st0.setString(2, old);
		st0.executeUpdate();
		st1.setString(1, newm);
		st1.setString(2, old);
		st1.executeUpdate();
		st2.setString(1, newm);
		st2.setString(2, old);
		st2.executeUpdate();
	}
	
	public void updatename(String name , String mail) throws ClassNotFoundException, SQLException {
		String query = "update udat_profile set name=? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, name);
		st.setString(2, mail);
		st.executeUpdate();
	}
	
	public void updatetel(String tel , String mail) throws ClassNotFoundException, SQLException {
		String query = "update social set tel=? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, tel);
		st.setString(2, mail);
		st.executeUpdate();
	}
	
	
	
	public void updateprivacysettings(String  mail,String bc, String ed , String lc  ,String we ,String  sc) throws ClassNotFoundException, SQLException {
		String query = "update privacy_inf set bc=? , ed=? , lc=? , we=? , sc=? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, bc);
		st.setString(2, ed);
		st.setString(3, lc);
		st.setString(4, we);
		st.setString(5, sc);
		st.setString(6, mail);
		st.executeUpdate();
	}
	
	
	public void addinitialprivacysettings(String  mail) throws ClassNotFoundException, SQLException {
		String query = "insert into privacy_inf values(? , \"e\",\"e\",\"e\",\"e\",\"e\");";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		st.executeUpdate();
	}
	
	
	public String[] getprivacysettings(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from privacy_inf where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String[] arr = new String[5] ;
		arr[0] =  rs.getString("bc");
		arr[1] =  rs.getString("ed");
		arr[2] =  rs.getString("lc");
		arr[3] =  rs.getString("we");
		arr[4] =  rs.getString("sc");

		return arr;
		
	}
	
	public void setcanview(String mail) throws ClassNotFoundException, SQLException {
		String query = "insert into canview values(? , \"admin@gmail.com\")";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		st.executeUpdate();
	}
	
	public String[] getsett(String mail) throws ClassNotFoundException, SQLException {
		String[] arr  = new String[3];
		String query= "select * from udat_profile where mail=? ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		arr[0]= rs.getString("name");
		arr[1]= rs.getString("tel");
		return arr;
	}
	public void deletedata(String mail) throws ClassNotFoundException, SQLException {
		String q1 = "delete from login_mail where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(q1);
		st.setString(1, mail);
		st.executeUpdate();
	}
	
	
	public boolean[] getval1(String mail , String rmail) throws ClassNotFoundException, SQLException {
		boolean[] arr = new boolean[6];
		String query = "select * from canview where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, rmail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String s0 =  rs.getString("se");

		String[] as0 = s0.split(" ");
		for(int i = 0 ; i< as0.length ; i++){
		    if(as0[i].equals(mail)) {arr[0] = true;}
		}
		return arr;
	}
	
	static String getval12(String mail) throws ClassNotFoundException, SQLException {
		
		String query = "select * from canview where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String s0 =  rs.getString("se");
		return s0;
	}
	static void setval12(String mail,String msg) throws ClassNotFoundException, SQLException {
		String query = "update canview set se = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public String getvall(String mail) throws ClassNotFoundException, SQLException {
		
		String query = "select * from canview where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String s0 =  rs.getString("se");
		return s0;
	}
	
	public void follow1(String mail) throws ClassNotFoundException, SQLException {
		String query = " insert into followers values(? , NULL)";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		st.executeUpdate();
	}
	
	public String getfollowers(String mail) throws ClassNotFoundException, SQLException {
		String query = "select * from followers where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, mail);
		ResultSet rs = st.executeQuery();
		rs.next();
		String s0 =  rs.getString("f");
		if(s0 == null) {s0 = "";}
		return s0;
	}
	public void setfollowers(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update followers set f = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	
	public void add(String  mail) throws ClassNotFoundException, SQLException {
		String query = "insert into edu_dat values(? ,\"j\",\"j\",\"j\");";
		String query2 = "insert into lice_dat values(? , 'j' , 'j' , 'j' , 'j' ,'j' );";
		String query3 = "insert into work_dat values(? ,\"j\",\"j\",\"j\");";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		PreparedStatement st2 = con.prepareStatement(query2);
		PreparedStatement st3 = con.prepareStatement(query3);
		st.setString(1, mail);st2.setString(1, mail);st3.setString(1, mail);
		st.executeUpdate();
		st2.executeUpdate();
		st3.executeUpdate();
	}
	
	public void updateed(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update edu_dat set snam = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updateed2(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update edu_dat set doin = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updateed3(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update edu_dat set year = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updateli(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update lice_dat set cnam = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updateli2(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update lice_dat set comp = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updateli3(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update lice_dat set id = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updateli4(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update lice_dat set url = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updateli5(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update lice_dat set year = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updatewo(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update work_dat set snam = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updatewo2(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update work_dat set doin = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}
	public void updatewo3(String mail , String msg) throws ClassNotFoundException, SQLException {
		String query = "update work_dat set year = ? where mail = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/profiodb?characterEncoding=utf8","root","root");
		PreparedStatement st = con.prepareStatement(query);
		st.setString(2, mail);
		st.setString(1, msg);
		st.executeUpdate();
	}

}
