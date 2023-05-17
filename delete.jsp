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

String id=request.getParameter("id2");
String sql="delete from mtable where prod_id='"+id+"'";
st.executeUpdate(sql); 

Statement st1=con.createStatement();


String sql1="delete from features where id='"+id+"'";
st1.executeUpdate(sql1); 
Statement st2=con.createStatement();


String sql2="delete from pics where pic_id='"+id+"'";
st2.executeUpdate(sql2); 
response.sendRedirect("main.jsp");

%>
 
</body>
</html> 