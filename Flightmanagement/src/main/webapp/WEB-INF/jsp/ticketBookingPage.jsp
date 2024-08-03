<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Booking</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/474x/99/fb/d2/99fbd2e2c9308f8d883b2181508232d9.jpg'); /* Background image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0;
        padding: 0;
        color: #333;
    }

    div.form-container {
        background-image: url('https://i.pinimg.com/originals/b9/b8/1a/b9b81ab0e549a0ef6bbd9616e32031d5.gif'); /* Form background image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for form */
        padding: 15px; /* Reduced padding */
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        width: 60%; /* Reduced width */
        max-width: 600px; /* Reduced maximum width */
        margin: auto;
        margin-top: 30px; /* Adjusted top margin */
    }

    h3 {
        text-align: center;
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    td {
        padding: 8px; /* Reduced cell padding */
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"], input[type="date"] {
        width: calc(100% - 20px);
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        display: block;
        width: 100%;
        padding: 8px; /* Reduced button padding */
        font-size: 16px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="form-container" align="center">
<form:form action="/ticket" method="post" modelAttribute="ticketRecord">
    <form:hidden path="ticketNumber"/>
    <form:hidden path="flightNumber"/>
    <form:hidden path="carrierName"/>
    <input type="hidden" name="fromLocation" value="${route.sourceAirportCode}" /> 
    <input type="hidden" name="toLocation" value="${route.destinationAirportCode}"/> 
    <input type="hidden" name="fair" value="${route.fare}"/> 
    <input type="hidden" name="routeId" value="${route.routeId}" />

    <h3>
    <table>
        <tr>
            <td><label class="required">Ticket Number:</label><form:input path="ticketNumber" disabled="true" /></td>
            <td><label class="required">Flight Number:</label><form:input path="flightNumber" disabled="true" /></td>
            <td><label class="required">Airlines Name:</label><form:input path="carrierName" disabled="true"/></td>
        </tr>
        <tr>
            <td><label class="required">From:</label><input type="text" value="${route.sourceAirportCode}" disabled="true"/></td>
            <td><label class="required">To:</label><input type="text" value="${route.destinationAirportCode}" disabled="true"/></td>
            <td><label class="required">Fare:</label><input type="text" value="${route.fare}" disabled="true"/></td>
        </tr>
        <tr>
            <td><label class="required">Route ID:</label><input type="text" value="${route.routeId}" disabled="true"/></td>
        </tr>
    </table>
    <br/><br/>
    Enter Passenger Details:
    <table> 
        <tr>
            <td>Name:<input type="text" name="name1" value="--"/></td>
            <td>Date of Birth:<input type="date" name="dob1" placeholder="25-10-2024" /></td>
        </tr>
        <tr>
            <td>Name:<input type="text" name="name2" value="--"/></td>
            <td>Date of Birth:<input type="date" name="dob2" placeholder="25-10-2024" /></td>
        </tr>
        <tr>
            <td>Name:<input type="text" name="name3" value="--"/></td>
            <td>Date of Birth:<input type="date" name="dob3" placeholder="25-10-2024" /></td>
        </tr>
         <tr>
            <td>Name:<input type="text" name="name4" value="--"/></td>
            <td>Date of Birth:<input type="date" name="dob4" placeholder="25-10-2024" /></td>
        </tr>
        <tr>
            <td>Name:<input type="text" name="name5" value="--"/></td>
            <td>Date of Birth:<input type="date" name="dob5" placeholder="25-10-2024" /></td>
        </tr>
        <tr>
            <td>Name:<input type="text" name="name6" value="--"/></td>
            <td>Date of Birth:<input type="date" name="dob6" placeholder="25-10-2024" /></td>
        </tr>
        
    </table>
    </h3>
    <button type="submit">Submit</button>
</form:form>
</div>
</body>
</html>
