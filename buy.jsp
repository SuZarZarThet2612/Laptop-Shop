<html>
<head>
<title>Untitled Document</title>
<style type="text/css">
right{	text-align:right;
}
</style>
<link href="italics.css" rel="stylesheet" type="text/css"/>
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
String sql="SELECT* from customer where name=?";
ps=con.prepareStatement(sql);
%>
<table width="993" height="102" border="0">
		<tr>
			<td width="251" height="96"><img src="pimage/images.jpg" width="251" height="88" alt="logo"></td>
			<td width="726" class="right">24x7 Customer Support- <a href="cantact.jsp">Contact us</a> | <a href="main.jsp">Home</a> |
	<% if(session.getAttribute("uname")==null) { %>
			<a href="login.jsp">Login</a>
	<%} else {
		%>
			<a href="logout.jsp">Logout</a>
		<%}%></td>
		</tr>		
	</table>
<hr>
<p>
<%
String uname=(String)session.getAttribute("uname");
if(session.getAttribute("uname")!=null){
session.setAttribute("product",request.getParameter("name"));
ps.setString(1,uname);
rs=ps.executeQuery();%>
Please<span class="italics"><strong>confirm</strong></span>your latest information,or if any of the info,which you see is not correct then you may press the...

<%
while(rs.next())
{
String id=request.getParameter("name");
%>
</p>
<table width="981" height="108" border="0" cellspacing="0">
<tr>
<td width=134 height=29>&nbsp;</td>
<td width="303" align="center"><form action="buyedit.jsp" method="post""><input type="submit"  value="Edit"/>
<input type="hidden" name="user_id" value=<%=rs.getString(2)%> ></form></td>
</tr>
<tr>
<td height="29" align="right"><strong>Phone No.:</strong></td>
<td width="365"><input type="text" name="phone" value=<%=rs.getString(4)%>></td>
</tr>
<tr>
<td height="50" align="right"><strong>Address:</strong></td>
<td><input type="text" name="address" value=<%=rs.getString(6)%> ></td>
</tr>
</table>
<p><form action="orderconf.jsp" method="post">
<input type="submit" name="Confirm" value="confirm">


</form></p>
<%}%>

<p>
<%}
else{
session.setAttribute("product",request.getParameter("name"));%>
Enter the following details:
</p>
<p>
<form action="orderconf.jsp">
<table width="450" height="142" border="0">
<tr>
<td height="92" align="right">Name:</td>
<td width="342"><input type="hidden" name="name" value=<%=rs.getString(2)%>></td>
</tr>
<tr>
<td height="32" align="right">phone No.</td>
<td><input type="hidden" name="phone" value=<%=rs.getString(4)%>></td>
</tr>
<tr>
<td height="60" align="right">Address:</td>
<td><input type="hidden" name="phone" value=<%=rs.getString(6) %>></td>
</tr>
</table>




<input type="submit" name="confirm" value="Confirm"/>

</form>
</p>
<p>
<%}%>

</body>
</html>
