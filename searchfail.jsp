<html>
<head>
<title>Untitled Document</title>
<style type="text/css">
.right { 	text-align: right;
}
</style>
</head>
<body>
	<center>
	<table width="993" height="102" border="0">
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
	<hr/>
<p><strong>No match found!</strong> for your search</p>
</center>
</body>
</html>