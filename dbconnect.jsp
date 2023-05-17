<%@page import='java.sql.*' %>
<%
Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
			Statement st=con.createStatement();
			
			%>