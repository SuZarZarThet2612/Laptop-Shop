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

	<% if(session.getAttribute("uname")!=null){
				session.invalidate();
				out.println("<font size=10 color=red>Successfully loggged out!</font>");
			%>
		<script type="text/javascript">
		function Redirect()
		{
			window.location="admain.jsp";
		}
		document.write("You will be redirected to main page in a few sec.");
		setTimeout(Redirect(),5ooo);
		</script>
		<%
		}else
		{%>
		You're already logged out.
		Click <a href="admain.jsp">here</a>to go to the home page.
		<%} %>
		</center>
		</body></html>