package com.dbms.dao.inserting;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class inserting_quote {
    public boolean insert_quote(String application_id,String cust_id,String valid_from_date,String valid_till_date,String product_id,String coverage_level)
    {
        String sql1="insert into quote(application_id,cust_id,issue_date,valid_from_date,valid_till_date,product_id,coverage_level)" + "values (?,?,?,?,?,?,?)" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String s=dtf.format(now);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);

            st.setString(1,application_id);
            st.setString(2,cust_id);
            st.setString(3,s);
            st.setString(4,valid_from_date);
            st.setString(5,valid_till_date);
            st.setString(6,product_id);
            st.setString(7,coverage_level);

            int status=st.executeUpdate();

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
