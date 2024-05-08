package com.dbms.dao.inserting;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class inserting_customer {
	public boolean insert_customer(String cust_fname,String cust_lname,String cust_DOB,String cust_gender,String cust_mob_number,String cust_email,String cust_passport_number,String cust_martial_status,String cust_ppS_number) {
		String sql ="insert into customer(cust_fname,cust_lname,cust_DOB,cust_gender,cust_mob_number,cust_email,cust_passport_number,cust_martial_status,cust_ppS_number)"
				+ "	values (?,?,?,?,?,?,?,?,?)";
		String url="jdbc:mysql://localhost:3306/DBMS";
		String username ="root";
		String password="password";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,cust_fname);
			st.setString(2, cust_lname);
			st.setString(3,cust_DOB);
			st.setString(4, cust_gender);
			st.setString(5, cust_mob_number);
			st.setString(6,cust_email);
			st.setString(7, cust_passport_number);
			st.setString(8,cust_martial_status);
			st.setString(9, cust_ppS_number);
			
			
			int status=st.executeUpdate();
			if(status>0) {
				return true;
			}
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		
		return false;
	}
}
