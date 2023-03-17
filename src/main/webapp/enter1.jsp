<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train by No.</title>
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
		<form action="view1.jsp" method="post">
			<h2 style="font-family: fantasy;">Select Train No.</h2>
			<select name="trainNo">
				<%
				String driver = application.getInitParameter("dbDriver");
				String url = application.getInitParameter("dbUrl");
				String uname = application.getInitParameter("dbUname");
				String pass = application.getInitParameter("dbPass");

				Class.forName(driver);
				Connection con = DriverManager.getConnection(url, uname, pass);
				String query = "select trainno from traininfo";
				PreparedStatement pst = con.prepareStatement(query);
				ResultSet rs = pst.executeQuery();
				while (rs.next()) {
				%>
				<option><%=rs.getString(1)%></option>
				<%
				}
				%>
			</select> <br> <br> <input type="submit"
				value="Show Train Information">
		</form>
		<br> <br> <a href="index.jsp" id="mybtn">Back</a>
	</div>
</body>
</html>