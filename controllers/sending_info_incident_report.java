package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dbms.dao.inserting.insert_incident_report;

/**
 * Servlet implementation class sending_info_incident_report
 */
@WebServlet("/sending_info_incident_report")
public class sending_info_incident_report extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		insert_incident_report obj=new insert_incident_report();
		obj.insert_into_incident_report((String) request.getParameter("incident_id"), (String) request.getParameter("cust_id"), (String) request.getParameter("incident_cost"), (String) request.getParameter("incident_type"), (String) request.getParameter("incident_report_description"));
		response.sendRedirect("inspector.jsp");
	}

}
