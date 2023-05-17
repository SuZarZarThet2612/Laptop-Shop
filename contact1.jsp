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
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/car","root","root");
			Statement st=con.createStatement();
			
			System.out.println("state ");
			ResultSet rs=null;
			PreparedStatement ps;
			ps=con.prepareStatement("select * from contact ");
			rs=ps.executeQuery();%>
			<table bgcolor=skyblue width=300 border=1><tr><td width=300><h3>Name</h3></td><td width=600><h3>Issue</h3></td></tr>
			<%while(rs.next()){ 
			String name=rs.getString(1);
			String issue=rs.getString(2);
			%>
			
			
				<%out.println("<tr><td >"+name+"</td><td>"+issue+"</td></tr>" ); %>
			
			<% 	
			} %>
			
</table>
</body></html>