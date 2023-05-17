<html>

<head>
<title>Untitled Document</title>

</head>
<body>
<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager.*"%>
<%

Connection con;
ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/laptop","root","root");
Statement st=con.createStatement();
String ph=request.getParameter("phone");
String add=request.getParameter("address");
String id1=request.getParameter("user_id1");
String sql=" update customer set phone_no='"+ ph +"', address='"+ add + "' where user_id ='"+id1+"'";
st.executeUpdate(sql);


%>
<jsp:forward page="orderconf.jsp"/> 
</body>
</html> 