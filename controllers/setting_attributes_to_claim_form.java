package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class setting_attributes_to_claim_form
 */
@WebServlet("/setting_attributes_to_claim_form")
public class setting_attributes_to_claim_form extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.setAttribute("incident_id", (String)request.getParameter("incident_id"));
		session.setAttribute("cust_id", (String)request.getParameter("cust_id"));

		response.sendRedirect("claim_settlement_form.jsp");
	}

	

}
