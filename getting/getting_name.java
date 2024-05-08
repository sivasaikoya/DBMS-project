package com.dbms.dao.getting;

//Java code to explain how to generate random
//password

//Here we are using random() method of util
//class in Java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class getting_name
{
 public String gett_name(String c)
 {
	 
     try {
    	 Class.forName("com.mysql.jdbc.Driver");
         String url="jdbc:mysql://localhost:3306/DBMS";
         String username="root";
         String password="password";
         String sql2="select concat(cust_fname,cust_lname) as name from customer where cust_id=?";
         Connection conn=DriverManager.getConnection(url, username, password);

         PreparedStatement st2=conn.prepareStatement(sql2);
     
         st2.setString(1,c);
         
         ResultSet rs2=st2.executeQuery();
         if(rs2.next())
         {
        	 String name=rs2.getString("name");
        	 return name;
         }
         
         
         rs2.close();
 		  st2.close();
 		 conn.close();

     } catch (Exception e) {

         e.printStackTrace();
     }

     return null;
 }
}