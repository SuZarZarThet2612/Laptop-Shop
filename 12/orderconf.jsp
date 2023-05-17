<html>

<head>
<title>Untitled Document</title>
<style type="text/css">
.name{
	font-weight:bold;
	font-size:36px;
	}
.gnrl{
	font-family:Arial,Helvetica,sans-serif;
	font-weight:bold;
	}
.center1{
	text-align:center;
	}
.center1 tale{
	font-family:Arial,Helvetica,sans-serif;
	font-size:x-large;
	font-weight:bold;
	}
	
normal{
	font-weight:normal;
	}
normal{
	font-weight:normal;
	}
normal{
	font-weight:normal;
	}
normal{
	font-family:Arial,Helvetica,sans-serif;
	}
.right{
	text-align:right;
	}
.normal{
	font-family:Arial,Helvetica,sans-serif;
	}
</style>

</head>
<body bgcolor=pink>
<table width=993 height=102 border=0>
<tr>
<td width=251 height=96><img src="pimage/images.jpg" width=251 height=88 alt="Logo"/></td>
<td width=726 class=right>24X7 customer Support -<a href="contact.jsp">Contant us</a> | <a href="main.jsp">Home</a> |
<% if(session.getAttribute("uname")==null){
	%>
	<a href="login.jsp">Login</a>
	<%}else{%>
		<a href="logout.jsp">Logout</a><%}%></td>
</tr>
</table>
<hr />
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
String sql="select * from mtable where prod_id=?";
ps=con.prepareStatement(sql);
ps.setString(1,(String)session.getAttribute("product"));
rs=ps.executeQuery();
while(rs.next())
{
%>
<p>Order Confirmed:</p>
<table width="991" border="1" cellspacing="0">
<tr>
<td width=66 align=center><strong>Item ID</strong></td>
<td width=354 align=center><strong>Product Name &amp;Model</strong></td>
<td width=153 align=center><strong>Brand</strong></td>
<td width=148 align=center><strong>Shipping Charges</strong></td>
<td width=237 align=center><strong>Total Cost</strong></td>
</tr>
<tr>
<td height=75 align=center><%=rs.getString(1)%></td>
<td align=center><%=rs.getString(2)%></td>
<td align=center><%=rs.getString(3)%></td>
<td align=center>Rs.0</td>
<td align=center>Rs. <%=rs.getString(3)%></td>
</tr></table>
<%} %>
<p>Thanks for shopping with us.Your item will be delievered within 2-3 days.</p>
<p><strong>Happy Shopping</strong>
</body>
</html>