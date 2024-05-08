package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbms.dao.insert.customer_signup_insert;
import com.dbms.dao.inserting.inserting_customer;

/**
 * Servlet implementation class customer_signup_servlet
 */
@WebServlet("/customer_signup_servlet")
public class customer_signup_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		inserting_customer insc=new inserting_customer();
		
		insc.insert_customer((String) request.getParameter("cust_fname"), (String) request.getParameter("cust_lname"), (String) request.getParameter("cust_DOB"), (String) request.getParameter("cust_gender"), (String) request.getParameter("cust_mob_number"), (String) request.getParameter("cust_email"), (String) request.getParameter("cust_passport_number"), (String) request.getParameter("cust_martial_status"), (String) request.getParameter("cust_ppS_number"));

		response.sendRedirect("index.jsp");
	
	}

}