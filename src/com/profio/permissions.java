package com.profio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;

import org.json.simple.parser.ParseException;

public class permissions {
	
	public boolean[] permission(String mail , String rmail) throws ClassNotFoundException, SQLException, FileNotFoundException, IOException, ParseException {
		if(rmail == null) {rmail = mail;}
		if(mail.equals(rmail)) {
			boolean[] viz  = new boolean[6];
			for(int i = 0 ; i< viz.length ; i++) {viz[i] = true;}
			return viz;
		}
		else {
			jdbc j = new jdbc();
			String[] ar1 = j.getprivacysettings(rmail);
			boolean[] ar2 =  j.getval1(mail, rmail);
			boolean[] viz  = new boolean[6];
			
			
			if(ar1[0].equals("e")) {viz[0] = true;}
			else if(ar1[0].equals("o")) {viz[0] = false;}
			else if(ar1[0].equals("C") && ar2[0]) {viz[0] = true;}
			else {viz[0] = false;}
			
			
			if(ar1[1].equals("e")) {viz[1] = true;}
			else if(ar1[1].equals("o")) {viz[1] = false;}
			else if(ar1[1].equals("C") && ar2[0]) {viz[1] = true;}
			else {viz[1] = false;}
			
			
			if(ar1[2].equals("e")) {viz[2] = true;}
			else if(ar1[2].equals("o")) {viz[2] = false;}
			else if(ar1[2].equals("C") && ar2[0]) {viz[2] = true;}
			else {viz[2] = false;}
			
			
			if(ar1[3].equals("e")) {viz[3] = true;}
			else if(ar1[3].equals("o")) {viz[3] = false;}
			else if(ar1[3].equals("C") && ar2[0]) {viz[3] = true;}
			else {viz[3] = false;}
			
			
			if(ar1[4].equals("e")) {viz[4] = true;}
			else if(ar1[4].equals("o")) {viz[4] = false;}
			else if(ar1[4].equals("C") && ar2[0]) {viz[4] = true;}
			else {viz[4] = false;}
			
			return viz;
		}
	}
}
