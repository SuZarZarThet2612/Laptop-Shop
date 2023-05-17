<html>
<head>
<title>Login</title>
<style type="text/css">
.right { 	text-align: right;
}
</style>
</head>
<body bgcolor="blue">  
<center>
<form action="adloginconf.jsp" method="post">
<table bgcolor="pink" width="993" height="102" border="0">
		<tr>
			<td width="251" height="96"><img src="pimage/images.jpg" width=251 height=88 alt="Logo"/></td>
			<td width="726" class="right">24x7 Customer Support- <a href="cantact1.jsp">Contact us</a> | <a href="main1.jsp">Home</a> |
	<% if(session.getAttribute("uname")==null) {%>
			<a href="login.jsp">Login</a>
	<%} else {
		%>
			<a href="logout.jsp">Logout</a>
		<%}%></td>
		</tr>		
		</table>
	<h3>User name:</h3><input type="text" name="user"/><br>
	<h3>Password:</h3><input type="password" name="pass"/><br>
	
	<marquee scrollamount="5" width="40">&lt;&lt;&lt;</marquee>
	<input type="submit" value="Login">
	<marquee scrollamount="5" width="40" direction=right>&lt;&lt;&lt;</marquee>
	
	</form>
</center>
</body>
</html>