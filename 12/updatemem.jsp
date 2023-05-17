<html>

<head>
<title>Untitled Document</title>

</head>
<body>
<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager.*"%>
<%
PreparedStatement ps;
Connection con;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/laptop","root","root");
Statement st=con.createStatement();
String sql="UPDATE customer set phone_no=?, address=? where user_id=?";
ps=con.prepareStatement(sql);
ps.setString(3,request.getParameter("user_id1"));
ps.setString(1,request.getParameter("phone"));
ps.setString(2,request.getParameter("address"));
ps.executeUpdate(); 
%>
<jsp:forward page="orderconf.jsp"/>
</body>
</html> 