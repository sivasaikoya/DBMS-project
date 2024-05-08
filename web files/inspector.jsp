<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.dbms.dao.getting.*" %>

    
<!DOCTYPE html>
<html>
    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
      
        <title>Inspector_home_Page</title>
      
        <!-- slider stylesheet -->
        <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />
      
        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
      
        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            color: #000000;
            background-color: #ffffff;
          }
          .outer_box{
            border: 3px lightgray solid;
             width:80;
             border-radius: 20px;
             box-shadow: 3px 3px 5px lightgray;
             margin-bottom:2%;
          }
      </style>
<body>
     <header class="header_section">
        <div class="container">
          <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
            <a class="navbar-brand" href="index.jsp">
              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUegmd4hLxHgLFGTxwzUl0LbcLgxHvg9aS0A&s" alt="" /><span>
                Insure
              </span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
  
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
                <ul class="navbar-nav  ">
                  <li class="nav-item active">
                    <div class="dropdown">
                      <button class="dropbtn nav-link">Products</button>
                      <div class="dropdown-content">
                        <a href="vehicle_type?product=bike">Bike</a>
    					<a href="vehicle_type?product=car">Car</a>
                      </div>
                    </div>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> Claim</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="policy_renewal.jsp"> Renewal </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="contact.html">Contact us</a>
                  </li>
                </ul>
                
              </div>
            </div>
          </nav>
        </div>
      </header>
      
      
   
	<%
	
	
	
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/DBMS";
       String username="root";
       String password="password";
       String sql1="select cust_id,policy_number,claim_amount,incident_id,damage_type,date_of_claim from claim where report_status=?";
       
       Connection conn=DriverManager.getConnection(url, username, password);
       PreparedStatement st1=conn.prepareStatement(sql1);
       
       
       st1.setString(1,"pending");
       
       
       ResultSet rs1=st1.executeQuery();
       
       
   	%>

            
       
      <div style="margin-left: 5%; margin-top:1%">
        <h4>Welcome Inspector</h4>
        
    </div>
       <%
while(rs1.next()) 
{
	%>
<div class="container px-4 py-5 outer_box"  id="icon-grid">

    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-4 py-5">
    <div class="col d-flex align-items-start">
        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em"><use xlink:href="#bootstrap"></use></svg>
        <div>
          <h3 class="fw-bold mb-0 fs-4 text-body-emphasis">Customer_id:</h3>
          <p><%= rs1.getString("cust_id") %></p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em"><use xlink:href="#bootstrap"></use></svg>
        <div>
          <h3 class="fw-bold mb-0 fs-4 text-body-emphasis">Policy Number:</h3>
          <p><%= rs1.getString("policy_number") %></p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em"><use xlink:href="#cpu-fill"></use></svg>
        <div>
          <h3 class="fw-bold mb-0 fs-4 text-body-emphasis">Requested Amount:</h3>
          <p><%= rs1.getString("claim_amount") %></p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em"><use xlink:href="#calendar3"></use></svg>
        <div>
          <h3 class="fw-bold mb-0 fs-4 text-body-emphasis">Incident Id: </h3>
          <p><%= rs1.getString("incident_id") %></p>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em"><use xlink:href="#home"></use></svg>
        <div>
          <h3 class="fw-bold mb-0 fs-4 text-body-emphasis">Damage Type:</h3>
          <p> <%= rs1.getString("damage_type") %></p>
        </div>
      </div>
      
      <div class="col d-flex align-items-start">
        <svg class="bi text-body-secondary flex-shrink-0 me-3" width="1.75em" height="1.75em"><use xlink:href="#toggles2"></use></svg>
        <div>
          <h3 class="fw-bold mb-0 fs-4 text-body-emphasis">Date of Claim: </h3>
          <p><%= rs1.getString("date_of_claim") %></p>
        </div>
        
      </div>
      <div style="width:160px; margin-left:60%;margin-top:2%">
      <a  href="setting_attributes_to_claim_form?cust_id=<%= rs1.getString("cust_id") %>&incident_id=<%= rs1.getString("incident_id") %>" class="custom_dark-btn" >
                report
              </a>
              </div>
      
    </div>
  </div>
<%
}
%>

      <% 
      	      rs1.close();
      			
		      st1.close();
		    
		      conn.close();
		 }
		 catch(Exception e)
		 {
		      e.printStackTrace();
		 }
		   %>
		   
</body>
</html>