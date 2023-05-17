<html>
<head><title>RegisterResult</title></head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<form action='' method='post'>
<%

		String name=request.getParameter("name");
		int userid=Integer.parseInt(request.getParameter("id"));
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		String cpass=request.getParameter("cpass");
		int phno=Integer.parseInt(request.getParameter("phone"));
		String dob=request.getParameter("date");
		String address=request.getParameter("address");
	
		//out.println("Name is"+name+"<br>");
		//out.println("User ID is"+userid+"<br>");
		//out.println("Gender is"+gender+"<br>");
		//out.println("Password is"+password+"<br>");
		//out.println("Student Confirm Password is "+ cpass+ "<br>");
		//out.println("Phone Number is"+phno+"<br>");
		//out.println("Address is"+address+"<br>");
		
	
		if(password.equals(cpass) )
			{
			try{
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/laptop","root","root");
				
				Statement st=con.createStatement();
				
				System.out.println("Statement creation  ");
				
				String sql="Insert into register values "+"('"+name+"','"+userid+"','"+password+"','"+phno+"','"+dob+"''"+address+"','"+cpass+"','"+gender+"')";
				out.println("database query");
				int rs=st.executeUpdate(sql);
				if(rs>0)
				{
					out.println("Your Registeration is successful.") ;
					
				}else{
					out.println("Your registeration is not successful.");
				
				}
			}catch(Exception ex)
				{
					System.out.println("Connection error!!!");
				}
				
			}
		else
		{
			response.sendRedirect("register.jsp");
		} %>
	</form></body></html>