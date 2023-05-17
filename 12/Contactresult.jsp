<html>
<head>
<title>REG</title>
</head>
<body background="pimage/11.png">
<table width=993 height=102 border=0>
<tr>
<td width=251 height=96><img src="pimage/images.jpg" width=251 height=88 alt="Logo"/></td>
<td width=726 class=right>24X7 customer Support -<a href="contant.jsp">Contant us</a> | <a href="main.jsp">Home</a> |
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
<% PreparedStatement ps;
Connection con;
ResultSet rs=null;
		String s=request.getParameter("name");
		String s1=request.getParameter("issue");
		
            Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/laptop","root","root");
			Statement st=con.createStatement();
			
			System.out.println("state ");
			%>
		
		<%
		
	
		ps=con.prepareStatement("insert into contact values (?,?)");
		ps.setString(1,s);
		ps.setString(2,s1);
		
			int insertResult=ps.executeUpdate();
			%>
		<p><font color=red><h3>Call us:
		Pick up the phone and call us 09XXXXXX ,09XXXXX. We are available 24 hours a day,7 days a week.</h3></font></p>	
		<br><br><br><br><br>
		
		<font color=red size=60><center>Thank You Your Shopping</center></font>
</body></html>