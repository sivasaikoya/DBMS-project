<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login with OTP</title>
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
        .animated-message {
            color: green;
            margin-top: 10px;
            animation: fadeIn 1s ease;
            display: none;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h1>Login as Staff member:</h1>
            <form id="login-form" action="EmailSendingServlet2" method="post">
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email" name="recipient" required>
                </div>
                <% if (session.getAttribute("email_not_found") != null) { %>
<div class="uploadMsg">
    <p>
        <b><%=session.getAttribute("email_not_found")%></b>
    </p>
</div>
<% } 
session.setAttribute("email_not_found", null); %><br>
                <button type="submit" class="btn btn-primary">Generate OTP</button>
                <div id="animated-message" class="animated-message"></div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVFQWrvVuHvPQz7apOEbYxHphSxvzBvTVVEnAtizOnEhNvXbAKE=" crossorigin="anonymous"></script>
</body>
</html>