<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train Info Application</title>
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
		<br> <a href="enter1.jsp" id="mybtn">Get Train Information By
			Train No.</a> <br> <br> <a href="enter2.jsp" id="mybtn">Get
			Train Information By Station</a> <br> <br> <a href="view3.jsp"
			id="mybtn">Get All Trains Information</a>
	</div>
</body>
</html>