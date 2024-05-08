package com.dbms.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbms.dao.getting.getting_custid;

/**
 * Servlet implementation class check_otp
 */
@WebServlet("/check_otp")
public class check_otp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String otp=request.getParameter("otp");
			HttpSession session=request.getSession();
			
			String otp2 =(String) session.getAttribute("otp");
				if(otp.equals(otp2)){
					
					getting_custid gcid=new getting_custid();
					String cust_id=String.valueOf(gcid.getting_cust_id((String)session.getAttribute("email")));
					session.setAttribute("cust_id", cust_id);
					
					response.sendRedirect("customer_home.jsp");

				}
				else {
					response.sendRedirect("index2.jsp");
				}
		}
	}


