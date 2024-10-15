<html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <br>
    <title>Hospital Management System - Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <h2>Hospital Management System</h2>
    <div class="container">
        <img src="medical-logo.png" alt="Medical Logo" class="logo">
       <center><font color="red"> <b>Log In</b></font></center> 
      
        <form action="loginServlet" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter Username" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required>
            <button type="submit" class="btn">Login</button>
        </form>
        <div class="register-link">
            <a href="patientsRegistration.jsp">Don't have an account? Contact Administrator</a>
        </div>
    </div>
</body>
</html>

</html>
