package com.dbms.controllers;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import com.dbms.dao.getting.getting_base_prices;

@WebServlet("/getting_cost")
public class getting_cost extends HttpServlet {
    private static final long serialVersionUID = 1L;

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getting_base_prices obj = new getting_base_prices();
        HttpSession session=request.getSession();
        
        int vehicle_value = Integer.parseInt(request.getParameter("vehicle_value"));
        String vehicle_registration_number=(String)request.getParameter("vehicle_registration_number");
        String vehicle_type=(String) session.getAttribute("vehicle_type");

        session.setAttribute("vehicle_value", vehicle_value);
        session.setAttribute("vehicle_registration_number", vehicle_registration_number);
        
        

        
       float[] prices=obj.getting_basePrices(vehicle_type);
        float[] coverage = new float[3]; // Initialize coverage array

        for (int i = 0; i < 3; i++) {
            if (vehicle_value < 500000) {
                prices[i] = (float) (prices[i] * (1 + 0.025));
            } else if (vehicle_value < 150000 && vehicle_value > 500000) {
                prices[i] = (float) (prices[i] * (1 + 0.035));
            } else {
                prices[i] = (float) (prices[i] * (1 + 0.050));
                coverage[i] = (float) (vehicle_value * 0.95);
            }
        }
        coverage[0]=(float) (vehicle_value * 0.75);
        coverage[1] = (float) (vehicle_value * 0.80);
        coverage[2] = (float) (vehicle_value * 0.95);



        request.setAttribute("prices", prices);
        request.setAttribute("coverage", coverage);

        RequestDispatcher dispatcher = request.getRequestDispatcher("plans.jsp");
        dispatcher.forward(request, response);
    }
}