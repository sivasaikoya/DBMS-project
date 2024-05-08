package com.dbms.dao.inserting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class insert_incident {
	public String insert_into_incident(String incident_type,String incident_date,String description) {
		String sql ="insert into incident(incident_type,incident_date,description)"
				+ "	values (?,?,?)";
		String sql1="select incident_id from incident order by incident_id desc";
		String url="jdbc:mysql://localhost:3306/dbms";
		String incident_id=null;
		String username ="root";
		String password="password";
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,incident_type);
			st.setString(2, incident_date);
			st.setString(3,description);
			st.executeUpdate();
			
			PreparedStatement st2=con.prepareStatement(sql1);
			ResultSet rs=st2.executeQuery();
			if(rs.next()) {
				incident_id=rs.getString("incident_id");
				return incident_id;

			}
					return null;
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		
		return null;
	}
}