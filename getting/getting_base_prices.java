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

public class getting_base_prices {
    public float[] getting_basePrices(String vehicle_type) {
        String sql1 = "SELECT * FROM product WHERE product_type=?";
        String url = "jdbc:mysql://localhost:3306/DBMS";
        String username = "root";
        String password = "password";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(sql1);
            st.setString(1, vehicle_type);
            ResultSet rs = st.executeQuery();

            
            float[] price = new float[3];

           
            int i = 0;
            while (rs.next()) {
                price[i] = rs.getFloat("product_price");
                i++;
            }

            return price;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}