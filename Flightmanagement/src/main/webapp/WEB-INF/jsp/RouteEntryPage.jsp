<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Travel Form</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-image: url('https://i.pinimg.com/564x/9f/5d/34/9f5d340bcbf80d8454673f7377e04758.jpg'); /* Add the background image */
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

    .container {
        width: 100%;
        max-width: 600px;
        margin: 0 auto;
        background-color: rgba(255, 255, 255, 0.8); /* Slight transparency for better readability */
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    h3 {
        color: #333;
        margin-bottom: 20px;
        text-align: center;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 0 auto;
    }

    td {
        padding: 10px;
        vertical-align: top;
        text-align: center;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        padding: 10px 20px;
        font-size: 16px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-right: 10px;
        transition: background-color 0.3s;
    }

    button[type="reset"] {
        background-color: #dc3545;
    }

    button:hover {
        background-color: #0056b3;
    }

    button[type="reset"]:hover {
        background-color: #c82333;
    }

    .button-container {
        text-align: center;
        margin-top: 20px;
    }

    a {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        text-decoration: none;
        color: #fff;
        background-color: #28a745;
        border-radius: 4px;
        transition: background-color 0.3s;
    }

    a:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<div class="container">
<h3>Travel Form</h3>
<form:form action="/Route" method="post" modelAttribute="RouteRecord">
<form:hidden path="RouteId"/>
<table>
<tr>
<td>Enter Source City:</td>
<td><form:input path="sourceAirportCode"/></td>
</tr>
<tr>
<td>Enter Destination City:</td>
<td><form:input path="destinationAirportCode"/></td>
</tr>
<tr>
<td>Enter Route Fair:</td>
<td><form:input path="fare"/></td>
</tr>
</table>
<div class="button-container">
<button type="submit">Submit</button>
<button type="reset">Reset</button>
</div>
</form:form>
<a href="index">Back to Home</a>
</div>
</body>
</html>
