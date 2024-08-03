<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Flights</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/474x/2b/78/33/2b7833d100301d3a216095212c631771.jpg');
        background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }

    h1 {
        color: #333;
    }

    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        box-shadow: 0 2px 3px rgba(0,0,0,0.1);
        background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for readability */
        border-radius: 8px;
        overflow: hidden;
    }

    table, th, td {
        border: 1px solid #ddd;
    }

    th, td {
        padding: 12px;
        text-align: center;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e9e9e9;
    }

    a {
        display: inline-block;
        margin: 20px auto;
        padding: 10px 20px;
        text-decoration: none;
        color: #fff;
        background-color: #007bff;
        border-radius: 5px;
    }

    a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div align="center">
<h1>
<u><i>All Flights</i></u>
</h1>
    <table>
        <thead>
            <tr>
                <th>Flight Number</th>
                <th>Carrier Name</th>
                <th>Route ID</th>
                <th>Seat Capacity</th>
                <th>Departure</th>
                <th>Arrival</th>
                <th>Seat Available</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${flight}" var="data">
                <tr>
                    <td>${data.flightNumber}</td>
                    <td>${data.carrierName}</td>
                    <td>${data.routeId}</td>
                    <td>${data.seatCapacity}</td>
                    <td>${data.departure}</td>
                    <td>${data.arrival}</td>
                     <c:set var="seatAvailable" scope="session" value="${data.seatCapacity-data.seatBooked}"/>
                     <td>${seatAvailable}</td>
                      <td>
<form action="/CancelFlight" method="post">
    <input type="hidden" name="FlightNumber" value="${data.flightNumber}"/>
    <button type="submit" class="cancel-button">Cancel</button>
</form>

                </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>
    <br>
    <a href="/index">Return</a>
</div>
</body>
</html>
