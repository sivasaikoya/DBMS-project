package com.dbms.dao.inserting;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class inserting_receipt {
    public boolean insert_receipt(String cust_id,String cost,String time)
    {
        String sql1="insert into receipt(cust_id,cost,time)" + "values (?,?,?)" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);

            st.setString(1,cust_id);
            st.setString(2,cost);
            st.setString(3,time);

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
