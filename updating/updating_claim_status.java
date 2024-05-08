package com.dbms.dao.updating;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class updating_claim_status {
	public boolean updating_claimStatus(String incident_id)
    {
        String sql1="update claim set claim_status=? where incident_id=?" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);
            String accepted="accepted";
            st.setString(1,accepted);
            st.setString(2,incident_id);

            

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
