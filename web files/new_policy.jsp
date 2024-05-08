<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  <title>Insure</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>
<style>
    /* Optional additional styling for the form */
    
    /* Adjusted styling for the form */
    form {
        width:40%;
        margin: 2% auto;
        box-shadow: 2px 2px 5px gray; 
        border-radius: 20px;/* Center the form horizontally */
    }
    .submit{
        margin: 10px auto 5px 500px;
    }
    .radio_gender{
        margin-left: 3%;
    }h2{
        font-weight: 30px;
    }
    /* Responsive styles */
    @media screen and (max-width: 768px) {
        form {
            width: 80%; /* Adjust width for smaller screens */
        }
    }
</style>
<body>

<%-- <% 
        response.setHeader("Cache-control","no-cahe, no-store, must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");
        if(session.getAttribute("cust_id")==null)
            response.sendRedirect("index.jsp");
    %> --%>
  <div class="hero_area sub_pages">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand" href="index.html">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUegmd4hLxHgLFGTxwzUl0LbcLgxHvg9aS0A&s" alt="" /><span>
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
    <!-- end header section -->

  </div>

  <!-- login section -->
  <form action="new_policy" method="post">
    <fieldset class="border p-3">
        <legend class="border-bottom mb-4 pb-2"><h2> Next-of-Kin Information</h2></legend>
        <div class="mb-3">
            <label for="nok_name" class="form-label">Name:</label>
            <input type="text" id="nok_name" name="nok_name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="nok_address" class="form-label">Address:</label>
            <textarea id="nok_address" name="nok_address" class="form-control" required></textarea>
        </div>
        <div class="mb-3">
            <label for="nok_phone_number" class="form-label">Phone Number:</label>
            <input type="text" id="nok_phone_number" name="nok_phone_number" class="form-control"  required>
        </div>
        <div class="mb-3">
            <label for="nok_marital_status" class="form-label">Marital Status:</label>
            <select id="nok_marital_status" name="nok_marital_status" class="form-select" required>
                <option value="">Select</option>
                <option value="married">Married</option>
                <option value="unmarried">unmarried</option>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Gender:</label>
            <div>
                <input type="radio" class="radio_gender" id="nok_gender_male" name="nok_gender" value="m" class="form-check-input" required>
                <label for="nok_gender_male" class="form-check-label">Male</label>
            </div>
            <div>
                <input type="radio" class="radio_gender" id="nok_gender_female" name="nok_gender" value="f" class="form-check-input" required>
                <label for="nok_gender_female" class="form-check-label">Female</label>
            </div>
            <div>
                <input type="radio" class="radio_gender" id="nok_gender_other" name="nok_gender" value="o" class="form-check-input" required>
                <label for="nok_gender_other" class="form-check-label">Other</label>
            </div>
        </div>
    </fieldset>
    <fieldset class="border p-3">
        <legend class="border-bottom mb-4 pb-2">Vehicle Information</legend>
        <div class="mb-3">
            <label for=" vehicle_registration_number" class="form-label">vehicle registration number:</label>
            <input type="text" id=" vehicle_registration_number" name=" vehicle_registration_number" class="form-control" value="">
        </div>
        <div class="mb-3">
            <label for="vehicle_value" class="form-label">vehicle value:</label>
            <input type="text" id="vehicle_value" name="vehicle_value" class="form-control" value="">
        </div>
        <div class="mb-3">
            <label for="v vehicle_type " class="form-label"> vehicle type :</label>
            <input type="text" id=" vehicle_type " name=" vehicle_type " class="form-control" value="">
        </div>
        <div class="mb-3">
            <label for="vehicle_number_of_seat" class="form-label">Number of Seats:</label>
            <input type="text" id="vehicle_number_of_seat" name="vehicle_number_of_seat" min="1" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="vehicle_manufacturer" class="form-label">Manufacturer:</label>
            <input type="text" id="vehicle_manufacturer" name="vehicle_manufacturer" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="vehicle_chasis_number" class="form-label">Chassis Number:</label>
            <input type="text" id="vehicle_chasis_number" name="vehicle_chasis_number" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="vehicle_model_number" class="form-label">Model Number:</label>
            <input type="text" id="vehicle_model_number" name="vehicle_model_number" class="form-control" required>
        </div>
         <div class="mb-3">
            <label for="start_date" class="form-label">Policy Start Date:</label>
            <input type="date" id="start_date" name="start_date" class="form-control" required>
        </div>
    </fieldset>
    <button type="submit" class="btn submit btn-primary">Submit</button>
</form>

  <!-- end login section -->




  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      Copyright &copy; 2024 All Rights Reserved By 
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

${coverage}
  ${vehicle_registration_number}
  ${cost}
  ${product_id}
  ${vehicle_type}
</body>

</html>






