package com.dbms.dao.inserting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class insert_incident_report {
	public boolean insert_into_incident_report(String incident_id,String cust_id,String incident_cost,String incident_type,String incident_report_description) {
		String sql ="insert into incident_report(incident_id,cust_id,incident_cost,incident_type,incident_report_description)"
				+ "	values (?,?,?,?,?)";
		String sql1="update claim set report_status=? where incident_id=?";
		String url="jdbc:mysql://localhost:3306/dbms";
		String username ="root";
		String password="password";
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,incident_id);
			st.setString(2, cust_id);
			st.setString(3,incident_cost);
			st.setString(4,incident_type);
			st.setString(5, incident_report_description);
			
			
			st.executeUpdate();
			PreparedStatement st1=con.prepareStatement(sql1);
			String accepted="accepted";
			st1.setString(1,accepted);
			st1.setString(2, incident_id);
			
			 int status=st1.executeUpdate();

	            if(status>0)
	            {
	                return true;
	            }
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		
		return false;
	}
}