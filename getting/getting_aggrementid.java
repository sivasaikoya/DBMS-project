package com.dbms.dao.getting;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getting_aggrementid {
	public int getting_aggrement_id(String email)
	{
		
		String sql1="select aggrement_id from insurance_policy where cust_id=(select cust_id from customer where cust_email = ?) order by aggrement_id desc" ;
	     String url="jdbc:mysql://localhost:3306/DBMS";
	     String username ="root";
	     String password="password";
	     int aggrement_id=0;
	     try {
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection con= DriverManager.getConnection(url,username,password);

	         PreparedStatement st=con.prepareStatement(sql1);

	         st.setString(1,email);
	         ResultSet rs=st.executeQuery();

	        if(rs.next())
	        {
	            aggrement_id=rs.getInt("aggrement_id");
	   	     return aggrement_id;

	        }

	     } catch (Exception e) {

	         e.printStackTrace();
	     }

	     return aggrement_id;
	}
}
