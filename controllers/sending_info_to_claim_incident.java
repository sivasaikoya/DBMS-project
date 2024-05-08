package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbms.dao.inserting.insert_claim;
import com.dbms.dao.inserting.insert_incident;
import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

/**
 * Servlet implementation class sending_info_to_claim_incident
 */
@WebServlet("/sending_info_to_claim_incident")
public class sending_info_to_claim_incident extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		insert_incident obj=new insert_incident();
		String incident_id=obj.insert_into_incident((String) request.getParameter("incident_type"), (String) request.getParameter("incident_date"), (String) request.getParameter("description"));
		System.out.println(incident_id);
		insert_claim obj1=new insert_claim();
		HttpSession session=request.getSession();
		System.out.println((String) request.getParameter("policy_number"));
		obj1.insert_into_claim((String)session.getAttribute("cust_id"), (String) request.getParameter("policy_number"), (String) request.getParameter("claim_amount"), incident_id, (String) request.getParameter("damage_type"));
		response.sendRedirect("customer_home.jsp");
	}

}