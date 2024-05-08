package com.dbms.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbms.dao.deleting.deleting_user;

/**
 * Servlet implementation class delete_user
 */
@WebServlet("/delete_user")
public class delete_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		deleting_user obj=new deleting_user();
        HttpSession session=request.getSession();
        String cust_id=(String)session.getAttribute("cust_id");
		obj.deleting_usser("cust_id");
		response.sendRedirect("index.jsp");
	}

}
