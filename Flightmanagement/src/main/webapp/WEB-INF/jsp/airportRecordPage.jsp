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
        background-image: url('https://i.pinimg.com/736x/e4/bf/49/e4bf49094d7aebd000db23af984ea3fb.jpg'); /* Add the background image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0;
        padding: 20px;
        color: #fff;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Slight transparency */
        padding: 20px 30px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 80%; /* Decrease the size of the table container */
        margin: auto;
    }
    h2, h1 {
        margin-bottom: 20px;
        text-align: center;
        color: black;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid #ccc;
    }
    th, td {
        padding: 10px;
        text-align: left;
        color: #333;
    }
    th {
        background-color: #f4f4f4;
        color: #000; /* Make the headers black */
    }
    a {
        text-decoration: none;
        display: block;
        text-align: center;
        margin-top: 10px;
        color: #007bff;
    }
    a:hover {
        text-decoration: underline;
    }
    .cancel-button {
        background-color: #dc3545;
        color: white;
        border: none;
        padding: 5px 10px;
        border-radius: 4px;
        cursor: pointer;
    }
    .cancel-button:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
<div align="center" class="container">
<h1><u><i>All Airports</i></u></h1>
<br/>
<table>
<tr>
<th>Airport Code</th>
<th>Airport Location</th>
<th>Enquire</th>

</tr>
<c:forEach items="${abc}" var="airport">
<tr>
<td>${airport.airportCode}</td>
<td>${airport.airportLocation}</td>
<td><a href="/airport/${airport.airportCode}">Enquire</a></td>

</tr>
</c:forEach>

</table>
<br/><br/>
<a href="/index">Return</a>
</div>
</body>
</html>
