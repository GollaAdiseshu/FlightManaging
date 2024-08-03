<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flights from ${fromAirport} to ${toAirport}</title>
<style>
    body {
        background-color: #f0f8ff; /* Set your desired background color here */
    }
    .centered-button {
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
<div align="center">
<h2>The Flights in the route: ${fromAirport} -------> ${toAirport}
<br/><br/>
Air Fair: ${fair}
</h2>
</div>
<hr size="5" color="yellow"/>
<div align="center">
<h3>
<table border="2" cellspacing="5" cellpadding="5">
<tr>
<th>Flight Number</th>
<th>Airlines Name</th>
<th>Route Id</th>
<th>Departure</th>
<th>Arrival</th>
<th>BookFlight</th>
</tr>
<c:choose>
    <c:when test="${not empty flightList}">
        <c:forEach items="${flightList}" var="flight">
            <tr>
                <td>${flight.flightNumber}</td>
                <td>${flight.carrierName}</td>
                <td>${flight.routeId}</td>
                <td>${flight.departure}</td>
                <td>${flight.arrival}</td>
                <td><a href="/ticket/${flight.flightNumber}">Book Flight</a></td>
            </tr>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <tr>
            <td colspan="6">No flights available for this route.</td>
        </tr>
    </c:otherwise>
</c:choose>
</table>
</h3>
</div>
<div class="centered-button">
    <a href="/flight-search">Return</a>
</div>
</body>
</html>
