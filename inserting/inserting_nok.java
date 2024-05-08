package com.dbms.dao.inserting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class inserting_nok {
    public boolean insert_nok(String agreement_id,String application_id,String cust_id,String nok_name,String nok_address,String nok_phone_number,String nok_marital_status,String nok_gender)
    {
        String sql1="insert into NOK(agreement_id,application_id,cust_id,nok_name,nok_address,nok_phone_number,nok_marital_status,nok_gender)" + "values (?,?,?,?,?,?,?,?)" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);

            st.setString(1,agreement_id);
            st.setString(2,application_id);
            st.setString(3,cust_id);
            st.setString(4,nok_name);
            st.setString(5,nok_address);
            st.setString(6,nok_phone_number);
            st.setString(7,nok_marital_status);
            st.setString(8,nok_gender);

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
