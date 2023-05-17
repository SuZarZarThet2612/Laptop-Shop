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
con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement st=con.createStatement();
String price=request.getParameter("p");
String id=request.getParameter("id1");
String sql="UPDATE mtable set price='"+ price +"'  where prod_id='"+ id +"'";



st.executeUpdate(sql); 
%>
 <font color=blue size=9>Update Successful!!!</font>
</body>
</html> 