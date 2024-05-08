package com.dbms.dao.getting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getting_applicationid {
	public int getting_application_id(String email)
	{
		
		String sql1="select application_id from application where cust_id=(select cust_id from customer where cust_email = ?) order by application_id desc " ;
	     String url="jdbc:mysql://localhost:3306/DBMS";
	     String username ="root";
	     String password="password";
	     int application_id=0;
	     try {
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection con= DriverManager.getConnection(url,username,password);

	         PreparedStatement st=con.prepareStatement(sql1);

	         st.setString(1,email);
	         ResultSet rs=st.executeQuery();

	        if(rs.next())
	        {
	            application_id=rs.getInt("application_id");
	   	     return application_id;

	        }

	     } catch (Exception e) {

	         e.printStackTrace();
	     }

	     return application_id;
	}
}
