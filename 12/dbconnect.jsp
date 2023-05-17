<%@page import='java.sql.*' %>
<%
Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login","root","root");
			Statement st=con.createStatement();
			
			System.out.println("state ");
			%>