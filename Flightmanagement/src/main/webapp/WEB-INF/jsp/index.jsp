<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flight Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('https://images.unsplash.com/photo-1542296332-2e4473faf563?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
        background-size: cover;
        background-repeat: no-repeat;
    }
    .header {
        background-color: #333;
        color: #fff;
        padding: 15px;
        text-align: left;
    }
    .nav {
        display: flex;
        justify-content: flex-start;
        background-color: #444;
        padding: 10px 15px;
    }
    .nav a {
        color: white;
        padding: 10px;
        text-decoration: none;
        text-align: center;
    }
    .nav a:hover {
        background-color: #555;
    }
    .dropdown {
        position: relative;
        display: inline-block;
        margin-top: 10px;
    }
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #444;
        min-width: 160px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }
    .dropdown-content a {
        color: white;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
    }
    .dropdown-content a:hover {
        background-color: red;
    }
    .dropdown:hover .dropdown-content {
        display: block;
    }
    .dropdown:hover .dropbtn {
        background-color: red;
    }
    .content {
        padding: 20px;
        text-align: center;
    }
    #h11 {
        text-align: center;
        color: #fff;
        text-shadow: 2px 2px 4px #000000;
    }
</style>
</head>
<body>
    <div class="content">
        <h1 id="h11">Welcome to the Flight Management System</h1>
    </div>
   
  
    <div class="dropdown">
<button class="dropbtn">Airport </button>
<div class="dropdown-content">
<a href="/airport">Airport Addition</a>
<a href="/airports">Airport Records</a>
</div>
</div>
 <div class="dropdown">
        <button class="dropbtn">Route</button>
        <div class="dropdown-content">
            <a href="/Route">Route Addition</a>
            <a href="/Routes">Routes Records</a>
        </div>
    </div>
<div class="dropdown">
        <button class="dropbtn">Flight</button>
	<div class="dropdown-content">
            <a href="/flight">Flight Addition</a>
            <a href="/flights">Flight Records</a>
        </div>
        </div>
<div class="dropdown">
        <button class="dropbtn">Flight Booking</button>
	<div class="dropdown-content">
            <a href="/flight-search">Flight Search</a>
            
            
             </div>
        </div>
<div class="dropdown">
        <a href="/logout">Logout</a>
        </div>  

</body>
</html>

