package com.dbms.dao.getting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class checking_email2 {

	public boolean check_email(String email)
	{
		
		String sql1="select staff_email from staff where staff_email=?" ;
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
	            return true;
	        }

	     } catch (Exception e) {

	         e.printStackTrace();
	     }

	     return false;
	}
}
