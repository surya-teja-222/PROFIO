package com.profio;

import java.sql.SQLException;

public class notifications {
	public String[] mail(String mail) throws ClassNotFoundException, SQLException {
		//String[] arr = new String[10];
		jdbc jx = new jdbc();
		String value = jx.getvall(mail);
		String [] arr = value.split(" ");
		System.out.println(arr.toString());
		return arr;
	}
	
	public String[] profilepic(String mail) throws ClassNotFoundException, SQLException {
		String[] xx = new String[15];
		jdbc jx = new jdbc();
		String value = jx.getvall(mail);
		String [] arr = value.split(" ");
		getpicurl p = new getpicurl();
		for(int i = 0 ; i<arr.length ; i++) {
			xx[i] = p.geturl(arr[i]);
		}
		return xx;
	}
	public String[] name(String mail) throws ClassNotFoundException, SQLException {
		String[] xx = new String[15];
		jdbc jx = new jdbc();
		String value = jx.getvall(mail);
		String [] arr = value.split(" ");
		for(int i = 0 ; i<arr.length ; i++) {
			xx[i] = jx.getname(arr[i]);
		}
		return xx;
	}
	public String[] profession(String mail) throws ClassNotFoundException, SQLException {
		String[] xx = new String[15];
		jdbc jx = new jdbc();
		String value = jx.getvall(mail);
		String [] arr = value.split(" ");
		for(int i = 0 ; i<arr.length ; i++) {
			xx[i] = jx.getprofession(arr[i]);
		}
		return xx;
	}
	public String[] workplace(String mail) throws ClassNotFoundException, SQLException {
		String[] xx = new String[15];
		jdbc jx = new jdbc();
		String value = jx.getvall(mail);
		String [] arr = value.split(" ");
		for(int i = 0 ; i<arr.length ; i++) {
			xx[i] = jx.getwork(arr[i]);
		}
		return xx;
	}
}
//required parameters : profile pic , name , workplace, profession, 