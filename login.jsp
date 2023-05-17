<html>
<head>
<title>Login</title>
<style type="text/css">
.right { 	text-align: right;
}
</style>
</head>
<body bgcolor="#00FFFF">  
<center>
<form action="loginconf.jsp" method="post">
<table bgcolor="skyblue" width="993" height="102" border="0">
		<tr>
			<td width="251" height="96"><img src="pimage/images.jpg" width=251 height=88 alt="Logo"/></td>
			<td width="726" class="right">24x7 Customer Support- <a href="cantact.jsp">Contact us</a> | <a href="main.jsp">Home</a> |
	<% if(session.getAttribute("uname")==null) {%>
			<a href="login.jsp">Login</a>
	<%} else {
		%>
			<a href="logout.jsp">Logout</a>
		<%}%></td>
		</tr>		
		</table>
	<tr><td><center>User name</center></td><td><input type="text" name="user"/></td></tr>
	<tr><td><center>Password</center></td><td><input type="password" name="pass"/></td></tr>
	<tr><td colspan="2"><center>
	<input type="submit" value="Login"></center></td></tr><br>
	<tr><td colspan="2"><center>
	<marquee scrollamount="5" width="40">&lt;&lt;&lt;</marquee>
	
	<a href="customer.jsp">Register</a>
	<marquee scrollamount="5" width="40" direction=right>&lt;&lt;&lt;</marquee>
	
	</center>
	</td>
	</tr>
	
	</form>
</center>
</body>
</html>