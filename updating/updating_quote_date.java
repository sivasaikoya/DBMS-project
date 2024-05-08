package com.dbms.dao.updating;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class updating_quote_date {
    public boolean updating_quoteDate(String expiry_date,String application_id)
    {
        String sql1="update quote set valid_till_date=? where application_id=?" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);

            st.setString(1,expiry_date);
            st.setString(2,application_id);

            

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
