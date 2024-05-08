package com.dbms.dao.inserting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class inserting_insurance_policy {
    public boolean insert_insurance_policy(String application_id,String cust_id,String vehicle_type,String policy_number,String start_date,String expiry_date)
    {
        String sql1="insert into insurance_policy(application_id,cust_id,vehicle_type,policy_number,start_date,expiry_date)" + "values (?,?,?,?,?,?)" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);

            st.setString(1,application_id);
            st.setString(2,cust_id);
            st.setString(3,vehicle_type);
            st.setString(4,policy_number);
            st.setString(5,start_date);
            st.setString(6,expiry_date);

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
