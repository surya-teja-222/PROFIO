package com.profio;

import java.util.*;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class smtp {
	public int sendmail(String mail) {
		final String username = "noreply.profio@gmail.com";
        final String password = "Profio@123";
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        String otp = String.format("%06d", number);
        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("noreply.profio@gmail.com"));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(mail)
            );

            message.setSubject("Verify Your E-mail|| PROFIO");
            message.setContent("<a href=\"https://github.com/surya-teja-222\"><img src=\"https://i.ibb.co/6BXZZ20/logo-white-removebg-preview.png\" height=\"100cm\"></a>\r\n"
            		+ "<label style=\"text-align: center; color: #009688;font-size:large;font-weight:bold;vertical-align:middle\">\r\n"
            		+ "  WELCOME TO PROFIO</label>\r\n"
            		+ "<hr />\r\n"
            		+ "<p>We warmly welcome you to the ever growing community of Profio. Please verify your Email with the following verification code.</p>\r\n"
            		+ "<div style=\"width: 40%;\">\r\n"
            		+ "<h1 style=\"color: #4b0082;\">"+otp+"</h1>\r\n"
            		+ "</div>\r\n"
            		+ "<hr />\r\n"
            		+ "<div><label style=\"color: #ff0000;\"> Disclaimer: </label> <label style=\"font-size: smaller; color: #7f9094;\">Please do not reply to this email. This message was sent from a notification-only address that is not monitored for answering purposes. Instead, please use or website in order to contact our Customer Care representatives. <br />You are recieving this email because you recently tried to create an account with the following email address.I you did not attempt to create an account you can safely disregard this email. </label>\r\n"
            		+ "<p>&nbsp;</p>\r\n"
            		+ "</div>\r\n"
            		+ "<div style=\"float: right;\"><img src=\"https://i.ibb.co/YD2bJtY/tab-img.png\" alt=\"tab-img\" height=\"15cm\" border=\"0\">&copy;TEAM PROFIO <br />All rights reserved, <br/>INDIA.</div>"
            		,"text/html");
            Transport.send(message);
            
            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
        
        return Integer.parseInt(otp);
	}
}
