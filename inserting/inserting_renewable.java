package com.dbms.dao.inserting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.dbms.dao.getting.getting_attributes_for_renewable;
import com.dbms.dao.updating.updating_quote_date;

public class inserting_renewable {
	public boolean inserting_into_renewable(String policy_number) {
		String sql ="insert into policy_renewable(aggrement_id,application_id,cust_id,date_of_renewal)"
				+ "	values (?,?,?,?)";
		
				
		String url="jdbc:mysql://localhost:3306/dbms";
		String username ="root";
		String password="password";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	        LocalDateTime now = LocalDateTime.now();
	        String s=dtf.format(now);
	        
			getting_attributes_for_renewable obj=new getting_attributes_for_renewable();
			obj.getting_attributes(policy_number);
			
			PreparedStatement st=con.prepareStatement(sql);

			st.setString(1, obj.aggrement_id);
			st.setString(2, obj.application_id);
			st.setString(3, obj.cust_id);
			st.setString(4, s);
			
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
