<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle and Next-of-Kin Information Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Optional additional styling for the form */
        body {
            font-family: 'Poppins', sans-serif;
            color: #000000;
            background-color: #f7f7f7;
          }
        /* Adjusted styling for the form */
        form {
            width:40%;
            margin: 0 auto; /* Center the form horizontally */
        }
        /* Responsive styles */
        @media screen and (max-width: 768px) {
            form {
                width: 80%; /* Adjust width for smaller screens */
            }
        }
    </style>
</head>
<body>
    <header class="header_section" >
        <div class="container">
          <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
            <a class="navbar-brand" href="index.html">
              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUegmd4hLxHgLFGTxwzUl0LbcLgxHvg9aS0A&s" width="25%" alt="" /><span>
                Insure
              </span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>    
          </nav>
        </div>
      </header>
    <form action="sending_info_incident_report" method="post">
        <fieldset class="border p-3">
            <h2><legend class="border-bottom mb-4 pb-2">Incident report</legend></h2>
           
            <div class="mb-3">
                <label for="  agreement_id" class="form-label">  Incident id:</label>
                <input type="text" id="  agreement_id" name="incident_id" class="form-control" value="<%=session.getAttribute("incident_id") %>" readonly required>
            </div>
            <div class="mb-3">
                <label for="  claim_amount" class="form-label">  Customer id:</label>
                <input type="  text" id="  claim_amount" name="cust_id" class="form-control" value="<%=session.getAttribute("cust_id") %>" readonly required>
            </div>
            
  
           
        </fieldset>
        <fieldset class="border p-3">
            <legend class="border-bottom mb-4 pb-2">Incident</legend>
            <div class="mb-3">
                <label for=" INCIDENT_TYPE" class="form-label">Incident cost:</label>
                <input type="text" id=" INCIDENT_TYPE" name="incident_cost" class="form-control" value="">
            </div>
            <div class="mb-3">
                <label for="INCIDENT_DATE" class="form-label">Incident type:</label>
                <input type="text" id="INCIDENT_DATE" name="incident_type" class="form-control" value="">
            </div>
            <div class="mb-3">
                <label for="DESCRIPTION" class="form-label">Description</label>
                <input type="text" id="DESCRIPTION" name="incident_report_description" class="form-control" value="">
            </div>
            
        </fieldset>
        <button type="submit" style="background-color:#fc5d35; border:2px solid #fc5d35; margin-left:88%; margin-top:2%" class="btn btn-primary">Submit</button>
    </form>
</body>
</html>