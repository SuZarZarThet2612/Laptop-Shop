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
			<td width="726" class="right">24x7 Customer Support- <a href="contact.jsp">Contact us</a> | <a href="main.jsp">Home</a> |
	<% if(session.getAttribute("uname")==null) {%>
			<a href="login.jsp">Login</a>
	<%} else {
		%>
			<a href="logout.jsp">Logout</a>
		<%}%></td>
		</tr>		
	</table>
	<P><strong>User name or Password Incorrect!</strong>Click <a href="customer.jsp"><strong>here </strong></a>to register.</P>
	<form action="loginconf.jsp" method="post">
	<center><tr><td><center>User name</center></td><td><input type="text" name="user"/></td></tr>
	<tr><td><center>Password</center></td><td><input type="password" name="pass"/></td></tr>
	<tr><td colspan="2"><center>
	<input type="submit" value="Login"></center></td></tr><br>
	<tr><td colspan="2"><center>
	<marquee scrollamount="5" width="40">&lt;&lt;&lt;</marquee>
	<marquee scrollamount="5" width="40" direction=right>&lt;&lt;&lt;</marquee>
	</center></td></tr></center>
	</form>
	</body>
	</html>
	