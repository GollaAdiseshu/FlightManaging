<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flight Booking</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/564x/55/b8/b0/55b8b0ecda0d1c98948268f11e7afec2.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent for better readability */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 8px;
        color: #555;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #0056b3;
    }

    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        text-decoration: none;
        color: #007bff;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="form-container">
    <h2>Flight Booking</h2>
    <form action="/flight-search" method="post">
        <label for="fromCity">Select From City:</label>
        <input type="text" id="fromCity" name="fromCity" required>
        
        <label for="toCity">Select To City:</label>
        <input type="text" id="toCity" name="toCity" required>
        
        <button type="submit">Submit</button>
    </form>
    <a href="index">Return</a>
</div>
</body>
</html>
