package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class setting_attributes
 */
@WebServlet("/setting_attributes")
public class setting_attributes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String selectedCoverage = (String)request.getParameter("coverage");
		  HttpSession session=request.getSession();
		  session.setAttribute("coverage", selectedCoverage);
			
		  String selectedCost = (String)request.getParameter("cost");
		  session.setAttribute("cost", selectedCost);
			String vehicle_type=(String) session.getAttribute("vehicle_type");
		//setting product id;
			String i=(String)request.getParameter("index");
			if((vehicle_type).equals("bike")) {
				if((i).equals("2"))
				session.setAttribute("product_id", 6);
				else if((i).equals("1"))
					session.setAttribute("product_id", 5);
				if((i).equals("0"))
					session.setAttribute("product_id", 4);
			}
			if((vehicle_type).equals("car")) {
				if((i).equals("2"))
				session.setAttribute("product_id", 3);
				else if((i).equals("1"))
					session.setAttribute("product_id", 2);
				if((i).equals("0"))
					session.setAttribute("product_id", 1);
			}
		response.sendRedirect("new_policy.jsp");

	}

}