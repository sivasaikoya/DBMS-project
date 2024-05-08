package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbms.dao.getting.getting_attributes_for_renewable;
import com.dbms.dao.inserting.inserting_renewable;
import com.dbms.dao.updating.updating_expiry_date;
import com.dbms.dao.updating.updating_quote_date;
import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

/**
 * Servlet implementation class renew_policy
 */
@WebServlet("/renew_policy")
public class renew_policy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String policy_number=(String)request.getParameter("policy_number");
		String expiry_date=(String)request.getParameter("expiry_date");
		
		System.out.println(policy_number);
		System.out.println(expiry_date);
		
		
		inserting_renewable ob=new inserting_renewable();
		updating_expiry_date ob1=new updating_expiry_date();
		ob1.updating_expiryDate(expiry_date,policy_number);
		ob.inserting_into_renewable(policy_number);
		
		getting_attributes_for_renewable obj2=new getting_attributes_for_renewable();
		obj2.getting_attributes(policy_number);
		
		updating_quote_date obj3=new updating_quote_date();
		obj3.updating_quoteDate(expiry_date,obj2.application_id);
		
		response.sendRedirect("customer_home.jsp");
	}

}
