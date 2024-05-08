package com.dbms.dao.getting;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getting_increased_expiry_dates {
	public String[] policy_num=new String[10];
    public String[] expdates=new String[10];
    public void exp_dates(String cust_id)
    {
        String sql1="select policy_number,expiry_date from insurance_policy where cust_id=?" ;
        String url="jdbc:mysql://localhost:3306/DBMS";
        String username ="root";
        String password="password";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            PreparedStatement st=con.prepareStatement(sql1);

            st.setString(1,cust_id);
            ResultSet rs=st.executeQuery();

            int i=0;

            while(rs.next())
            {

                policy_num[i]=rs.getString("policy_number");
                String date=rs.getString("expiry_date");
                String update=date.substring(0,4);
                int dum=Integer.parseInt(update);
                dum=dum+1;
                update=dum+date.substring(4);
                expdates[i]=update;
                i++;
            }
            
            rs.close();
            st.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

}
}
