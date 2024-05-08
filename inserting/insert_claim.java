package com.dbms.dao.inserting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class insert_claim {
	public boolean insert_into_claim(String cust_id,String policy_number,String claim_amount,String incident_id,String damage_type) {
		String sql ="insert into claim(cust_id,policy_number,claim_amount,incident_id,damage_type,date_of_claim,claim_status,report_status)"
				+ "	values (?,?,?,?,?,?,?,?)";
		String url="jdbc:mysql://localhost:3306/dbms";
		String username ="root";
		String password="password";
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String s=dtf.format(now);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,cust_id);
			st.setString(2, policy_number);
			st.setString(3,claim_amount);
			st.setString(4,incident_id);
			st.setString(5,damage_type);
			st.setString(6,s);
			st.setString(7,"pending");
			st.setString(8,"pending");


			
			int status=st.executeUpdate();
			if(status>0) {
				return true;
			}
			return false;
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		
		return false;
	}
}