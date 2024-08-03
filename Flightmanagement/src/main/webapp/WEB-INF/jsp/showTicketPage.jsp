<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Flight Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://i.pinimg.com/474x/c9/72/9f/c9729fea17045346cb605cb4c8b2c0bd.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            width: 80%;
            max-width: 900px;
            margin: auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white background */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .details-title {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .details-container p {
            font-size: 16px;
            margin: 10px 0;
        }

        .details-container strong {
            color: #007bff;
        }

        h3 {
            margin-top: 30px;
            color: #333;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table th, .table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .table th {
            background-color: #007bff;
            color: #fff;
        }

        .table tr:hover {
            background-color: #f1f1f1;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container details-container">
    <h1 class="details-title">Ticket Information</h1>
    <p><strong>Ticket Number:</strong> ${ticket.ticketNumber}</p>
    <p><strong>Flight Number:</strong> ${ticket.flightNumber}</p>
    <p><strong>Carrier Name:</strong> ${ticket.carrierName}</p>
    <p><strong>From:</strong> ${fromCity}</p>
    <p><strong>To:</strong> ${toCity}</p>
    <p><strong>Fare:</strong> ${fare}</p>

    <h3>Passenger List</h3>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Name</th>
                <th>Date of Birth</th>
                <th>Fare</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="totalFare" value="0" />
            <c:forEach var="passenger" items="${passengerList}">
                <tr>
                    <td>${passenger.passengerName}</td>
                    <td>${passenger.passengerDOB}</td>
                    <td>${passenger.fare}</td>
                </tr>
                <c:set var="totalFare" value="${totalFare + passenger.fare}" />
            </c:forEach>
        </tbody>
    </table>
    <p><strong>Total Fare:</strong> ${totalFare}</p>
<form action="/cancelTicket" method="post">
  <input type="hidden" name="ticketNumber" value="${ticket.ticketNumber}"/>
  <button type="submit" class="cancel-button">Cancel Ticket</button>
</form>
    <a href="/index">Home</a>
</div>
</body>
</html>
