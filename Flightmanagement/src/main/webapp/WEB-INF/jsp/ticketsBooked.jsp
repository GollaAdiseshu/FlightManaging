<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Tickets Booked</h1>
        <table>
            <thead>
                <tr>
                    <th>Ticket Number</th>
                    <th>Flight Number</th>
                    <th>Carrier Name</th>
                    <th>Total Amount</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ticket" items="${ticketRecord}">
                    <tr>
                        <td>${ticket.ticketNumber}</td>
                        <td>${ticket.flightNumber}</td>
                        <td>${ticket.carrierName}</td>
                        <td>${ticket.totalAmount}</td>
                        <td>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
</body>
</html>
