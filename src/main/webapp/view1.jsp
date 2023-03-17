<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train Details</title>
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
		<h1 style="font-family: fantasy; font-weight: bolder;">Train
			Details</h1>
		<%
		//retrieve the request parameter
		int trainNo = Integer.parseInt(request.getParameter("trainNo"));

		//retrieve the context parameter from web.xml 
		String driver = application.getInitParameter("dbDriver");
		String url = application.getInitParameter("dbUrl");
		String uname = application.getInitParameter("dbUname");
		String pass = application.getInitParameter("dbPass");

		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, uname, pass);
		String query = "select * from traininfo where trainNo = ?";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setInt(1, trainNo);
		ResultSet rs = pst.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();
		while (rs.next()) {
		%>
		<table border="1">
			<%
			for (int i = 1; i <= rsmd.getColumnCount(); i++) {
			%>
			<tr>
				<th><%=rsmd.getColumnName(i)%></th>
				<td><%=rs.getString(i)%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
		<br> <br> <a href="index.jsp" id="mybtn">Back</a>
	</div>
</body>
</html>