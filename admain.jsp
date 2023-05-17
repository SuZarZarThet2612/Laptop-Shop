<html>
<head>
<title>"Untitled Document"</title>
<body bgcolor="#00FF0F" >
<table width=100% bgcolor="#78CEFA" align="center">
<tr>
<td><img src="pimage/admin.jpg" width=150 height=120></td>
<td><font face="Time New Roman" size=+4 color="black">Hello!</font></td>
<td><font face="Time New Roman" size=+4 color="black">It</font></td>
<td><font face="Time New Roman" size=+4 color="black">is</font></td>
<td><font face="Time New Roman" size=+4 color="black">Page</font></td>
<td><font face="Time New Roman" size=+4 color="black">Only</font></td>
<td><font face="Time New Roman" size=+4 color="black">For</font></td>
<td><font face="Time New Roman" size=+4 color="black">Admin</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>
<td><font face="Time New Roman" size=+4 color="black">.</font></td>

<td><img src="pimage/admin.jpg" width=150 height=120></td>
</tr>
</table>
<table bgcolor="yellow" width="100%">
<tr>
<td><center><a href="insert.jsp">Insert Product</a></center></td>
<td><center><a href="order.jsp">Order</a></center></td>

<td><center><a href="contact1.jsp">Contact us</a></center></td>


<%@page language="java" %>

					
					<%if(session.getAttribute("uname")!=null){
						%>
						<td><center><a href="adlogin.jsp">Login!</a></center></td>
						<%}else{%>
							<td><center><a href="logout1.jsp">Logout!</a></center></td><% } %>
								</tr></table>
		    <tr>
		    <td>
		    	<table width="251" height="482" border="0">
		    		<tr>
		    			<td height="184"><table width="242" height="171" border="0">
		    				<tr>
		    				 	<td class="normal" ><h2><I>Mobile Brands</I></h2></td>
		    				</tr>
		    				    <tr>
		    					<td><form action="adcategory.jsp">
		    					<input type=hidden name="type" value="dell" / >
		    					<input  type=submit name="category" value="Dell" / >
		    				    
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="adcategory.jsp">
		    					<input type="hidden" name="type" value="lenovo" / >
		    					<input type="submit" name="category" value="Lenovo" / >
		    					
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="adcategory.jsp">
		    					<input type="hidden" name="type" value="acer" / >
		    					<input type="submit" name="category" value="Acer" / >
		    					
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="adcategory.jsp">
		    					<input type="hidden" name="type" value="hp" / > 
		    					<input  type='submit' name="category" value="Hp" / >
		    							    					</form></td></tr>
		    					<tr>
		    					<td><form action="adcategory.jsp">
		    					<input type="hidden" name="type" value="asus" / >
		    					<input type="submit" name="category" value="Asus" / >
		    					
		    					</form></td></tr>
		    				</table></td><td><table width=725 border=0>
<img src="pimage/11.png" width=750 height=400 />
</table></td></tr>
		    					
		    					</table></td>

</body>
</html>