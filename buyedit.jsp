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
<td width=726 class=right>24X7 customer Support -<a href="contant.jsp">Contact us</a> | <a href="main.jsp">Home</a> |
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
String sql="select * from customer where user_id=?";
ps=con.prepareStatement(sql);
ps.setString(1,request.getParameter("user_id"));
rs=ps.executeQuery();
while(rs.next())
{
%> 
<form action="updatemem.jsp"><table width=473 height=138 border=1>
<tr>
<td width=92 height=33 align=right>Phone No.</td>
<td width=365><input type=text name=phone value=<%=rs.getString(4)%> /></td>
</tr>
<tr>
<td align=right>Address:</td>
<td><input type=text size=120 name=address value=<%=rs.getString(6)%> /></td>
</tr>
</table>
<p> <input type="submit" value="Confirm"/>
<input type="hidden" name="user_id1" value=<%=rs.getString(2)%>>
<%} %>
</p></form>
</body>
</html>