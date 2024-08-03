<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
<div align="center">
<h1 style="color:red">
<p>${errorMessage}</p>
</h1>
<h2><a href="/flight-search">Click Here to Re-Enter</a></h2>
</div>
</body>
</html>