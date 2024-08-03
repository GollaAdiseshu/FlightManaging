<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image:linear-gradient(45deg, red, blue);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        text-align: center;
        color: black;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 20px 20px 10px rgba(0, 0, 0, 0.3), -3px -3px 5px rgba(255, 255, 255, 0.5);
        
        
    }
    header {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }
    label {
        font-size: 18px;
        margin-bottom: 5px;
        display: block;
    }
    input[type="text"], input[type="password"]{
        width: 80%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
       
    }
   input::placeholder{
       text-align:center;
   }
    button {
        padding: 10px 20px;
        font-size: 15px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #0056b3;
    }
    footer {
        margin-top: 20px;
        font-size: 14px;
    }
    #reg {
         background-image: url("https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExeXpjNnEyeHp6d283Y3BxcjdhOGxhcXBqNGFqYmpyODRlangwNDR2cCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xuvvmV1xza1YMCnzlG/giphy.webp");
         
         background-repeat:no-repeat;
         background-position: center;
         background-size:cover;
    }
</style>
<script type="text/javascript">
    function passwordCheck() {
        var pass1 = document.getElementById("pass1").value;
        var pass2 = document.getElementById("pass2").value;

        if (pass1.length < 6) {
            alert("Password must be minimum 6 characters long");
        } else if (pass1 === pass2) {
            document.getElementById("registrationForm").submit();
        } else {
            alert("Passwords do not match");
        }
    }
</script>
</head>
<body>

<div class="container" id="reg">
    <header>Flight Reservation System</header>

    <h2>Create New Account</h2>
    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">
        <div class="form-group">
            <label for="username" class="form-label">Enter New User Id:</label>
            <form:input path="username" id="username" class="form-control" placeholder="Username" />
        </div>
       
        <div class="form-group">
            <label for="pass1" class="form-label">Enter New Password:</label>
            <form:input type="password" id="pass1" path="password" class="form-control" placeholder="Password" />
        </div>
        <div class="form-group">
            <label for="pass2" class="form-label">Re-type Password:</label>
            <input type="password" id="pass2" class="form-control" placeholder="Re-type Password" />
        </div>
         <div class="form-group">
            <label for="type" class="form-label">Select User's Type:</label>
            <form:input list="types" id="type" path="type" class="form-control" placeholder="User Type" />
            <datalist id="types">
                <option value="Customer"></option>
                <option value="Admin"></option>
            </datalist>
        </div>
        <button type="button" class="btn btn-primary btn-block" onclick="passwordCheck()">Submit</button>
        <button type="reset" class="btn btn-secondary btn-block">Reset</button>
    </form:form>
    <footer>
        Already have an account? <a href="/loginPage">Login</a>
    </footer>
</div>
</body>
</html>
