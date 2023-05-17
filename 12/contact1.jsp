<html>
<head>
<title>Untitled Document</title>
</head>
<body>
	<%@page import="java.sql.*" %>
	<%@page import="java.io.*" %>
	<%@page import="java.sql.DriverManager.*" %> 
<%

Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/laptop","root","root");
			Statement st=con.createStatement();
			
			System.out.println("state ");
			ResultSet rs=null;
			PreparedStatement ps;
			ps=con.prepareStatement("select * from contact ");
			rs=ps.executeQuery();
			while(rs.next()){ 
			String name=rs.getString(1);
			String issue=rs.getString(2);
			%>
			<table background color="bluesky" width=300 height=150>
				<%out.println("<tr><td width=50>"+name+"</td><td width=100>"+issue+"</td></tr>" ); %>
			</table>
			<% 	
			} %>
			
%>
</body></html>