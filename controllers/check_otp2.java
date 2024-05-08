package com.dbms.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbms.dao.getting.getting_staff_logincred;

/**
 * Servlet implementation class check_otp
 */
@WebServlet("/check_otp2")
public class check_otp2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String otp=request.getParameter("otp");
			HttpSession session=request.getSession();
			
			String otp2 =(String) session.getAttribute("otp");
			getting_staff_logincred obj=new getting_staff_logincred();
			String role=obj.getting_staff_login((String) session.getAttribute("email"));
			
				if(otp.equals(otp2)){
					if(role.equals("inspector"))
					{
						
						response.sendRedirect("inspector.jsp");
						return;
					}
					
					if(role.equals("accountant"))
					{
						
						response.sendRedirect("accountant.jsp");
						return;
					
				}
					}
				else {
					response.sendRedirect("staff_login2.jsp");
				}
		
	}
}


