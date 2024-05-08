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

public class getting_custid
{
 public int getting_cust_id(String email)
 {
     String sql1="select cust_id from customer where cust_email = ?" ;
     String url="jdbc:mysql://localhost:3306/DBMS";
     String username ="root";
     String password="password";

     int cust_id=0;
     try {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con= DriverManager.getConnection(url,username,password);

         PreparedStatement st=con.prepareStatement(sql1);

         st.setString(1,email);
         ResultSet rs=st.executeQuery();

        if(rs.next())
        {
            cust_id=rs.getInt("cust_id");
            return cust_id;
         
        }

     } catch (Exception e) {

         e.printStackTrace();
     }

     return cust_id;
 }
}