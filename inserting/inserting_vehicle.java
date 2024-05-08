package com.dbms.dao.inserting;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class inserting_vehicle {
    public boolean insert_vehicle(String cust_id,String DEPENDENT_NOK_ID,String VEHICLE_REGISTRATION_NUMBER,String VEHICLE_VALUE,String VEHICLE_TYPE,String VEHICLE_NUMBER_OF_SEAT,String VEHICLE_MANUFACTURER,String VEHICLE_CHASIS_NUMBER,String VEHICLE_MODEL_NUMBER )
    {
        String sql1="insert into vehicle(cust_id,dependent_nok_id,vehicle_registration_number,vehicle_value,vehicle_type,vehicle_number_of_seat,vehicle_manufacturer,vehicle_chasis_number,vehicle_model_number)" + "values (?,?,?,?,?,?,?,?,?)" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);

            st.setString(1,cust_id);
            st.setString(2,DEPENDENT_NOK_ID);
            st.setString(3,VEHICLE_REGISTRATION_NUMBER);
            st.setString(4,VEHICLE_VALUE);
            st.setString(5,VEHICLE_TYPE);
            st.setString(6,VEHICLE_NUMBER_OF_SEAT);
            st.setString(7,VEHICLE_MANUFACTURER);
            st.setString(8,VEHICLE_CHASIS_NUMBER);
            st.setString(9,VEHICLE_MODEL_NUMBER);



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
