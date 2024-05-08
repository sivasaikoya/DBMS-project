package com.dbms.dao.getting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getting_attributes_for_renewable {
	
	public String aggrement_id=new String();
	public String application_id=new String();
	public String cust_id=new String();
	
	
	public boolean getting_attributes(String policy_number) {
		String sql ="select aggrement_id,application_id,cust_id from insurance_policy where policy_number=?";
		String url="jdbc:mysql://localhost:3306/dbms";
		String username ="root";
		String password="password";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,policy_number);
			
			
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
			aggrement_id=rs.getString("aggrement_id");
			application_id=rs.getString("application_id");
			cust_id=rs.getString("cust_id");
			return true;
			
			}
			
		}
		catch (Exception e) {

			e.printStackTrace();
		}
		
		
		return false;
	}
}