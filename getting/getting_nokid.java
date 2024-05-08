package com.dbms.dao.getting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getting_nokid {
	public int getting_nok_id(String email)
	{
		
		String sql1="select nok_id from nok where cust_id=(select cust_id from customer where cust_email = ?)" ;
	     String url="jdbc:mysql://localhost:3306/DBMS";
	     String username ="root";
	     String password="password";
	     int nok_id=0;
	     try {
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection con= DriverManager.getConnection(url,username,password);

	         PreparedStatement st=con.prepareStatement(sql1);

	         st.setString(1,email);
	         ResultSet rs=st.executeQuery();

	        if(rs.next())
	        {
	            nok_id=rs.getInt("nok_id");
	   	     	return nok_id;

	        }

	     } catch (Exception e) {

	         e.printStackTrace();
	     }

	     return nok_id;
	}
}
