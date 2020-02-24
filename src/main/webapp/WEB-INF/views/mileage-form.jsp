<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mileage Form</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body class="mileage">
<form method="post" action="/mileage-result">
	<div class="fieldplease">
		<fieldset>
			<p>
			<h3>MPG</h3>
			</p>
			<p>
				<input type="number" id="mpg" name="mpg" />
			</p>
			<p>
			<h3>Gallons</h3>
			</p>
			<p>
				<input type="number" id="gallong" name="gallons" />
			</p>
			<p>
			<h3>Trip Distance</h3>
			</p>
			<p>
				<input type="number" id="TripD" name="TripD" />
			</p>
		</fieldset>
	</div>
	
		<div class="center">
			<button class="mform" style="vertical-align:middle">
			<span>CALCULATE</span></button>
		</div>
	</form>
</body>
</html>