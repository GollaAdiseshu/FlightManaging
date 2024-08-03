<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Flight Record</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/564x/18/50/6a/18506a069f8b2b715bd7da3866f05f06.jpg'); /* Add the background image */
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
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        width: 80%;
        max-width: 600px;
        text-align: left;
    }

    h3 {
        color: #333;
        text-align: center;
    }

    table {
        margin: 20px auto;
        border-collapse: collapse;
    }

    td {
        padding: 10px;
        text-align: left;
    }

    input[type="text"], input[type="number"], input[type="datetime-local"], form:input {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
        border: 1px solid #ddd;
        border-radius: 4px;
    }

    button {
        margin: 10px 5px;
        padding: 10px 20px;
        font-size: 16px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    button[type="reset"] {
        background-color: #dc3545;
    }

    button:hover {
        opacity: 0.8;
    }

    a {
        display: inline-block;
        margin: 20px auto;
        padding: 10px 20px;
        text-decoration: none;
        color: #fff;
        background-color: #28a745;
        border-radius: 5px;
    }

    a:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<div class="form-container">
<h3>Insert Flight Record</h3>
<form:form action="/flight" method="post" modelAttribute="FlightRecord">
    <table>
        <tr>
            <td>Enter Flight Id:</td>
            <td><form:input path="flightNumber"/></td>
        </tr>
        <tr>
            <td>Enter Airlines Name:</td>
            <td><form:input path="carrierName"/></td>
        </tr>
        <tr>
            <td>Select Route Id</td>
            <td>
                <form:input list="routes" path="routeId"/>
                <datalist id="routes">
                    <c:forEach items="${routeList}" var="route">
                        <option value="${route}"></option>
                    </c:forEach>
                </datalist>
            </td>
        </tr>
        <tr>
            <td>Enter Seat Capacity:</td>
            <td><form:input path="seatCapacity"/></td>
        </tr>
        <tr>
            <td>Enter Departure Time:</td>
            <td><form:input path="departure"/></td>
        </tr>
        <tr>
            <td>Enter Arrival Time:</td>
            <td><form:input path="arrival"/></td>
        </tr>
    </table>
    <form:hidden path="seatBooked" value="0"/>
    <hr size="5" color="lightgreen"/>
    <table>
        <tr>
            <td>Enter Return Flight's Departure Time:</td>
            <td><input type="text" name="dtime"/></td>
        </tr>
        <tr>
            <td>Enter Return Flight's Arrival Time:</td>
            <td><input type="text" name="atime"/></td>
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
