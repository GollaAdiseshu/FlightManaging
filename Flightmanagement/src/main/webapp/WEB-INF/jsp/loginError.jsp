<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Error</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        text-align: center;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        color: red;
    }
    p {
        font-size: 18px;
    }
    a {
        color: #007bff;
        text-decoration: none;
        font-size: 18px;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Login Error</h2>
        <h3>You have entered wrong credentials</h3>
        <p>${errorMessage}</p>
        <a href="/loginpage">Back to Login</a>
    </div>
</body>
</html>
