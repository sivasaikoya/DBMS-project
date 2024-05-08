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

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<style>
  body{
    background-color: #f7f7f7;
  }
  .container1 {
    background-color: #fff; /* White background for the form container */
    border-radius: 20px; /* Increased border radius for rounded corners */
    padding: 20px; /* Reduce padding for tighter layout */
    max-width: 500px; /* Set a maximum width for the container */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
    margin-left: 33%;
  }
  .form-group {
    margin-bottom: 20px; /* Adjust spacing between form groups */
  }
  /* Input field adjustments are kept from previous example */
  .form-control {
    width: 60%; /* Set input fields to a smaller width (e.g., 60%) */
    padding: 10px 15px; /* Reduce padding for tighter content space */
  }
  .btn-primary {
    padding: 12px 40px; /* Increase button padding */
    background-color: #007bff; /* Blue button background color */
    border-color: #007bff; /* Blue button border color */
    border-radius: 20px; /* Increased border radius for rounded corners */
  }
  .btn-primary:hover {
    background-color: #0056b3; /* Darker shade of blue on hover */
    border-color: #0056b3; /* Darker shade of blue for border on hover */
  }
</style>
<body>
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
                  <a class="nav-link" href="service.html"> Renewal </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.html">Contact us</a>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form>
            </div>
            <!-- <div class="quote_btn-container ml-0 ml-lg-4 d-flex justify-content-center">
              <a href="./new_customer_signup.html">
                Sign up
              </a>++
            </div> -->
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

    <div class="container1 mt-5">
      <h2 class="mb-4">Enter Vehicle Details</h2>
      <form action="getting_cost"  method="post">
        <div class="form-group">
          <label for="vehicle_number">Vehicle registration Number:</label>
          <input type="text" class="form-control" id="vehicle_number" name="vehicle_registration_number" placeholder="Enter vehicle registration" name="vehicle_number">
        </div>
        <div class="form-group">
          <label for="vehicleValue">Vehicle Value:</label>
          <input type="text" class="form-control" id="vehicle_value" name="vehicle_value" placeholder="Enter vehicle value">
        </div>
        <button type="submit" class="btn btn-primary">View Plans</button>
      </form>
    </div>

  </div>

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>