<html>
<head>
<title>"Untitled Document"</title>
<style type="text/css">
.right {
		text-align: right;
}
 
  #form1 {
		text-align: center;
}
.normal{
		text-align: left:
		font-weight: bold;
		font-family; Arial,Helvetica,sans-serif;
}
.unormal {
		font-family; Arial,Helvetica,sans-serif;
		}
.center1 { 	text-align: center;
}				
</style>
</head>
<body>
<%@page language="java" %>
<table width="993" height="330" border="0">
	<tr>
		<td width="205" height="89"><img src="pimage/images.jpg" width=251 height=88 alt="Logo"/>
		<hr/></td>
			<td width="772"><table width="723" height="88" border="0">
				<tr>
					<td width="713" class="right"> Customer Support - <a href="contact1.jsp">Contact us </a>| Home |
					<%if(session.getAttribute("uname")==null){
						%>
						<a href="adlogin.jsp">Login</a> 
						<%}else{%>
							<a href="logout1.jsp">Logout</a><% } %>
					</td>
				</tr>
				<tr>
				 <td><form id="form1" name="form1" method="post" action="search.jsp">
				 		<input name ="search" type="text" id="search" size="60" border=0/>
				 		<label>
				 			<input type="submit" name="submit" id="button" value="search"/ >
				 		</label>
				 		</form> 
					</td>  
				</tr>
			</table>
		    <hr/></td>
		    			
		    <tr>
		    <td>
		    	<table width="251" height="482" border="0">
		    		<tr>
		    			<td height="184"><table width="100" height="50" border="0">
		    				<tr>
		    				 	<td class="normal" >Mobile Brands</td>
		    				</tr>
		    	
		    				    <tr>
		    					<td><form action="category.jsp">
		    					<input type=hidden name="type" value="dell" / >
		    					<input  type=submit name="category" value="Dell" / >
		    				    
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="category.jsp">
		    					<input type="hidden" name="type" value="lenovo" / >
		    					<input type="submit" name="category" value="Lenovo" / >
		    					
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="category.jsp">
		    					<input type="hidden" name="type" value="acer" / >
		    					<input type="submit" name="category" value="Acer" / >
		    					
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="category.jsp">
		    					<input type="hidden" name="type" value="hp" / > 
		    					<input  type='submit' name="category" value="Hp" / >
		    							    					</form></td></tr>
		    					<tr>
		    					<td><form action="category.jsp">
		    					<input type="hidden" name="type" value="asus" / >
		    					<input type="hidden" name="category" value="Asus" / >
		    					
		    					</form></td></tr>
		    				</table></td></tr>
		    					
		    					</table></td>
<td><table width=725 height=684 border=0>
<tr class="normal">
<td height=30>HOT ARRIVALS</td>
</tr>
<tr>
<td height=261><table width=714 height=258 border=0>
<tr>
<td width=228><table width=120 height=173 border=0 align=center>
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="01" >
<input name="buy" type="image" value="grand" src="pimage/dell3.png" width=114 height=165>
</form></td></tr>
</table>
 <p class="center1">Dell-Inspiron 5459-2210</p>
<p class="center1">$579.00</p>
</td>
<td width=240 class="center1" ><table width=117 height=173 border=0 align="center">
<tr>
<td width=111><form action="product.jsp">
<input type="hidden" name="product" value="02" >
<input name="buy" type="image" value="s4" src="pimage/leno2.jpg" width=100 height=165>
</form>
</td></tr>
</table>

<p>Lenovo-Ideapad 100 (i3)</p>
<p>$385.00</p></td>
<td width=224><table width=120 height=173 border=0 align="center">
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="06" >
<input name="buy" type="image" value="g pro" src="pimage/leno3.jpg" width=104 height=165>
</form></td></tr>
</table>
<p class="center1">Aser=Aspire E5-475 (i3)</p>
<p class="center1">$419.00</p>
</td>
</tr>  
</table></td></tr>
<tr class="normal">
<td height=31>FEATURED MOBILES</td>
</tr>
<tr>
<td height=261><table width=714 height=258 border=0>
<tr>
<td width=228><table width=120 height=173 border=0 align=center>
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="01" >
<input name="buy" type="image" value="grand" src="pimage/dell1.jpg" width=114 height=165>
</form></td></tr>
</table>
 <p class="center1">Dell-i3</p>
<p class="center1">$326.00</p>
</td>
<td width=240 class="center1" ><table width=117 height=173 border=0 align="center">
<tr>
<td width=111><form action="product.jsp">
<input type="hidden" name="product" value="02" >
<input name="buy" type="image" value="grand" src="pimage/leno3.jpg" width=100 height=165>
</form>
</td></tr>
</table>

<p>Lenovo i-3</p>
<p>$392.00</p></td>
<td width=224><table width=120 height=173 border=0 align="center">
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="06" >
<input name="buy" type="image" value="grand" src="pimage/leno3.jpg" width=104 height=165>
</form></td></tr>
</table>
<p class="center1">Acer-i3</p>
<p class="center1">$375.00</p>
</td>
</tr>  
</table></td></tr>
<tr class="normal">
<td height=27>BuDEET MOBILES</td>
</tr>
<tr>
<td height=261><table width=714 height=258 border=0>
<tr>
<td width=228><table width=120 height=173 border=0 align=center>
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="01" >
<input name="buy" type="image" value="grand" src="pimage/dell1.jpg" width=114 height=165>
</form></td></tr>
</table>
 <p class="center1">Dell-i3</p>
<p class="center1">$326.00</p>
</td>
<td width=240 class="center1" ><table width=117 height=173 border=0 align="center">
<tr>
<td width=111><form action="product.jsp">
<input type="hidden" name="product" value="02" >
<input name="buy" type="image" value="grand" src="pimage/leno1.png" width=100 height=165>
</form>	
</td></tr>
</table>

<p>Lenovo i-3</p>
<p>$392.00</p></td>
<td width=224><table width=120 height=173 border=0 align="center">
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="06" >
<input name="buy" type="image" value="grand" src="pimage/leno3.jpg" width=104 height=165>
</form></td></tr>
</table>
<p class="center1">Acer-i3</p>
<p class="center1">$375.00</p>
</td>
</tr>  
</table></td></tr>
</table></td> 
 
 </tr>
</table>
</body>
</html>