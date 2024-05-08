package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dbms.dao.updating.updating_claim_status;

/**
 * Servlet implementation class setting_attributes_to_claim_form
 */
@WebServlet("/setting_attributes_to_claim_settlement_form")
public class setting_attributes_to_claim_settlement_form extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		updating_claim_status obj=new updating_claim_status();
		obj.updating_claimStatus((String)request.getParameter("incident_id"));
		

		response.sendRedirect("accountant.jsp");
	}

	

}
