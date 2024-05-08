package com.dbms.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbms.dao.getting.checking_email;


@WebServlet("/EmailSendingServlet")
public class emailsendingservlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String host;
    private String port;
    private String user;
    private String pass;
 
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	
    	otpGenerator obj=new otpGenerator();
		HttpSession session=request.getSession();
		checking_email chemail=new checking_email();
		
		if(chemail.check_email(request.getParameter("email")))
		{
			String recipient = request.getParameter("email");
			session.setAttribute("email", recipient);

	        String subject = "Your Otp to login insure";
	        String content = String.valueOf(otpGenerator.geek_Password(4));
			session.setAttribute("otp",content);

	 
	        try {
	            EmailUtility.sendEmail(host, port, user, pass, recipient, subject, content);
	            getServletContext().getRequestDispatcher("/index2.jsp").forward(
	                    request, response);
	            	
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        } 
		}
			
		else {
			
			session.setAttribute("email_not_found", "email not found");
			response.sendRedirect("index.jsp");
		}
		
        
    }
}