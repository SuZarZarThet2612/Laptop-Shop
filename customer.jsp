<html>
<head>
<title>Untitled Document</title>
<style type="text/css">
.right { 	text-align: right;
}
</style>
</head>
<body bgcolor=violet>
	<center>
	<table width="993" height="102" border="0">
		<tr>
			<td width="251" height="96"><img src="pimage/images.jpg" width="251" height="88" alt="logo"></td>
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
	<strong><em>Register Here</em></strong>
	<form action="reg.jsp"><table><b>
			<tr><td>Name</td><td><input type="text" name="name"></td></tr>
			<tr><td>User ID</td><td><input type="text" name="id"></td></tr>
			<tr><td>Password</td><td><input type="password" name="password"></td></tr>
			<tr><td>Phone No</td><td><input type="text" name="phone"></td></tr>
			<tr><td>Date of Birth</td><td><input type="text" name="date"></td></tr>
			<tr><td>Address</td><td> <textarea name="add"></textarea></td></tr>
					<br>
					</b></table><br/>
	 		<input type="submit" value="register"/>
	 			</form>
	 			<br><hr>
	 			 Already registered! To Login <a href="login.jsp">Click here</a>
	 			 <hr>
	</center></body>
</html>