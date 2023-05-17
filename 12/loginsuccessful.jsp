<html>
<head>
<title>Login</title>
<style type="text/css">
.right { 	text-align: right;
}
</style>
</head>
<body>
	<p>
		<%@page import="java.sql.*" %>
	<%@page import="java.io.*" %>
	<%@page import="java.sql.DriverManager.*" %> 
	<table width="993" height="102" border="0">
		<tr>
			<td width="251" height="96"><img src="head.png" width="251" height="88" alt="logo"></td>
			<td width="726" class="right">24x7 Customer Support- <a href="cantact.jsp">Contact us</a> | <a href="main.jsp">Home</a> |
	<% if(session.getAttribute("uname")==null) {%>
			<a href="login.jsp">Login</a>
	<%} else {
		%>
			<a href="logout.jsp">Logout</a>
		<%}%></td>
		</tr>		
	</table>
<br><br>
	Welcome <%session.getAttribute("uname");%>
	<p>Click <a href="main.jsp">here </a>to go to home page.
	</p>
	<br><br>
	
</body>
</html>