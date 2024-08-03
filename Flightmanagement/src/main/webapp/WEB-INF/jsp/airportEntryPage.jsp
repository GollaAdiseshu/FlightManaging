<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Airport</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/736x/68/24/55/682455f40ff450c3ce887cb4d0e51b31.jpg'); 
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Slight transparency */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        width: 400px;
    }
    h2 {
        margin-bottom: 20px;
        text-align: center;
        color: #333;
    }
    .form-group {
        margin-bottom: 15px;
    }
    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #333;
    }
    input[type="text"] {
        width: calc(100% - 16px); /* Adjust for padding */
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .buttons {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }
    button {
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
        font-size: 16px;
    }
    button[type="button"] {
        background-color: #6c757d;
    }
    button:hover {
        opacity: 0.9;
    }
    .success-message {
        color: green;
        text-align: center;
        margin-top: 10px;
        display: none;
    }
    a {
        display: inline-block;
        margin-top: 15px;
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body align="center"> 
 <div class="container"> 
 <h2><b>Enter New Airport</b></h2>
<form:form action="/airport" method="post" modelAttribute="airportRecord">
<table>
<tr> 
 <td>Enter AirportCode:</td><td><form:input path="airportCode" required="required"/></td></tr>  
 
 <tr><td>Enter AirportLocation:</td><td><form:input path="airportLocation" required="required"/></td></tr> 
  
 </table>
 <button type="submit">Add</button>
</form:form>
 
<a href="index">Return</a>
  </div>
 </body>
</html>
