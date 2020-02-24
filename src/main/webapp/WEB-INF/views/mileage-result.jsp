<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Total Miles</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body
	style="background-image: url(${backg});background-size: cover;
background-repeat: no-repeat; min-height: 100%">
	<h2>Total Miles</h2>

	<div class="milr">You can go: ${ totalMiles } miles.</div>
	<div class="milr" style="color: ${color};">${makeIt}</div>

	<a class="magic"  href="/mileage-form">Would you like to try again?</a>

</body>
</html>