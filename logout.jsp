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
	<% if(session.getAttribute("uname")!=null){
				session.invalidate();
				response.sendRedirect("main.jsp");
			%>
		<script type="text/javascript">
		function Redirect()
		{
			window.location="main.jsp";
		}
		document.write("You will be redirected to main page in a few sec.");
		setTimeout(Redirect(),5ooo);
		</script>
		<%
		}else
		{%>
		You're already logged out.
		Click <a href="main.jsp">here</a>to go to the home page.
		<%} %>
		</center>
		</body></html>