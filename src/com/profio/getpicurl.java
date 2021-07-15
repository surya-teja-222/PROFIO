package com.profio;

import java.io.File;
import java.io.FilenameFilter;

public class getpicurl {
	public String geturl(String mail) {
	//public static void main(String[] args) {
		//String mail ="suryatejareddy222@gmail.com";
		File f = new File("D:\\New folder\\projects_1\\PROFIO\\WebContent\\web\\images\\db"); // use here your file directory path
		if(mail != null) {
		String[] allFiles = f.list(new MyFilter(mail));
		System.out.print(allFiles);
		for(int i = 0 ; i<allFiles.length ;i++) {System.out.print(allFiles[i]);}
		
		if(allFiles.length == 0 ) {
			return "web\\\\images\\\\img_avatar1.png";
		}
		else {if(allFiles[0] != null){return "web\\\\images\\\\db\\"+allFiles[0];}
		else{return "web\\\\images\\\\img_avatar1.png";}
		}
		}
		else {return "web\\\\images\\\\img_avatar1.png";}
		
}


class MyFilter implements FilenameFilter {
	String mail ;
	MyFilter(String mail){this.mail =mail;}
    @Override
    //return true if find a file named "a",change this name according to your file name
    public boolean accept(final File dir, final String name) {
        return ((name.startsWith(mail) ));
    }
}}