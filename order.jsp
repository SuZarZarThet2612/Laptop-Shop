<html>
<head>
<title>Untitled Document</title>
</head>
<body>
<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager.*" %>
<%

PreparedStatement ps;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/project","root","root");
Statement st=con.createStatement();
ps=con.prepareStatement("select * from o ");
rs=ps.executeQuery();
while(rs.next())
{	String id=rs.getString(1);
	String model=rs.getString(2);
	String brand=rs.getString(3);
	String price=rs.getString(4);
	String name=rs.getString(5);
%>

			<table bgcolor="violet" width=100% border=1>
			<tr><td><h3>ID</h3></td><td><h3>Model</h3></td><td><h3>Brand</h3></td><td><h3>Price</h3></td><td><h3>UserName</h3></td></tr>
				<%out.println("<tr><td>"+id+"</td><td>"+model+"</td><td>"+brand+"</td><td>"+price+"</td><td>"+name+"</td></tr>" ); %>
			</table>
<%}%>
</body>
</html>
