<html>
<head>
<title>REG</title>
<style type="text/css">
.right {text-align: right;
}
</style></head>
<body bgcolor=violet>
<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager.*" %>
<form>
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
<% 
		String s=request.getParameter("name");
		String s1=request.getParameter("id");
		String s2=request.getParameter("password");
		String s3=request.getParameter("date");
		String s4=request.getParameter("phone");
		String s5=request.getParameter("add");%>
		
<%
 Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
			Statement st=con.createStatement();
			
			System.out.println("state ");
			%>
		
		<%
		PreparedStatement ps;
		ResultSet re=null;
		ps=con.prepareStatement("insert into customer values (?,?,?,?,?,?)");
		ps.setString(1,s);
		ps.setString(2,s1);
		ps.setString(3,s2);
		ps.setString(4,s3);
		ps.setString(5,s4);
		ps.setString(6,s5);
			int insertResult=ps.executeUpdate();
			if(insertResult!=0)
			{
				out.println("Successfully Registered");
			}
%>
		<br><hr>
				To login<a href="login.jsp">Click Here</a>
			<hr>
			</form>
</body></html>