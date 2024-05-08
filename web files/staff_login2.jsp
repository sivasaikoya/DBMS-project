<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify OTP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        .login-form {
            max-width: 350px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 100px; /* Adjust as needed for centering */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h1>Verify OTP</h1>
            <div class="mb-3">
                <label for="email" class="form-label">Your Email:</label>
                <input type="email" class="form-control" id="email" name="email" value=<%=session.getAttribute("email") %>  readonly required>
            </div>
            
            <form id="otp-form" action="check_otp2" method="post">
                <div class="mb-3">
                    <label for="otp" class="form-label">Enter OTP:</label>
                    <input type="text" class="form-control" id="otp" name="otp" required>
                </div>
                <button type="submit" class="btn btn-primary">Verify</button>
            </form>
        </div>
    </div>
</body>
</html>
</html>