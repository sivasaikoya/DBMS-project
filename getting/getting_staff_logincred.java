package com.dbms.dao.getting;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getting_staff_logincred {
	public String getting_staff_login(String email)
	{
		
		String sql1="select * from staff where staff_email=?" ;
	     String url="jdbc:mysql://localhost:3306/DBMS";
	     String username ="root";
	     String password="password";
	     
	     try {
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection con= DriverManager.getConnection(url,username,password);

	         PreparedStatement st=con.prepareStatement(sql1);

	         st.setString(1,email);
	         
	         ResultSet rs=st.executeQuery();

	        if(rs.next())
	        {
	            String role=rs.getString("staff_role");
	            return role;

	        }

	     } catch (Exception e) {

	         e.printStackTrace();
	     }

	     return null;
	}
}
