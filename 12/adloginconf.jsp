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
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/admin","root","root");
			Statement st=con.createStatement();
			
			System.out.println("state ");
			ResultSet rs=null;
			PreparedStatement ps;
			
%>
<% boolean flag=false;
	String name=request.getParameter("user");
	String pass=request.getParameter("pass");
%>
<%
String sql="Select name from login where Name=? and Password=?";
try{
	ps=con.prepareStatement(sql);
	ps.setString(1,name);
	ps.setString(2,pass);
	rs=ps.executeQuery();
	if (rs.next()){
		rs.getString("name");
		flag=true;
		session.setAttribute("uname",rs.getString("name"));
		}
	else {
		request.setAttribute("err","user name or password error!");
	}
	rs.close();
	ps.close();
	con.close();
	}catch(Exception e){
		out.println(e);
	}
%>
<%

	if (flag) {
	response.sendRedirect("main1.jsp");
	} %>
</body>
</html>