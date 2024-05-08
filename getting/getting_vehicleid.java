package com.dbms.dao.getting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getting_vehicleid {

	public int getting_vehicle_id(String email)
	{
		
		String sql1="select vehicle_id from vehicle where cust_id=(select cust_id from customer where cust_email = ?)" ;
	     String url="jdbc:mysql://localhost:3306/DBMS";
	     String username ="root";
	     String password="password";
	     int vehicle_id=0;
	     try {
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection con= DriverManager.getConnection(url,username,password);

	         PreparedStatement st=con.prepareStatement(sql1);

	         st.setString(1,email);
	         ResultSet rs=st.executeQuery();

	        if(rs.next())
	        {
	            vehicle_id=rs.getInt("vehicle_id");
	   	     	return vehicle_id;

	        }

	     } catch (Exception e) {

	         e.printStackTrace();
	     }

	     return vehicle_id;
	}
}
