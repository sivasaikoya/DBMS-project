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

  <title>Sign up</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>
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

          
        </nav>
      </div>
    </header>
    <!-- end header section -->

  </div>

  <!-- login section -->
  <div class="max-w-md mx-auto bg-white p-8 rounded shadow-md">
    <form action="customer_signup_servlet" method="post">
        
        <div class="mb-4">
            <label for="cust_fname" class="block mb-2 font-bold">First Name</label>
            <input type="text" id="cust_fname" name="cust_fname" placeholder="First Name" required class="w-full px-3 py-2 border rounded-md">
        </div>
        <div class="mb-4">
            <label for="cust_lname" class="block mb-2 font-bold">Last Name</label>
            <input type="text" id="cust_lname" name="cust_lname" placeholder="Last Name" required class="w-full px-3 py-2 border rounded-md">
        </div>
        <div class="mb-4">
            <label for="cust_DOB" class="block mb-2 font-bold">Date of Birth</label>
            <input type="date" id="cust_DOB" name="cust_DOB" class="w-full px-3 py-2 border rounded-md">
        </div>
        <div class="mb-4">
            <label for="cust_gender" class="block mb-2 font-bold">Gender</label>
            <input type="text" id="cust_gender" name="cust_gender" placeholder="M or F" required class="w-full px-3 py-2 border rounded-md">
        </div>
        <div class="mb-4">
            <label for="cust_mob_number" class="block mb-2 font-bold">Mobile Number</label>
            <input type="text" id="cust_mob_number" name="cust_mob_number" placeholder="Mobile Number" required class="w-full px-3 py-2 border rounded-md">
        </div>
        <div class="mb-4">
            <label for="cust_email" class="block mb-2 font-bold">Email</label>
            <input type="email" id="cust_email" name="cust_email" placeholder="Email" required class="w-full px-3 py-2 border rounded-md">
        </div>
        <div class="mb-4">
            <label for="cust_passport_number" class="block mb-2 font-bold">Passport Number</label>
            <input type="text" id="cust_passport_number" name="cust_passport_number" placeholder="Passport Number" required class="w-full px-3 py-2 border rounded-md">
        </div>
        <div class="mb-4">
            <label for="cust_martial_status" class="block mb-2 font-bold">Marital Status</label>
            <input type="text" id="cust_martial_status" name="cust_martial_status" placeholder="Married or Unmarried" required class="w-full px-3 py-2 border rounded-md">
        </div>
        <div class="mb-4">
            <label for="cust_ppS_number" class="block mb-2 font-bold">PPS Number</label>
            <input type="text" id="cust_ppS_number" name="cust_ppS_number"  placeholder="PPS Number" required class="w-full px-3 py-2 border rounded-md">
        </div>
        <input type="submit" value="Submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
    </form>
</div>

  <!-- end login section -->




  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      Copyright &copy; 2019 All Rights Reserved By srinu,hari kiran
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

</body>

</html>