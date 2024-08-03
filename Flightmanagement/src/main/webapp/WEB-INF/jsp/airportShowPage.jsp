<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Airports</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/564x/47/3d/06/473d06e097b47feb804e1c3413cf1d42.jpg'); /* Add the background image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #fff;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Slight transparency */
        padding: 20px 30px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        color: blue;
    }
    h2 {
        margin-bottom: 20px;
        color: black;
    }
    a {
        text-decoration: none;
        color: #007bff;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="container">
<h1>
<u><i>Airport Details for ${airport.airportCode}</i></u>
</h1>
<br/>
<h2>
Airport Code: ${airport.airportCode}
<br/><br/>
Airport City: ${airport.airportLocation}
<br/><br/>
<a href="/airports">Return</a>
</h2>
</div>
</body>
</html>
