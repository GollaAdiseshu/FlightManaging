<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Routes</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.pinimg.com/564x/c1/ac/90/c1ac901d42a16b48479c2407b00881b0.jpg'); /* Add the background image */
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
    .table-container {
        background-color: rgba(255, 255, 255, 0.9); /* Slight transparency for better readability */
        text-align: center;
        margin: 20px auto;
        width: 60%;
        border: 1px solid #000;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 8px;
    }
    h2 {
        margin-bottom: 20px;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    th, td {
        padding: 10px;
        border: 1px solid #000;
    }
    th {
        background-color: #f2f2f2;
    }
    a {
        display: inline-block;
        padding: 10px 20px;
        text-decoration: none;
        color: #fff;
        background-color: #007bff;
        border-radius: 4px;
        transition: background-color 0.3s;
    }
    a:hover {
        background-color: #0056b3;
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

<div class="table-container">
    <h2>All Routes</h2>
    <br/>
    <table>
        <tr>
            <th>Route Number</th>
            <th>Source Airport Code</th>
            <th>Destination Airport Code</th>
            <th>Route Fare</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${abc}" var="route">
            <tr>
                <td>${route.routeId}</td>
                <td>${route.sourceAirportCode}</td>
                <td>${route.destinationAirportCode}</td>
                <td>${route.fare}</td>
                <td>
                    <form action="/CancelRoute" method="post">
                        <input type="hidden" name="RouteNumber" value="${route.routeId}"/>
                        <button type="submit" class="cancel-button">Cancel</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    
    <br/><br/>
    <a href="/index">Return</a>
</div>

</body>
</html>
