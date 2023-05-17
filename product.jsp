<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
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
<body background="pimage/a.gif">
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
<p>
<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager.*" %>
<%
String pid=request.getParameter("product");
String  hname="Grand";
PreparedStatement ps;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/project","root","root");
Statement st=con.createStatement();
ps=con.prepareStatement("select * from mtable where prod_id=?");
ps.setString(1,pid);
rs=ps.executeQuery();
while(rs.next())
{
%>
<p class="name"><%=rs.getString(3) %><%=rs.getString(2) %></p>
<%}
ps=con.prepareStatement("select * from pics where pic_id=?");
ps.setString(1,pid);
rs=ps.executeQuery();
while(rs.next())
		{
	String url=rs.getString(2);
	
%>
<table width=977 height=330 border=0>
<%
out.print("<tr><td width=358 align=right> <img src='"+url+"' width=300 height=200 alt=hname> </td>");
}%>
<%
ps=con.prepareStatement("select * from mtable where prod_id=?");
ps.setString(1,pid);
rs=ps.executeQuery();
while(rs.next())
{
%>
<td width=623 class="center1"><table width=366 height=200 border=0>
<tr>
<td width=179 class="center1">Model Name:</td>
<td width=277 class="normal"><%=rs.getString(2) %></td>
</tr>
<tr>
<td class="center1">Brand :</td>
<td><%=rs.getString(3) %></td>
</tr>
<tr>
<td class="center1">Price :</td>
<td><%=rs.getString(4) %></td>
</tr>
<%} %>
</table>

<% if(session.getAttribute("uname")==null) { %>
			<form action="login.jsp">

<input type="image" src="pimage/b5.png" name="buy" value="grand" width=50 height=50>
	<%} else {
		%>
			<p>
<form action="buy.jsp">
<input type="hidden" name="name" value=<%=pid %>>
<input type="image" src="pimage/b5.png" name="buy" value="grand" width=60 height=60>
</form></p>
		<%}%>
</td>
</tr></table>
<p class="gnrl">GENERAL FEATURE</p>
<%
rs.close();
ps=con.prepareStatement("select * from features where id=?");
ps.setString(1,pid);
rs=ps.executeQuery();
%>
<%
while(rs.next())
{%>

<table width=630 border=1 cellspacing=0>
<tr>
<td width=127 class=normal>CPU</td>
<td width=493><%=rs.getString(2)%></td>
</tr>
<tr>
<td class=normal >RAM</td>
<td><%=rs.getString(3) %></td>
</tr>
<tr>
<td class=normal >HDD</td>
<td><%=rs.getString(4) %></td>
</tr>
<tr>
<td class=normal >Graphic</td>
<td><%=rs.getString(5) %></td>
</tr>
<tr>
<td class=normal >Display</td>
<td><%=rs.getString(6) %></td>
</tr>
<tr>
<td class=normal >DVD Drive</td>
<td><%=rs.getString(7) %></td>
</tr>
</table>
<%} %>
</body>
</html>