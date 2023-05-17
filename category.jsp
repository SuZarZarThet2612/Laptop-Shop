<html>
<head>
<title>Untitled Document</title>
<style type="text/css">
.right{text-align:right;
}
</style>

</head>
<body bgcolor=bluesky>
<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager.*"%>
<table width="993" height="102" border="0">
		<tr>
			<td width="251" height="96"><img src="pimage/images.jpg" width="251" height="88" alt="logo"></td>
			<td width="726" class="right">24x7 Customer Support- <a href="contact.jsp">Contact us</a> | <a href="main.jsp">Home</a> |
	<% if(session.getAttribute("uname")==null) { %>
			<a href="login.jsp">Login</a>
	<%} else {
		%>
			<a href="logout.jsp">Logout</a>
		<%}%></td>
		</tr>		
	</table>
<hr/>
<%

String category=request.getParameter("category");
PreparedStatement ps;
Connection con;
ResultSet rs=null,rs1=null,rs2=null;
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement st=con.createStatement();
System.out.println("state ");

%>
<%
boolean flag=false;
String search=request.getParameter("type");
%>
<% 
String pid=null;

try{ 
ps=con.prepareStatement("select * from mtable where brand =?");
ps.setString(1,search);
rs =ps.executeQuery();
if (rs.next()){
		flag=true;
		%>
			<p><table width="992" height="179" border="1">
	<%do
	{%>
		<tr>
	<td width="185" height="173" class="center1">
	<%
	pid=rs.getString(1); 
	ps=con.prepareStatement("select* from pics where pic_id=? ");
	ps.setString(1,pid);
	rs1=ps.executeQuery(); 
	while(rs1.next())
	{String url=rs1.getString(2);
		%>
		<table width="120" height="133" border="0" align="center">
			<tr>
				<td><form action="product.jsp">
<input type="hidden" name="product" value=<%=rs1.getString("pic_id")%>>
<%
out.print("<tr><td width=358 align=right><input type='image' name='buy' vaiue='type' src='"+url+"' width=300 height=200 alt=hname> </td>");
%>
</form></td>
	</tr>
	<%} %>
		</table>
		<%
		ps=con.prepareStatement("select * from mtable where prod_id=? ");
			ps.setString(1,pid);
			rs2=ps.executeQuery();
			while(rs2.next())
			{%>
			<td width="791"><p><%=rs2.getString(3)%> <%=rs2.getString(2)%>
			<p>RS. <%=rs.getString(4)%> </p> <% } %>
			</td></tr><%
			
	     	} while (rs.next());
	     	%>
			</table>
			<% }

	}catch(Exception e){
		out.println(e);
	}
	%>	
</body>
</html>