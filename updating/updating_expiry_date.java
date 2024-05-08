package com.dbms.dao.updating;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class updating_expiry_date {
    public boolean updating_expiryDate(String expiry_date,String policy_number)
    {
        String sql1="update insurance_policy set expiry_date=? where policy_number=?" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);

            st.setString(1,expiry_date);
            st.setString(2,policy_number);

            

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
