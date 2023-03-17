<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train by Station</title>
<style>
#mybtn {
	border: solid 1px;
	border-radius: 5px;
	background: red;
	color: white;
	padding: 5px;
	text-decoration: none;
}
</style>
</head>
<body bgcolor="yellow">
	<%@include file="title.jsp"%>
	<div align="center">
		<form action="view2.jsp" method="post"
			style="font-family: fantasy; font-size: 25px; font-weight: bolder;">
			Source : <input type="text" name="src"
				placeholder="Enter Source Station"> <br> Destination :
			<input type="text" name="dest" placeholder="Enter Destination">
			<br> <input type="submit" value="View Trains">
		</form>
		<br> <br> <a href="index.jsp" id="mybtn">Back</a>
	</div>
</body>
</html>