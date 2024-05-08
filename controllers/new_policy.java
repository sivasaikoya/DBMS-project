package com.dbms.controllers;

import java.io.IOException;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbms.dao.getting.getting_aggrementid;
import com.dbms.dao.getting.getting_applicationid;
import com.dbms.dao.getting.getting_custid;
import com.dbms.dao.getting.getting_nokid;
import com.dbms.dao.insert.insert_application;
import com.dbms.dao.inserting.inserting_application;
import com.dbms.dao.inserting.inserting_insurance_policy;
import com.dbms.dao.inserting.inserting_nok;
import com.dbms.dao.inserting.inserting_quote;
import com.dbms.dao.inserting.inserting_receipt;
import com.dbms.dao.inserting.inserting_vehicle;

/**
 * Servlet implementation class new_policy
 */
@WebServlet("/new_policy")
public class new_policy extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String s=dtf.format(now);
		
		getting_custid gcustid=new getting_custid();
		int cust_id=gcustid.getting_cust_id((String)session.getAttribute("email"));
		
		inserting_receipt irec=new inserting_receipt();
		irec.insert_receipt(String.valueOf(cust_id), String.valueOf(session.getAttribute("cost")),s);
		
		
		inserting_application iapp=new inserting_application();
		iapp.insert_application(String.valueOf(cust_id),String.valueOf(session.getAttribute("coverage")));
		
		getting_applicationid gappid=new getting_applicationid();
		int application_id=gappid.getting_application_id((String)session.getAttribute("email"));
		
		String policy_id=new String(otpGenerator.geek_Password(10));
		
		String date=request.getParameter("start_date");
		String edate=new String();
		
		edate=date.substring(0,4);
		int dum=Integer.parseInt(edate);
		dum=dum+1;
		edate=dum+date.substring(4);
		
		inserting_insurance_policy iinsp=new inserting_insurance_policy();
		iinsp.insert_insurance_policy(String.valueOf(application_id), String.valueOf(cust_id), (String)session.getAttribute("vehicle_type"),policy_id, (String)request.getParameter("start_date"), edate);
	
	
		getting_aggrementid gaggid=new getting_aggrementid();
		int aggrement_id=gaggid.getting_aggrement_id((String)session.getAttribute("email"));
		
		inserting_nok inok=new inserting_nok();
		inok.insert_nok(String.valueOf(aggrement_id), String.valueOf(application_id), String.valueOf(cust_id), (String)request.getParameter("nok_name"), (String)request.getParameter("nok_address"), (String)request.getParameter("nok_phone_number"), (String)request.getParameter("nok_marital_status"), (String)request.getParameter("nok_gender"));
		
		getting_nokid gnokid=new getting_nokid();
		int nok_id=gnokid.getting_nok_id((String)session.getAttribute("email"));
		
		inserting_vehicle ivhcl=new inserting_vehicle();
		ivhcl.insert_vehicle(String.valueOf(cust_id), String.valueOf(nok_id), (String)session.getAttribute("vehicle_registration_number"), (String)(request.getParameter("vehicle_value")), (String)session.getAttribute("vehicle_type"), (String)(request.getParameter("vehicle_number_of_seat")), (String)request.getParameter("vehicle_manufacturer"), (String)request.getParameter("vehicle_chasis_number"), (String)request.getParameter("vehicle_model_number"));
		
	
		inserting_quote iquote=new inserting_quote();
		iquote.insert_quote(String.valueOf(application_id), String.valueOf(cust_id), (String)request.getParameter("start_date"), edate,String.valueOf(session.getAttribute("product_id")) , String.valueOf(session.getAttribute("coverage")));
	
		
		response.sendRedirect("customer_home.jsp");
		
		
		
	}

}
