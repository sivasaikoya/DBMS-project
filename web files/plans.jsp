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
</head>
<style>
h4{
pading-top:0%;
margin-top:0%;
}
</style>
<body>
  <div class="hero_area sub_pages">
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
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <div class="dropdown">
                    <button class="dropbtn nav-link">Products</button>
                    <div class="dropdown-content">
                      <a href="vehicle_reg.html">Bike</a>
                      <a href="vehicle_reg.html">Car</a>
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
              </a>
            </div> -->
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

  </div>


  <!-- fruits section -->

  <section class="fruit_section layout_padding-top">
    <div class="container">
      <h2 class="custom_heading">All Plans</h2>
      <p class="custom_heading-text">
        There are many variations of passages of Lorem Ipsum available, but
        the majority have
      </p>
      <% float[] coverage = (float[]) request.getAttribute("coverage");
      	 float[] prices = (float[]) request.getAttribute("prices"); %>
      <div class="row layout_padding2">
        <div class="col-md-8">
          <div class="fruit_detail-box">
            <h3>
              Platinum
            </h3>
            <p class="mt-4 mb-5">
              Our top-tier Platinum Plan offers elite protection for your most valuable assets, coupled with personalized service to meet your every need. Elevate your insurance experience to unmatched levels of excellence and security.
              <h4>price:<%=prices[2] %> </h4>
              <h4>coverage:<%=coverage[2] %></h4>
            </p>
            <div>
              <a href="setting_attributes?cost=<%=prices[2] %>&coverage=<%=coverage[2] %>&index=<%=2 %>" class="custom_dark-btn">Buy now
               
              </a>
            </div>
          </div>
        </div>
        
        <div class="col-md-4 d-flex justify-content-center align-items-center">
          <div class="fruit_img-box d-flex justify-content-center align-items-center">
            <img width="100%" src="data:image/jpeg;base64,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" alt="" class="" width="250px" />
          </div>
        </div>
      </div>
      <div class="row layout_padding2">
        <div class="col-md-8">
          <div class="fruit_detail-box">
            <h3>
              Gold
            </h3>
            <p class="mt-4 mb-5">
              With our Gold Plan, you get comprehensive coverage at a competitive price, ensuring your assets are safeguarded without compromising on quality. Enjoy the peace of mind that comes with knowing you're in good hands.

              <h4>price:<%=prices[1] %> </h4>
              <h4>coverage:<%=coverage[1] %></h4>
            </p>
            <div>
              <a href="setting_attributes?cost=<%=prices[1] %>&coverage=<%=coverage[1] %>&index=<%=1%>" class="custom_dark-btn" >
                Buy Now
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 d-flex justify-content-center align-items-center">
          <div class="fruit_img-box d-flex justify-content-center ">
            <img width="100%" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExIWFRUWGBoVGBcYGRobGBoYGBYXFxkaGhobHSkhGholHhgaIjEhJSkrLi4uFyAzODMsNygtLisBCgoKDg0OGxAQGy0mICUtLzAtLS0tLTctLS0tLS0tLy0tKy8tLS0tLS0tLS0tLS0vLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAwQFBgcCAQj/xABPEAACAQIEAgYEBwsJCAMBAAABAgMAEQQSITEFQQYTIlFhcQcygZEUI0JSYqGxNENTcoKSs8HR4fAIMzVUc8LD0vEVFhdEdJOy02NkoiT/xAAZAQADAQEBAAAAAAAAAAAAAAAAAwQCAQX/xAAwEQACAQIFAwEHBAMBAAAAAAAAAQIDEQQSITFBE1FhcSIygZGh0fAFFELBM7HhUv/aAAwDAQACEQMRAD8A3GiiigAooooAKKKKACivCa8RwQCDcHUEbEUAdUjicUsYBc2BIW52ub2v7q9xOJSMZnYKPH7B3nwqvcQxpkIYghRfIp3JIsWYctNAOQJvqbCbE4iNKPnsMp03NlmriWVVF2IAHMm1U4YnKOyXUdyMwGm+imwHspvPitQdSdbFmudN9ySKlf6kraR1G/t/JNYvjR6xWT1VuLHTNffy2Fqfw8chO5KnuIP2jSqNiMSO0xYaEgW1DEECw2tvv4bVwcVYhc/42nqjPl79dNeVTQxtWLb7jXRg1Yvs3HIFHr38ADUVD0kvNdhZLWtzHiaqLYsEE5z3ILatdiOW2g38aTFsyhXFyLncBbnYnW+mp05c6J4yrJrgFRgjVoZlYXUgjvFd1lmH4hIoLKxABAJVrXuSBYHU7UpiOPz2szyAEA66XB2I7we+ql+o6ax1FvDa6M0yOUEkA3tofOu6zzox0g6piHvkY68yD3+Iq/4edXAZGDA8xVOHxCqrz2FVKTg/ApRRXgNUij2iiigAooooAKKKKACiiigAooooAKKKKACimvEMcIQGZWILBeyLkE7abnXTTvpo/Gwf5uKRj9JTGo8y9jbyBpc60Ie87GlCT2Q84jixFGW3OyrzZjoqjzP6zVcjw6xqFBcEAAlHdQTbU2VgLne/jSmImObrJmBbYAXyIDobeOtix1PgNKhsZjC3WIBd1XMBbmQbj8Ycu/WvHxWJdWSy7IrpU8q1HzTIDcCzfOa7G18pNybkA8r1GScRzdWwBOdrG3IC+YW9x+zxUhwrM6yHfJZhyubEk+BB19tJS4qCBbZr5Rpl0tvqWvvY2v5VKNE3jlcSAkLdsot81cqnQeBB9lLf7Pu2bU9nKDsO4k371tVV4n6RIlOWLtHQARjMe4do6e4mq3xvpfjVIDwtCWGZRKHzFSSAbdm2oO4O1UQwtWXFvUw6kVyaT8ERQoJQZeRa4vaxOmvs8Pcm6xWI6yPU3J7VztodNtKoXRrA4zHxySjGdUqP1ZVYgzk5Q2gGXSx+dyNI9IOjuNgiaYYqaRU1cESROqk2D5c7Bk7yG07rXI0sMs2VzV/j9jnU0ukzQm6sknrIrkW+VoL37Omndrek/gSnKAEYDcBwC2+pLbbjS3LxqjdE+BS4rDvO2NxCESFAqkvcBQb2Zxre/PkKX47wfG4PDnE/DGdAyrlkgyMS5sNy1+/flR+3WbIpq/x+wdTS9i1T4BgpJV730NuwBbe4O9/qrlQ4dnRg+Rb5m22t2QfElR5jvFVLgnGeJtH10eFaaO5GaK4a679kFifYtSWF6cwuxTER5HBsesXKwPiw2/KtWZYaouL+hpVYskgAFQBSGJ/nCSFy+qABtbUNe196dQYqWMuYXYqmpdeyLbXKkkb3HP1TyFKQSRyZHRw9hZElN1trbKykA2v4DxppLg2GWMZ+sZvVNgv0SDftX37rg99I5GDuTpJiW7Jma3sHvIF60zhONWaJJF2I9x5g1kjlCxDZYwi5R1a3uRcC+2Yk7sdTYd4s/wCB8amwpVspyPrlPqtbQlT37a89PCqcPXdOd3sKq08y0NYoqAwPS/CyDWTqzzD6fXsfZUvg8Ykq5o2DLsGGxtobV68K1OfusicJLdDiiiimmQooooAKKKKACiiigAopHFYpIxmdsq3tc7XO1zyphPxkEWhUyH5xBEY8SxHa8lufLelzqwh7zNKLexxxuXM8cQ5HrW8FW+X2l7W8FbuqPx2LEYzNovf4XAv471xiJuqVnJzse07HQkjkO4W0A7h7TGIhkY/LglQeYbb8lre+vBxFXrVM3BbTjlVhPEo8pkiPqlVKNe41035qTbypXESxw2Zz27AW0LECxF/b9Vqbcc41FhIyMy3Uasdl0A08T3Dcms9wfXcWkl+NMWHjsZACDM4PLLewB137I+nawKdJzWZ6RW7OylbTkd9JfSELmOGzHuBsg8yPW9mniKhejWB/2lJIMTO9owHEa2UEX1tcEC3kT41IcfGGaIcNweE6zEdYG+LN+qK6Nnlb+dYg5W2Rb7iwAifRziOq4lEj9nOWgYHSzMCACDzzqFt9I16MKcY0W6as/r/y4hyblaWx3wnhjYTiuHRjdetBR9sy6i/gwvqOXkRe4+kfg/X4FcQusmHGc95iewlH5JAfyVu+lONYJRL1Z9eLLOnfkzFM48AwZD3ad4pHgnHQMY+Fmt1UsKkZttmVwfAgD801O685SjPmK18/iGdNJNdyL9GiXwONv6pcKfbHY/Uaf8PgU8LxGHwREgEUirdw1w5zS6qLB8t8q2AuR7W3QTH4bBjG4aaeIDrlKFnADoFI9bUXta/jTBeM4Th0MkeDkWV5BYWdpANMuZnyKt7cl/fW6kZSqNxT1aa00+JmLWWz8kjwjConBE61sqTmRnN7dlpDGuvK+g9tU/pHw/CQwxthsS0hZjnj6xGVQq3vZFGtzz8ateF6ScPl4fBg5ZVGSGNHV1nUZ0IYlXiU/KHlpUXFwbAtjcFHh5w6vLml7d1VY+3luwB7Vra99qbSbhOTlmWre2ljMtYpKxZZ0nwXDsPBDAJZj2mQi6guSzEjMpvsNCCM1RfpNwafBcPMwAmzrH62c5TEXkjz/LRHsAx7/pVIdK+KO3Fo8OpuuQdYvczB5B4ghMh/KNUz0izs2NkQuxEaqiAnROwpYKNhc3JpeGhJ1It76y86mqjWXT0O+j/AMb1YnikjgRtR1jkB/HKEYEeLW8O+rJh+k0kDDD4+IJcXBJzQuNsyOCco8QSBzI2obHy4vDRfApXiljVbKjZbsim8Ted7i/ZJtfQ3FS4zxzEcQaGMoLoMixxrbNIbZ3I5FrDs7KBpzraj1286Wm/dfc4307Zf+GmNAHQCNiY82ZlAXrAOZB0zi2o1+y9NrZbytGXiBKKGYgXttoe7Ww+wVV8bh5+EGG8qyI41jBs6OAC2T6Iv5XNjYm9Wrh+LixQWWMIz7kHRXPMMNCr7e23mYqlJxWZaxfI+M76cjKWEqFJZTmF7A3YWt6w5Xv489q0H0dY8NC0J9ZGJA71Y3v771Ryer7fxZZiy5Ct8mpBup0Hhfl7TRhsQ2GkR4pFZgBe17a7o199v40oo1OnNSCcc0bGz0VX+C9LIJgAzCN+asba+B2NTsUoYXU3HeNq9uFaE/dZBKEo7o7ooophkKKKKACiiigCP4/8Ac8neRZfxiQF9ua1RWLlIJ/ge091OeK4oO4QepGczHkXHqqPxfWPiFHfVc4jiCxyo2SWwdb8x4HbnYg14mOmp1bLgsoxaicpKZHV4zoCUkQi+510+VY+21I8c4vHg4SActlueeUdwtubmwHiBTqaZYYzIVys3La7WtcjwuR41k/ERiOKSyCCxii1zMSFZjpobG53sNrXJIzCk0aXUersluxkpWWg4w/A8TxVHn6xYkBKwI+zsPXLEeqdQM1jqbDQEmv4HEYjh2LBdGjkQ9uNvlIdx3MpGxBsbb1PdD8dPgJTBPGyRykFWIBRZh2VOYXUhx2CL/MPKrlxrF4LFlcLi1yFgWhc6Mp2YRudmB3Q6EWNjyvlW6cnBq8GtLdv78/MQoOSzcjbpAHSH4ZgIxL1wSTsgkkEBQSqjNJlNhl3Gu1jVH4lwDGJG+PlZRMsiuQSucMDcMbaBgQOyPt0qdwvGX4QZcFL/AP0xt8ZB1b2dXawsdyivc3tfUGwJZrPOFdFsTj2WTGWSJdY8Ol1jQeOtyx5m5Y82+SFwfRV7rL35a7Gn7enP+vIz6RdJGx8+HlwEMolgLZnYKIyJAuaM66roQQbXDNprenUfQDE4p+uxUiqcoXLEoRVUXsoJGo1O4vruav0WFgwkYyqqqLAaAW/FG1GPxDtEHj1JItffU2FrX3/XU7xTSSpqy+vzNqkuSvYP0eYGMdpQ1u+7f+RtUpH0bwSbQD81BTqeB3iCklXNr6gW112FjYVz8C+K6skE8zbfUX08qRKrOW8mMUUths/AMEw1gBB+ihqNxnQPh8o0RV8gV/8ACpqPBZYygNz846H3jmBSeHwxjQi5Y8v1aX37zQqk47Ng4plMxHo4lhYTYOchl9UmzgdnLbbQW01BphwrGNhcTO/EsOp+EJ1RxGUvGOTBwLkK4sCQA2g0I20HBtIAS9gQTqNDpz05WrtcVHOCJFDA6XtZrbG42NOWKk9J6+efmYdJcFJ4McDgpGlgkErS2WOCOZJyzXOVUC2YC5+XcjmdzUtwvhMPDIzNOyfC8Q5BckZUeQl+qj77czzNvo1H8X6Fvh5FxnDmCuhzBbdg6EFbH1bgkW21+TvVN4nNi+J4zI6WcXURa5YUBGbQ66kgknViw8AKYwjVu1LT+V99P6FtuNtPQlMR0TxWLxl2kzRuSWm/Bop9TIT62tlA0Ykk27VuelMcPDMYFwshIygzQs2YIdMoL/PYHNa11J7mCi1YriLYGKPBYUNiMcyWHyurA3ke+mnIHS9r6C1RvBcBDw5Di8VIGnYk9ZpI5dt0w6t/OSsTrK2guddTXYVm0s2q2UVz58BKOt18+xMcM4iMTGJYiOsykbAlhzBBBAkFvq8roFgt0R1brFszMpFr62uwuNdbjmNLnarpBicE/wANOG6jCTyX6pWzGEE9gsLDLfW1uXZ0OUVdpH6xM6vlSQjrLDMA1tG0BbK3hp5g2qWtTUHdbP8ALfAbCWZa7kVNGAxAYOBsw2OgPP3eytb6LkfBIcu2RR7ba1lka5xkXqwEJbO1lY2B3Y628NtBfLVv6A8ZAHUObX7SX8dSvnz9vhTcJUUKuvOhyvFyhoXiiiivaIAooooAKgeJTv1pj605SuYBLBt7MpI1G62tY6+FZ90h6fzTYh4Ym6qFHKEjR2KkqSW5C4OgqV6PTrcHOvqtftDmU8f4tXl4zFaZI39SqjS5ZL4nEKq29RRbvAAO1yNr0wwUbM15B2lJyuLaqb6ki4Pjf/VPiM+gBXMjdlrX0HI3FwR9n2+Y+YQQE5uWQE9y3uSedhz7q8xIoKT6TOkH3lD6wy+UY0J8228s1VDox0jlwcmZbtGx+Mj5MNri+zW587eREdxPiHXyvLf1joO5Roo92/iTTaveo4eMaWSS33Ip1G5XRuD4ZcRAMRhvj43HqAgP9JBm3cfMYi/eNAaP0gxuDmw0lpSZFIEcRR1nE2YLlKEWy+sGsxtp8qwMH0U6TTYGXPH2o2sJYj6rjv8AouOTe+40q79FeHHiONk4hLGEUm0a2Hqr2c7H5T2Fsx535BbRyoLDvM9ls789hyqOegv0B6FEEYnFayWFsxvkFrWud2toW5bDmTfscSI2EIF15A6C2uvebcq769CepU2NiLW29/OkuEYAwhgXLXOl9rcjtoTXnVKkqks0h0UkrITw8BkhAmGp1JuCd7i2mmmlrc6cpEFFlAUDYDYU4IpMisGhFhXBWliK8IrgCBFcEUswrhhXQG8iA6EaeNIPBlUhABr9uvtNOyK8IoAY4GWRACxFyNe4+BGx/fUN0s6MLiAMThj1WIj1DDQg69lrboddeVz4gzuNwgkWxJH8d3f/AB30nFiBEwAa51Fu/vU/x3VuE3F5og0mU3ovxDNC0EMDHHuxGIRtMzKR8dPMdBh1DC0S7nQAg3MwvB4MKwlmf4ViyLh5NEUXtaJPkxg6X1ub37g06ccKeFk4jgzlkjBuLAhksQysvyrAnTmL/RtmB4rOZvhBlZpibl21J8CDpl5ZbWA2AtXowpddOUHbv3v29CZyyOz/AD/prHB2xeMWYYzD9VGzCMA7vE6sJQTftBSEZZBYXOm2lV9HXGhrh5GzKBofnR31t4qSCPA/RqK4j06xksJgvFEjCz9UhVnB0KlmZrA88tr+WlV/B4sxSLIu6G9u/vHkRce2nRwjcJKVlfZLi33M9W0k0a/joSPXZT1dlC2sWWwKsLDYjmdR3jmnKCCJBGY1Y3UXYi6gXsx1vfX26aCnGFxCzQxyqFfQJ2tsr6o24sRe176Xpu0QXMrls49UCxW9xcE3008BtzryfDLEXjojxiaXsyOuUAWJ9Yk7DuJ0q21lMMqiBgSAbg6kc1/dTDh/pAmwkoWRutguAwbVlHMq2+ncb+yvQwmJsssr+pNWpX1RstFc5qK9UkPnWPGIMTOGgRvjpddvvjeFWTCY7Dka4Uexz+wVT3+6cR/by/pGqbwteHXXtMvp7Fnhnwf4CQeTn9bU8jbCH5Ew/NP66r0NPoamaGEwuBwLbo3tSM/3aUHAeHtvDGfxoYz/AHKZQVIQ0Z2jmVCf+6fDT/y0H/YT9S1K4TCRRKEisigABVWwAGwtTLEYpIkLyOqIupZiAo8yaqeL9KnDozYNLL4pHp/+ytaUalXZN/Mz7Mdy6vhI8/WdWGf53Pa1KnEMPvRPt/dVY4J6ReHYhgiz9W52WUFPZmPZv4Xq4pS5wlB2krGlJPYZtjn/AKu59v7qRbiT/wBUlP8AHlUuKZcZ41h8JH1mImWJeRY6k72VRqx8ADXIq7skcbsMTxZ/6lP7j+yvRxRv6lP7j+yqzN6Y+Gq1h17j5yxi3/6cH6qn+AdPOH4tgkOIHWHZHBRie5cwAY+AJp7oTSu4sx1IvkdDiBP/ACc3110MVf8A5SX66mqi+kPSPDYFFkxMnVozZAcrNdrE2soJ2BrMYXdkjrlY5Ev/ANWT3mu1P/1n95pLo10rwmO6z4LKZOry5+w62z5svrqL+qdu6putOnZ2ZnORfVj8AR+UaSfARk3MQvte5qWkqr9I+meCwcgixExRyocDI7dkllBuqkbqfdQqbbsjuclmwyFSptY6kWuKhv8Ac/ho/wCVg/7Sn7RUS3pP4X/WT/2pf8lLYHpzw+c5UxSXOgDho7k8hnABrvTqw2TDNF8kiOjHDR/y0I8oI/8AJXh4XgF2hA8o4x/dp1JTKal9ST3ZvIgf4KosEkt3DKB9RprJNhh95c+bW+w0nNTKag7YMXjIANMN73NU7pHjEKm0KD6/1VYMXVT49safS3MTPpmiiivdID5sf7pxH9vL+kapzC1Bv904j+3l/SNU5ha8St7zL4bEjDT6GmMNPoamYwfwU/iNtToKYQUz6YYkx4DEsDY9Uyg/j9j+9WVHNJLuDdlcx7pz0qkx85Ck9SrWiQX15ByObt9V7Vbuj/ogLxh8VM0bML9XGASvgzHS/gBp3mqh6NMIJeJ4ZWFwGZ/bGjOPrUV9GrXpYus6FqdPTQlpQU7ykYf0w9Fk2GRpsO/XxqLstrSKO+w0cDnaxHdual/Qx00frVwE7FkYHqGO6sov1f4pANu4i3PTXkkHePeKZcH4DhMOSYIIo2N7soGbU3tm3t4bVO8XnpuFRXfDGdK0rxHnG+KJhcPLiJPUiUsRzPcovzJsB4mvmLivEsVxPF5mzSSytljjGygnsogOiqP2k8zWy+nbFlOHKgP87Oit4qqu/wD5Kvuqm+gThqvjZZmF+pi7Pg0hy3H5IcflU7CJU6MqvIur7U1EmOGeg8GMGfFkSEarGgKqe67G7edhVM6eejufhwEmcTQMcvWKMpVuQdbm1+RBI05V9LVA9PcEsvDsWjC/xDuPxo1Min3qKxSxlTOsz0OypRtoVD0MdNnxSNhMQxaaJcyOd3jBAIY82Uka7kHwJrn+UH9xYf8At/8ADesv9F2MMXFMIwPrSdWfESApr+d9Vah/KD+4sP8A2/8AhvVEqahiY25F5rwZHfydNsb5wf41bLWNfydNsb5wf41bLScT/lf5wah7pw9fPvp7/pCP/pk/SzV9BPXz76e/6Qj/AOmT9LNXcJ/lCp7o26K+jF8bhUxIxKpnzDKUJtlcrvm8O6ojpZ0ExWBGdwskV7dZHcgX2zAgFb+7letf9En9FQecv6Z6s2Nw6yI0bqGRwVYHYgixFdnjJwqNPVXNKjGUTGfRd0ydJEwczFo37MTE6o3Jb/NOwHIkeNarNXzfxHDnD4iSNWN4ZWQNzvG5APnpX0XFNnjR/nKre8A/rrGOpxUlOPJqhJtNPgbTUymp7NTKaokPI7F1U+PbGrZi6qfHtjVFLcXM+maKKK9whPmx/unEf28v6RqnMLUG/wB04j+3l/SNU5ha8Wt7zLobEjDT6GmMNPoamYwfwVHdOos3DsUB+DzfmsrH6hUjBTqTDrIjRuLq6lGHeGBB+o1mMssk+wNXVjCvRdiAnE8OSbAl09rROo+sivoeRbqwG5BHvFfMfGuFzYHEmNrq8bBkcaXAN0dfDS/gQRuK1XgHpdw7RgYpHSQDUouZGPeBe6+X116WNoyqNVIa6EtGajeMinj0TcS+ZF/3BUFwnAtBxKGF8uePExo2U3GZZVBAPPXStA6T+mAFGjwUbKxBHXSWBXxRATc+JOncazro8rDH4bOGDfCIic176yKbm+ut7+2qaUq0ot1EloLkoJrKbJ6ecOWwEbAXCTqT4BkkW/vsPbVV9AGPC4ueE6GWIMviY2287MT+Sa2HpLwZcZhZcM+gkWwPzWBurexgD7K+ZWXE8MxguDHPA9x3H/MjD3g1JhLVaEqXP5/Yyr7M1I+sKgPSBj1h4bi3Y2vC8Y/GkHVqPewqm8M9NmEMYM8EySW1CBXUn6JLKfYR7TVA9I/pDfiJWKNDFh0OYKTdnbYM9tBYbKNrnU6WXRwlTOsysjs6sbaEX6NcMZOKYNRylV/ZHeQ/UprVf5Qf3Fh/7f8Aw3qP9BnRF0vj5lK5lKQA7lWtmk8AbZR3gse41Ifyg/uLD/2/+G9VTqKWJilwLStTZHfydNsb5wf41bLXzb6L+nUXDBiOsheTrertkIFsnWXvf8f6qvX/ABzw39Um/OSs16FSVRtI7GSUTVXr599Pf9IR/wDTJ+lmrReifpQhx+JXDx4eRGZWbMxUjsi/Ks69Pf8ASEf/AEyfpZq5hoShWtLsE2nHQv8A6JP6Kg85f0z1aZ3CgsxAABJJ2AGpJrHOhfpMhweDjwzwSOyFyWUrY5nZufnUf019JkuMjMEMfURN65zXdx80kABV7wL377XBXPCVJ1Xpo3uMjVjGJT+L4nr8TLIoPxsruBz7bkgeetfRMMOSNE+aqr7gB+qsk9F3RV551xMi2hiOZSflyDYDvAOpPgB5bDNXMfUTkoLg7Qi7OT5GM1MpqezUymqJDyOxdVPj2xq2Yuqnx7Y1RS3FzPpmiiivcIT5sf7pxH9vL+kapzC8qjE4fK2JnyoT8fLzH4Ru81ZsDwDEEfzdvNl/bXi12szLqexzDT6GnEXR6bmUHm37qeRcFYbywj8v91StoYJQU/hr2LhoG88X51PIsGg+/p7P9azYLoieN9H8PjEyYiMPb1W2Zb/NYajy2NqprehzDE6YiYDuIQn32H2Vp64dPwo937666tfn/VTIVqlNWizDhGW6Kb0e9GeAwzB8jTODcGUhgD4KAF94NLYr0bYSXGfDWknEplWawZMmZSCBbq72076tmvIXrkvLyjB9v765+4qXvmDpx2sPxUP0j6LYXHKFxMQcj1XGjr5MNbeB08KXMuJ5RJ7W/fSbTYzlFF+cf81Li3F3TOtXKHL6EMJfs4mcDuIQn3hR9lS/AfRLw/DsHZXxDDUdaQUH5CgA+TXqxGbH/goPzm/zV6suP/Bwe9v21S8TVas5C+nEmwKgumHROHiMSRTtIqo/WAxlQb5SuuZW0saWEuN/Bwe9v20osuM/Bxe8/trEZOLujrjcpH/BHh/4bF/nxf8Aqo/4IcP/AA2L/Pi/9NXtZcV+Dj95/bSiy4jnGnv/AH09Ymp3YvpoqvRn0Z4TAYgYiGSdnCstpGQrZhY6LGD9dedMPR9huITLNNJMrKgjAjZAtgzN8pCb3Y8+6rYZJeaD3/vrwlua2rDrzzZru5pQVrGaN6G8B+FxX58f/qp3w/0Y8PhIJjeUj8K1x7VUBT7RV9Kjvt7K4aFfngeyuSxNV6ZmaVOK4I3qwqhVAVQLAAWAA2AA2FNJqmHwqH78vt/1ppLgBymj99T2Yy6ISamUtTsvCidpIj+V+6mkvBJTsUPk37q2guVzF1U+PbGr7jeCT29S/ky/tql9I8BKqm6Ee0fqNPpbmJn0hRRRXukJg3G+DT4XFyLJ1gV5HdGucrBmLDKdtL7bipzD8OTqs5LEhlGp5EN+wVruIw6SKVdQyncMAR7jVP6RcCKLbDxNkvmaxvawIGUHW2p+qvJxmHlH2k9CujUT0ZTSiBRa+a5vcDLa+lrG+1vbzp+sN0YDKGsJBlN+zcgrubEb8+epprCzAlc4QNZWJ20vubXFrnUW33pbh5IbLGgZlObMCRcWIIymwsR36nleoCgzPiHG8bFI8bYmS6m1wQLjdToOYIPtrrh+L4nicwgkxcuX1uraSw56kGwPhU76RODCwxEeq2ufGMm4PmpJv4E91T0HEJYeGQJgYBK2SE5bEj41W62UqpGYiQZCb2UtroNPVVaPTjKMVd6dkSODzNNmaYjimLVir4jFKy6MrSygjzBa4rQPRv0ma/wXEl7suZGfNmaNtQQW1NtweY77GpL/AGXh1CYziIjjMYuAxzi/cq/fbG+UEHXa+9MekeBfiA+FqfgrQxs8Gf8AnWVTnMmJkJywobEIpvYuSTa4pU60K0crVvPnx3O5XB3TuW/FYWz3Yk2F9CbEHY6eXKu4MYrEgHUG3noDp371XehHS1MXGIZjklUeRG3aUH5J0uOV/ImwSQdVeyi5102I7x3/AMeVefOEoSyy3KIyTV0Os1dCmWBnZlu65ffy30PLxp2GpZ0WBrsGkVpQGgBUGlAaQU12DXAFVNKg0gGrkz9lypBK33va4F7XH6vHuoOHXEMWIkLnltvqeV7DQeNNlhTEZJRmAsbcidefgCD51zwppJUZZltrtrcgnN4aX28KhemfSuLBRFUtmNwqg2uedu5RzPLzIB3GLk8sdwbtuR3pE6SMgXC4bM08pyLk9bXQtpseQ8ddgazjjsXEcFII558QpIzKyzylHHMq2bW17Ebj2i8lwTh64pTi5MVMmJMpytEBaIqAUupIJve4ysLBflHNa+M6YvDHDY/I/dNH2QG2WRQwvFJ3jVDc8iVHpRnDD2jv/wCu/wAPBO4ynqvgZInSLGDbF4j2yuftNOMN0hxzsqLipCzEKLkHU8zcbDc+ApHpHwGTBzGOTUbo4Fg68iO494qxejjgJkk61hobqnl8tv7o/KqurOlGn1LJ9tBcVJyymhcMwvxOaS8htcE72XcmxFye7zrnDcPRyW0ZG1W1wRqLg33Fqe45z6sWpWxyG2qW+ad++++tOsFhwBZRYb21AFwCbA7a6eyvDuWkHxjhcaAZcw7N/W8f9ap3+x58XMIIc7XIBa5yoObMdgPtrVUwSTOl0eSMXVioOXlY5vlWIsQvf4VasJhI4lyxoqL3KLf6mrsHh5T9pvQRVqJaHeSiu6K9gjCiiigCldOOCgD4Qgtr2wPcG8/45VUGUstwihUADEGxa9xc3Juxt5E8jsNa4pEHhkU7FSD7qx6FhcEjMNCRe1xzF+V68XGUlCppyXUJOUdeCTRBIhTIVRjZC2oD5dVJ7msdO/TvtUMLxiXhTPCYeuiYs2HzNbq5GIzIWOmTYkHuzc3qyABbO8bdU18qhrXtcGxPdzP2DSu+LcLGKiySr2yt+V2GtmHc410OveN6TSmou0leL3Nzjfbcj8RgVw4OM4hKJsRe1yPiomt/NYdD/OSaatsoHOxvzwmGXHp8IxfxOAU9YkN9Z2X75Kx1dRbS+mmmgu1YwWBzY6CDiU7mFFyRFicjqtgkQYn4sHQMTroBfUNVi6S9P4/hHURoGgQdWzpyYWAESjRo1tl+lrbQDNVKnL+Gra34S7LyJUltLRfm5U+knGPhWLR8LFkYEJGYx8Y7E2XbfuAtsTfewunAOm5RzhOIJ1cinKc2gvyIOyk7g3ykEEHW1OeC8HweAWTiEvYXL2b/ACb3BWFDazvfL4C4FgTUfxnh8U5XF8ScI0ygRQ9YI0ij1KoXym76kknS99hoCU6VSKjZ2WifN/zcEpJt3+xeJcKJV+LbMDy+UPMc9KbrGYoyEF2HM732BI92lULiGAxfDFilw0rSQOwQRyEMysVzKFZLB1IBsyWH0eZlOG+k2M2XFRMjDfMpP1gZh7RUzw07Xh7S+vyGKqtnoW6LFER53Fj83ntsNdTvSuFxiuhceqPfoLm/d3UxwfSPBTCyzDXkGU/VvT9WgIt1i27itTuLW6GXue4XGrIpZdh36cr7cq8wXEBJmsCMvI+tfW9x30R9Qot1i2/F38++m2J49g4Ac0qjnYlVFCTeiQNjnhssrF+sUDYD3H5J1pXA4BMOGYtYG29/cBeqfxL0nQqcuHjaRzoMqm5PIAnf8kGq7DNxDieJfDNIMKUXO6OHVwpKjUWzMe2unYFmqiOFm1eWi8/YW6q2RZulnpAVD1GGBlmY5Qq3JzHkcupP0BqfDeqdi+C4jDvFxDiEfXIZMsiK4LRneMNbsgXuMoNgbXNzakuEcVi4b8KheAnEI7RCQHKSgJDC+vVqbA9ncMN6t/RLi8mIikhxsCLDKCgUDIDEw2KkluydQ5OY3vyBqpx6C9lacvl37C9Zv8+p7gejmHkYYzAyDqpOzInye/zR1JvY95Gl71CdKJcVgJFkQhonbIUcXCSAXIBFmAde0upGjC1gKr0kmJ4TjHWKQgg8xdJY91zrswt5EG9iN6s/EelicQwrYeOAieXKrq1zFGqsG60PubEWVd7nmPW70XGSn70X37efTv8AAM91bZjCfjj8TSPDCHq1Vg8rXDWUHsrGcoILEH3cxetH4RgVw8SqLKxAAA0AAHZUE6A6DSo3oj0djwsQZhYDtXI1J5u31eWgqVxKmVmicHKQHSQeH1ML+3X2VHWqRk8sFaKGxTWr3PMFDnbM65ZEJQ9xHip5eXOp3A4PrXyH1FAMn0idkv3W1PhYczScEVrA7/Zp/B8L1LdHl+KJ5tJIT7HZB7goHsrWDpqpV12WpmrJxjoSaqALAWA0Ar2iiveIQooooAKKKKAE54g6lW2OhHeO6q5xXoXA4Ji+KflbVfaP2Wqz0UqpQhU95G4zlHYxubCmCVkmjuQNr2B+awIGo/jQihbpbMvacBkOY3UHVWFjv3X008zV69IHDQ8HXAduLW/epNiP1+ys+glAv2FNxYXGxPMa2v5/6+JWpOnNxZdCeeNx1xfhkWKUxPkMn0Toxtuhto4vtbXXcG1UzhGBi4fiw+LjZ4RokgGiNf5aWJvyB5HUX+TbwcoEYdSHysxUZrWNwL73Hd4+NPJCkytnVmjFl6xgM1msLOvyxc8hexF9xXadZwTi9n+aHJQT15M14xxLE8VxIRELXJEUK2sq2NybmwNtyTYbc9Z7AzDicIw8oKzwAI1xZgygqr25HQhlOxv3inJ6PzYOX4RgypDAq0bEmKRCQSuYaodAR3EDUC4KHEunjRhh8GlTEMLXldWA0tcMqBpQL6X99WSl1IpUVttrqu9xKWVtzKnwyaRsRhcPJISkM4RFJ7KFphny+bVceN4L4TxjDrIl4rXbTsssZkkKHzNlI+nTP0URRGbESykdYiplY6lBI7CWQfS0UX5ZiPlVZ+jkmI6zETYnDrCkRZk9Y5wATcOWIcWy9tdDmO21GJqONRuPC+r7BTinGz5/oq/SHgfDxxKTDsww0SRKWKt9/az2HWZgFysosNBT3Bej2KVb4fGSqNbMerkTQX3idbad4qt8KfDYvEYmbGzdX1l5EJbLd2fQXsRZV018KunRjqcJgcZJDJ1iBJHDZlYZzGIwLqAOQ99dqznTSipO+nGnzORSlrZFR4F0b62AYnFTPHC3qjOqkj5xeS6qvsN6kOkvQ3C4bBri4nlkHWRAqZI3V0k1urIi6kbG/OpXg8YxfB40mTKsWaMNmCgpF2uszHRcvqnNoSp32HPSMovAxHG+eMSQqjaG4V9NRodiL2rnWn1crf8AK1uLep3Ist12E+JdHo4ZsDisGPintqDc9tGKsT43Iv4ipXAsOvim++Qgxk82hde1G3flzB17rW2OiXos4ms2FbCyath2zLf8E5uD+Q9/IFKr3STiTYPiIYC6mKLOneLHb6Q3HtGxpThUlUdO+qT+K/GbUoqN+7E/SvhcmOE6G3XxpLcb9YlkJHsWM+ZqQ4QMXxX45pRFDCyhlgsJZJVVWuQbhQfWu3ZHJWIJpv04x+HxceHTDP1sybKik2jYbMbdgg2uDa1tdq86MdC5mDB2YJIAHjRiFYDUCVh6wBOw9/KnZ0qCz6SWmq1+C9BeV53l2H3SuaPiHVwwqryRt2sSpvEgO8St9/P4vZGmpqz9FuiseGjBK+Nj6zH5zn9XsFSPDOFxQAKoGYDSwGUAWvlHgDXcc7SmORNBmKyAjkdL+K6DyqCdVuOSPuj1HW73FZMQXZLDNDICp19U8vxSNu7SnmFgWGMAm6ra2lzqdNPnm4FhSnD8GsYsNAdbHlfWx77cvOn/AAyDrJix1WKwA/8AkYXJ9ikW/HNZpU3VmoIJSyq57hOFyOM0jGIHZFtm/LfXXwXbvNSeAwKxAhSxBOazG+p3NzrrTqivdpYenT91EUqkpbhRRRTjAUUUUAFFFFABRRRQA24hg1ljaNvVYWa29u6/Kq7jOgeHYfFl425HMWHtDX+q1Wuik1KFObvJG41JR2ZkvE+GT4Rireq4KhwBZh3ai6n697HemscIYqqXvbM+dgFuNWtrottuevK1a1xPApNG0bi4I9x5EeNZSeGy5mURu2VipIUkXU25DwryMTQ6UvD2LKVTOvJ1Dj7Z2vlY2sqKAm3ylta1htvcnu17xmBhl7EkYuRmIUdYo3PaW11ItqRe1IuGGVHDZQb5bZTqbtra5O+97XPfQthnZW6vkFFySCRftWtoAL7beIqdd0MsQzdCWjfrsHM0bi9ihzix3DI2uU81Y28KT4jjOIiCXDmDDMJFKF4w0b2O5yswS/4oFWMMymMPHbS4CizsGJOpGvKw7gaVTiRtqxJvopAYBbX1ZrnbQeRpyxE/5Wfr99zHTXGhQui6YeCOVMbgXd2YFHOH65VULYi4YEXOunhUlxfjWCXh82HgOVntljEM6DWQFtZAQNyfW5aVcC0RLXWI5QSW7Sg2tcDU63IH16V0sERy9g9rYCTXRsuotoL/AGVuWJUpZpJ7330+WplU7Ky/0Z50T6UpHhzhJ4maO75WEfWLlk1dJEuCRe5BU312Fgak+P8AE4ZcAcHhsPOTdCloHSJQr5zcyOWN9e/erisEO+U6EA/GcySotprsf40rtVhHyEFgGJJLWupYA7a6W9u9EsRFyzKPN99Lgqbta/0Mw6L8Lx0EwmiVEazIRIcwKsLEFUJJ1sdxqoqyf7lTYqTrsXIZHIA2WJAo2AVdbDwIq4R40XVVFiwvYACwygjXvvpSQxLuBkXVpABfUhb3BuddbEewVyeLqSd1Zen3OqlFaCPD+A4eBdFWw1IAyrte/ex8effUgcWMwiUCxUsNBl37PsIO55+VIfBC5kBJs4ULvouUkG/gdPbUjFhVUAmygDLckWtpcXI2uL8t6mb1uzYxweFZxE7XzpqbHXW6jyYWt5VLxRhCAqks1yEXmTYsRyA2uToNPb5DNGT/ADiHnowv7r61OcCwtk6wjtyAMfBd1QeAB95J507D0HWnbjkxUnkVxvDwiU6vKE+jGASPNnBv7FFPOGYAxF7vnDsGuQAbhQuttNlHIc6f0V7NPD06bvFEcqkpbhRRRTzAUUUUAFFFFABRRRQAUUUUAFFFFABXKqBoBXVFcstwG+MwMcq5XQMPEVQ+kfAOoOZdUOxO4PcfDxrRKRxWGWQBWAIuDY+G1S4nDRqK6Wo2lVcH4MtwuEkHaQMPFQeYsdQK9fDsFyZQNb7Wba1rnlbl4+VaqqAaAWpLE4NJBZ1B9n66lf6dK2ktfQd+5XYy1o1JN0sLEKoOgNgATprtflrXfUAg2zZiTc+FwQF8d97a1Z8d0cIlVU1VrkE8rb3qTw/RqMDtMxPhoKmjhasm1bYY6sEr3KV8FW4sGCrfIDbQ30LfWdL/AK67TCKQRbc3bXftAgbaaC3Pf33SXo7HbssynxsR/HtqNh4O/W9WQBpcsNsvePHwonha0WlbcFVg+SLSAA5uyt9NeQzZgAfqpRUXYMp5WJHibAe01ccLw6OP1VF/nHVveacSRhhZgCO4i4qhfp0rayFvELhFVwmFZmCLbMdSTsq7XPee4c/Yan8JwqJNcudvntq3s5L5CwrvBYBYi2TQNbTusNh4eHK5p3VWGwsaSvLViqlVyemwnPArqVdQyncEAivYowqhRsAAPIV3RVdluJCiiiugFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAcH1h5H7VruiiuLk6FJn1/wAk/aK8ooYIVooorpwKKKKACiiigAooooAKKKKACiiigAooooA//9k=" alt="" class="" width="100px" />
          </div>
        </div>
      </div>
      <div class="row layout_padding2-top layout_padding-bottom">
        <div class="col-md-8">
          <div class="fruit_detail-box">
            <h3>
              Silver
            </h3>
            <p class="mt-4 mb-5">
              Our Silver Plan provides essential coverage that's affordable and reliable, giving you the peace of mind you need without breaking the bank. Protect what matters most to you with confidence and ease.
              
              <h4>price: <%=prices[0] %> </h4>
              <h4>coverage: <%=coverage[0] %></h4>
            </p>
            <div>
              <a href="setting_attributes?cost=<%=prices[0] %>&coverage=<%=coverage[0] %>&index=<%=0 %>" class="custom_dark-btn" >
                Buy Now
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 d-flex justify-content-center align-items-center">
          <div class="fruit_img-box d-flex justify-content-center align-items-center">
            <img width="100%" src="data:image/jpeg;base64,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" alt="" class="" width="250px" />
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end fruits section -->


  <section class="info_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h5>
            Fruits
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
      Copyright &copy; 2019 All Rights Reserved By
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

 
  <!-- end google map js -->
</body>

</html>