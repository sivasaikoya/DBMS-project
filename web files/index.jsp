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

  <title>Tropiko</title>

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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
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
              <ul class="navbar-nav">
                <li class="nav-item active">
                  <!-- <a class="nav-link" href="index.html">Products <span class="sr-only">(current)</span></a> -->
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
            <div class="quote_btn-container ml-0 ml-lg-4 d-flex justify-content-center">
              <a href="customer_signup.jsp">
                Sign up
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
      <div id="carouselExampleControls" class="carousel slide login_slider" data-ride="carousel">
        <div class="carousel-inner ">
          <div class="carousel-item active">
            <div class="slider_item-box">
              <div class="slider_item-container">
                <div class="container">
                  <div class="row">
                    
                      <div class="slider_item-detail">
                        <div>
                          <h1>
                            Your Shield, <br />
                            Our Promise
                          </h1>
                          <p>
Welcome to our insurance company, where your peace of mind is our priority. With tailored coverage options and unwavering support, we're here to protect what matters most to you. Join us and embark on a journey towards security and confidence.                          </p>
                          <div class="d-flex">
                            <a href="" class="text-uppercase custom_orange-btn mr-3">
                              Read more
                            </a>
                            
                          </div>
                        </div>
                      </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="slider_item-box">
              <div class="slider_item-container">
                <div class="container">
                  <div class="row">
                    
                      <div class="slider_item-detail">
                        <div>
                          <h1>
                            Welcome to <br />
                            Our Fruits Shop
                          </h1>
                          <p>
                            There are many variations of passages of Lorem
                            Ipsum available, but the majority have suffered
                            alteration in some form, by injected humour, or
                            randomised words which don't look even slightly
                            believable.
                          </p>
                          <div class="d-flex">
                            <a href="" class="text-uppercase custom_orange-btn mr-3">
                              Read more
                            </a>
                            
                          </div>
                        </div>
                      </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
          
        </div>

        <div class="container">
          <div class="login-form">
              <h1>Login</h1>
              <form id="login-form" action="EmailSendingServlet" method="post">
                  <div class="mb-3">
                      <label for="email" class="form-label">Email:</label>
                      <input type="email" class="form-control" id="email" name="email" required>
                  <% if (session.getAttribute("email_not_found") != null) { %>
<div class="uploadMsg">
    <p>
        <b><%=session.getAttribute("email_not_found")%></b>
    </p>
</div>
<% } 
session.setAttribute("email_not_found", null); %><br>
<a href="staff_login1.jsp" style="color: #fc5d35;">Login as a staff</a><br>
                  
                  </div>
                  <button type="submit" style="background-color:#fc5d35; border:2px solid #fc5d35" class="btn btn-primary">Generate OTP</button>
                  <div id="animated-message" class="animated-message"></div>
              </form>
          </div>
      </div>

        <div class="custom_carousel-control">
          <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </section>

    <!-- end slider section -->
  </div>

  <!-- collaboration section -->

  <section class="service_section layout_padding ">
    <div class="container">
      <h2 class="custom_heading">Our Collaborations</h2>
      <p class="custom_heading-text">
        There are many variations of passages of Lorem Ipsum available, but
        the majority have
      </p>
      <div class=" layout_padding2">
        <div class="card-deck">
          <div class="card">
            <img class="card-img-top" src="data:image/png;base64,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" alt="Card image cap" />
            <div class="card-body">
              <h5 class="card-title">Bajaj</h5>
              <p class="card-text">
                There are many variations of passages of Lorem Ipsum
                available, but the majority have suffered alteration in some
                form, by injected humour, or randomised words which don't look
                even slightly believable.
              </p>
            </div>
          </div>
          <div class="card">
            <img class="card-img-top" src="data:image/png;base64,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" alt="Card image cap" />
            <div class="card-body">
              <h5 class="card-title">Acko</h5>
              <p class="card-text">
                There are many variations of passages of Lorem Ipsum
                available, but the majority have suffered alteration in some
                form, by injected humour, or randomised words which don't look
                even slightly believable.
              </p>
            </div>
          </div>
          <div class="card">
            <img class="card-img-top" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEX///8/eLo1c7gtb7aVsNXP2+s6dbkycbcobbUzcrcmbLWatNdnkcb09/u5y+PW4O74+v3f5/K8zeSzxuBUhcDr8PdtlciqwN1FfLzn7fXE0+eMqtKiudpMgL6EpM+nvtx6nctdi8N0mcqHptAZZ7O/5nG+AAAKNElEQVR4nO2df5eiIBSGExRQM0tNTbO0me//GRet2S0FRIVs9vD+sefsmRn0kV/3Xi6w2RgZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZ/V86HsKwiOI4y67XLIvjqHDCw+m4X/u9Fio4OdG1vDU59AgkEENM5bou/Zf+BxJCPJg3dXmOi1Ow9stO1Km4lk0OCIQuQMgSCSHgYkhcqylj51dwHqJyCzzojoAxUAGGnrX1i9PaCHztHX+LCART2XqcBG3Pzgf2UMdvIMRL4J4waS9tfGdtpCcdsi1cVnUMSgDhLf6IFhvaFXHV0v2lxCTxw5XxSkwUV14PEhBcrgZ5sC0CNNL9CMDcP7wfL8gS7x14D0gvid87vIYXrGjclBWCuH5fa90l3nvxHpAk2b0DL/DRm6vviREDX7dldyyhuxLeXS4sjzr5Lm8ZPMUC5KKLMSjh+nytACx1DKx7/42zw5gAOSsHjNG6/a8vbKkdV50Kro00EEzUzY9BTdaaH0RC5KKoO2bwE/laARQp4DtuP6+B/hNJF1sA8cdW4F0IL6vG/Y2sjTAqclvQG0Prc6ZAvoA123s8e2u/vJyQd53Ft08/eYh5FalnAJ5+RQv9kVtNtsad1ZzAeUJgooWz+yVd8EmkmAL4W8aYF3mxPKD9+bMgS560S/VLAWlD9f9zQIpoywD6vxdQrhavSwARQt0SNoEPEYKxYBm4XRalv3P/TdguhNNfXjRNkVHzZt40gdpXJZ7V3MpzHBVtFkLQ6ngKi9ivE8LwUBAm1c2OI+dw6nRwiiKK/Ut6X/gXfRiRvBFfw5kISMkwff3m4u+cE9/GD6JtL0yA4K3gu3bBofswiDaGyevlnnDqP2FpNNRWWp6WcXGQckIPzXMoSzLmeQyj86WxPIInrOEBUdGVTDnIxQQltR9NdFpu/wqH2aS/DMKdneZYMkcAJfyS6pEqRIDWW1WfC0GD5Gv/9/XQbcafU87IvsnUp3vhFRELhtE2eyDf+rslS5X1z5vBBZGH/WHnb622f/JflnDstxMbkPY4OkrW2fJ8HvvHH4OL8yyORVa31ckZhgg7xSEZ/HbbKkHzFYdq4pIKCTsFYfyVQFarZXdFH/bhYGNPHU2EUk3YibZau4H9QQgybJvT9zOcldqR8mQWLYR3nSL7NR/LG1ZN0/6QTgQQpbpyyzQSdqKYDXhgoqb/0+jbhZ6VnnUmzukm7EQxU8uD+Lu/NlVdFAyWI3oLYaejk5WCeV+b3ke4lgzhx2l/pC5dlPl2+XWp022r26X0dwXPQBglpJZn5peXGy0svdX1V2mfs13hhKfgrSlf1HfL/Hqb5Ii65Ri7GLR++Y+ov4gJri6s4KWQMIjrvM13x0+lAeDiexAAVc3Nvu4cOU9tpjpfLc2Jdw9MCO17hCAehvYEhEHtjQTZHynvHkxuZSbpk8qKemfU37baDzzF3x6ulvAJ9xMWSTpUAi3qoe7ChblD+1ORXRpAp89JaD/y+sYDnzCTji28kGLoUccgc+ZwHp3rpcIzoiRPwn0vjU+Yzn9KG06BqCnjULrhniK/NXuWsN0FSmnCxetcXX3mqT/mLpwKhiMy/6n9WAWXcD+jkTKf2Lp8W79gttq9c04tZXD35/XNey7hUeVqc7spxUqzl5hiUNiJJwx8zHtUtQrh/dku8Rr/4UtEifLtIA+tSNiKtlmctJbHVtd6/SBY8mbCVmBLi9dV+IR+GGjM+qDfT9tiGkplCTf6CMlx42grHfVDz3xCRbMFQ/RRsbbSJ8z4ul6hM6xsbYlBbt+74BM22pJ3gL/50lY47ke7+IS1tpdAX0uM3hENOPiEpbaGRIe7RFfZFumHnfmEV30bAZJNpa1s0g+u8AkLfYNptcm1lZ1vpAlDfRku+RtNGgFhoDGHR18dolqeUOOEmOsjHEyHIkJ9E2KlbywdLtYLCPVNiMlmq6vswWQhIjzrGkzRdnPRRegNIvECwkiX/U9tGm12KepTiAgPugZTapfGmsyJgXcoJNzrSrumvoWjqQeAYTKraGVGz0t0j9Ll4w88CzHhTdNwQH18XV+PDJMgRYS+ruGAlq1pusDDZQQRYaFnMO1GA19PR+wHS0cINQ2mbpsUrScUxUqwFBHu9bTSe1/R8vVcRka5cJV7mDeoQrArW8swxoIQEmqxrR7+TaSjI3qMFS4h4Zxl4FHBe8JEoKNsMGQQE4Y6hgPwsI01NFOGzTaWbaLBbvsbdXfUjzWAtTtHnDGkwRX/Z3WoLxxPzhjS4AQ/LdGq7+XMVHIxofqYKfyXDLJX38sZCCOE6i2P59HOVvz90HY6ofJl0pe8M9WlMweasdxE1aMBeAmj+GorkTnQjBEqHmrwq92o2PBlWTSjhKqHml7xsdp2yiIYI1Q71JBBuFalbc/ZmzZCqDQaxRjrDt/jfyarYUBfhlDpRx6kfrbPVzftQ/YBDmOEChfcIfMbq/uEkJ3SOka4U/aNByl1d3H2H84Rs/xRQnWxGsa+rk6ZoicMVw7lCDeqpizC3WZ8U/MIl/OAUUJFgU3M+cKtpPZyj4oRDJYjVBMW5nTCu45KzAo4d8+MmpQMLEzdV+HuD1MUZAmPKuZ8MrKpKlr+kEHGnjShiuQeb/TUz0Vnm9zfn7fbfpxwuXsxfrYJfY+lBjBnM7wM4eJwitwpQ0vPGMLcgkcJl+ZGyZ0xtBSRGSqVJFwYMJIFXHiQEsexkCJcZhvLA9L+sGBE5b++BOGSzBD5w8xaFfMRIXcPmQThgjl/6NSLNfvcRMH5NxKEs/MmJp+bSJ9VzWsw3Plebi/3zJAiyOfsspx3wq7gdB0ZwnlzPuSO32LNOh+SO9/LEc6a8z3J0wSHCq3pX5Q738sRzpjzEVpwOPs+nfpAnn8vS7iZ3G5Iuuw4gqnnefP8e2nCidnCCE44tZSt47Rq5Pn30oTT/HyyVXGbxw5MeCgQNBkpwinpX4iRHjhL+4v03Qhc/16aUH7OR+Sm7uyIMJf8soys0omE0n4+zNWeAXMFUkEq9sLhJEK55CgXzDuHXaC9LXONFXvhcBKhzJZP4Nk6Tqw5ylxVIipAjnA8tg/IRdcxNad65L6nwdbfF0meojTS5TXe99Tq+CW8s2twnMmLJAmFez4139nVKvAB38wZ7pN5liQhf/8Mwlj7vWud4orXIYe7SJ4lSchbz0eket8liGHNvP+QnSj0V5KEzOQeWn1vvP+we42sGt5ShsV+mux5bcMVMOBV2QoXPh/svNdaR95clrC3ng+IZa9wD+ldzhd8nj888XeWJXxaz+/ukl35hL6wzH/uAxYuTW7kCX/m/PbUdnvl+4Dv+rnTWTzfTzg3Ed2PfNpmH3Gn80OO3ZDvEXdbmjD1SGMXn3f7eMA+Y+ufpAkLwZH7H61fd7rnZP3/hKWH29NAMf7+XwnD3S7Orlm8i3S7B0ZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZG6+gP0c2qnRY5rCAAAAAASUVORK5CYII=" alt="Card image cap" />
            <div class="card-body">
              <h5 class="card-title">Tata</h5>
              <p class="card-text">
                There are many variations of passages of Lorem Ipsum
                available, but the majority have suffered alteration in some
                form, by injected humour, or randomised words which don't look
                even slightly believable.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end collaboration section -->

  
 
  <!-- contact section -->
  <section class="contact_section layout_padding">
    <div class="container">
      <h2 class="font-weight-bold">
        Contact Us
      </h2>
      <div class="row">
        <div class="col-md-8 mr-auto">
          <form action="">
            <div class="contact_form-container">
              <div>
                <div>
                  <input type="text" placeholder="Name">
                </div>
                <div>
                  <input type="text" placeholder="Phone Number">
                </div>
                <div>
                  <input type="email" placeholder="Email">
                </div>

                <div class="mt-5">
                  <input type="text" placeholder="Message">
                </div>
                <div class="mt-5">
                  <button type="submit">
                    send
                  </button>
                </div>
              </div>

            </div>

          </form>
        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->

  <section class="info_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h5>
            Plans
          </h5>
          <ul>
            <li>
              randomised
            </li>
            <li>
              words which
            </li>
            <li>
              don't look even
            </li>
            <li>
              slightly
            </li>
            <li>
              believable. If you
            </li>
            <li>
              are going to use
            </li>
            <li>
              a passage of
            </li>
            <li>
              Lorem Ipsum,
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>
            Services
          </h5>
          <ul>
            <li>
              randomised
            </li>
            <li>
              words which
            </li>
            <li>
              don't look even
            </li>
            <li>
              slightly
            </li>
            <li>
              believable. If you
            </li>
            <li>
              are going to use
            </li>
            <li>
              a passage of
            </li>
            <li>
              Lorem Ipsum,
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>
            List
          </h5>
          <ul>
            <li>
              randomised
            </li>
            <li>
              words which
            </li>
            <li>
              don't look even
            </li>
            <li>
              slightly
            </li>
            <li>
              believable. If you
            </li>
            <li>
              are going to use
            </li>
            <li>
              a passage of
            </li>
            <li>
              Lorem Ipsum,
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <div class="social_container">
            <h5>
              Follow Us
            </h5>
            <div class="social-box">
              <a href="">
                <img src="images/fb.png" alt="">
              </a>

              <a href="">
                <img src="images/twitter.png" alt="">
              </a>
              <a href="">
                <img src="images/linkedin.png" alt="">
              </a>
              <a href="">
                <img src="images/instagram.png" alt="">
              </a>
            </div>
          </div>
          <div class="subscribe_container">
            <h5>
              Subscribe Now
            </h5>
            <div class="form_container">
              <form action="">
                <input type="email">
                <button type="submit">
                  Subscribe
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>



  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      Copyright &copy; 2024 DBMS
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

  <script>
    
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>