package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/vehicle_type")
public class vehicle_type extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException {
			  String selectedProduct = (String)request.getParameter("product");
			  HttpSession session=request.getSession();
			  session.setAttribute("vehicle_type", selectedProduct);
				
				System.out.println(selectedProduct);
			  
				//setting product id;
				
				
				response.sendRedirect("vehicle_reg.jsp");
	}

}