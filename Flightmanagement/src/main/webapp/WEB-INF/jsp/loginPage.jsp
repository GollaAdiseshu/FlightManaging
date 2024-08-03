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
        background-image: linear-gradient(45deg, red, blue);
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: white;
    }
    .container {
        text-align: center;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-image: url("https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExeXpjNnEyeHp6d283Y3BxcjdhOGxhcXBqNGFqYmpyODRlangwNDR2cCZlcD12MV9pbnRlcm5naWZfYnlfaWQmY3Q9Zw/xuvvmV1xza1YMCnzlG/giphy.webp");
        background-repeat: no-repeat;
        background-size: cover;
        color: white;
        font-weight: bold;
    }
    header {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }
    .error {
        color: red;
        font-size: 16px;
        margin-bottom: 10px;
    }
    label {
        font-size: 18px;
        margin-bottom: 5px;
        display: block;
    }
    input[type="text"], input[type="password"] {
        width: 80%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    button {
        padding: 10px 20px;
        font-size: 18px;
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
    a{
     text-decoration:none;
    }
</style>
</head>
<body>
<div class="container" id="login">
    <header>Flight Reservation System SignIn</header>

<c:url value="/login" var="login"/>
<form:form action="${login}" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Login</button>

        <p>Don't have an account? <a href="/register">Register</a></p>
    </form:form>

    <footer>Flight Reservation System 2024 </a></footer>
</div>
</body>
</html>
