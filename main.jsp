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
<body  bgcolor="pink" >
<%@page language="java" %>
<table width="993" height="330" border="0">
	<tr>
		<td width="205" height="89"><img src="pimage/images.jpg" width=251 height=88 alt="Logo"/>
		<hr/></td>
			<td width="772"><table  width="723" height="88" border="0">
				<tr>
					<td width="713" class="right"> Customer Support - <a href="contact.jsp">Contact us </a>| Home |
					<%if(session.getAttribute("uname")==null){
						%>
						<a href="login.jsp">Login</a> | <a href="customer.jsp">Sign in</a>
						<%}else{%>
							<a href="logout.jsp">Logout</a><% } %>
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
		    </tr>
		    <tr>
		    <td>
		    	<table  width="251" height="482" border="0">
		    		<tr>
		    			<td height="184"><table  width="242" height="171" border="0">
		    				<tr>
		    				 	<td class="normal" ><h1><I>Laptop Brands</I></h1></td>
		    				</tr>
		    				    <tr>
		    					<td><form action="category.jsp">
		    					<input type=hidden name="type" value="dell" / >
		    					<input  type=submit name="category" value="   Dell  " / >
		    				    
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="category.jsp">
		    					<input type="hidden" name="type" value="lenovo" / >
		    					<input type="submit" name="category" value="Lenovo" / >
		    					
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="category.jsp">
		    					<input type="hidden" name="type" value="acer" / >
		    					<input type="submit" name="category" value="  Acer   " / >
		    					
		    					</form></td></tr>
		    					<tr>
		    					<td><form action="category.jsp">
		    					<input type="hidden" name="type" value="hp" / > 
		    					<input  type='submit' name="category" value="    Hp    " / >
		    							    					</form></td></tr>
		    					<tr>
		    					<td><form action="category.jsp">
		    					<input type="hidden" name="type" value="asus" / >
		    					<input type="submit" name="category" value="  Asus   " / >
		    					
		    					</form></td></tr>
		    				</table></td></tr>
		    					<tr>
		    			<td height="201"><table  color=red width="243" height="180" border="0">
		    				<tr>
		    				 	<td ><font color=red size=4>Here you can find best laptop
		    				 	 						brands like Hp, Dell, acer,
		    				 	 						Lenovo,and many more. With easy
		    				 	 					    navigation andeasy comparison 
		    				 	 					    for specs and features,You can
		    				 	 					    now buy laptops online from
		    				 	 					    comfort of your home.</font> </td>
		    				</tr>
		    				    
		    				</table></td></tr>
		    				<tr>
		    			<td height="201"><table width="243" height="180" border="0">
		    				<tr>
		    				 <td width="180" height="300"><img src="pimage/14.jpg" width=251 height=250 alt="Logo"/></td>
		    				 
		    				</tr>
		    				    <tr><td>
		    				 <p>For Admin</p>
		    				 <a href="adlogin.jsp"><img src="pimage/admin.jpg" height=50 width=50 ></a>
		    				 </td></tr>
		    				 
		    				</table></td></tr>
		    				
		    					</table></td>
		    				
		    				
<td><table width=725 height=684 border=0> 
<tr class="normal">
<td height=30><b>Best Price Laptop</b></td>
</tr>
<tr>
<td height=261><table width=714 height=258 border=0>
<tr>
<td width=228><table width=120 height=173 border=0 align=center>
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="20" >
<input name="buy" type="image" value="grand" src="pimage/asus4.jpg" width=114 height=140>
</form></td></tr>
</table>
 <p class="center1">Asus-GL552VX</p>
<p class="center1">$1,099.00</p>
</td>
<td width=240 class="center1" ><table width=117 height=173 border=0 align="center">
<tr>
<td width=111><form action="product.jsp">
<input type="hidden" name="product" value="16" >
<input name="buy" type="image" value="s4" src="pimage/hp4.jpg" width=100 height=140>
</form>
</td></tr>
</table>

<p>Hp-087TX</p>
<p>$749.00</p></td>
<td width=224><table width=120 height=173 border=0 align="center">
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="08" >
<input name="buy" type="image" value="g pro" src="pimage/leno4.png" width=104 height=145>
</form></td></tr>
</table>
<p class="center1">Lenovo(i7)</p>
<p class="center1">$729.00</p>
</td>
</tr>  
</table></td></tr>
<tr class="normal">
<td height=31><b>Good Laptop</b> </td>
</tr>
<tr>
<td height=261><table width=714 height=258 border=0>
<tr>
<td width=228><table width=120 height=173 border=0 align=center>
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="02" >
<input name="buy" type="image" value="grand" src="pimage/dell2.jpg" width=114 height=140>
</form></td></tr>
</table>
 <p class="center1">Dell-Inspiron</p>
<p class="center1">$459.00</p>
</td>
<td width=240 class="center1" ><table width=117 height=173 border=0 align="center">
<tr>
<td width=111><form action="product.jsp">
<input type="hidden" name="product" value="06" >
<input name="buy" type="image" value="grand" src="pimage/leno3.jpg" width=100 height=140>
</form>
</td></tr>
</table>

<p>Lenovo(i3)</p>
<p>$385.00</p></td>
<td width=224><table width=120 height=173 border=0 align="center">
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="11" >
<input name="buy" type="image" value="grand" src="pimage/acer3.png" width=104 height=140>
</form></td></tr>
</table>
<p class="center1">Acer(i5)</p>
<p class="center1">$620.00</p>
</td>
</tr>  
</table></td></tr>
<tr class="normal">
<td height=27><b>Budget Laptop</b></td>
</tr>
<tr>
<td height=261><table width=714 height=258 border=0>
<tr>
<td width=228><table width=120 height=173 border=0 align=center>
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="01" >
<input name="buy" type="image" value="grand" src="pimage/dell1.jpg" width=114 height=140>
</form></td></tr>
</table>
 <p class="center1">Dell-Inspiron3552-80pp</p>
<p class="center1">$289.00</p>
</td>
<td width=240 class="center1" ><table width=117 height=173 border=0 align="center">
<tr>
<td width=111><form action="product.jsp">
<input type="hidden" name="product" value="05" >
<input name="buy" type="image" value="grand" src="pimage/leno1.png" width=100 height=140>
</form>	
</td></tr>
</table>

<p>Lenovo-Ideapad110(Celeron)</p>
<p>$289.00</p></td>
<td width=224><table width=120 height=173 border=0 align="center">
<tr>
<td><form action="product.jsp">
<input type="hidden" name="product" value="13" >
<input name="buy" type="image" value="grand" src="pimage/hp1.jpg" width=104 height=120>
</form></td></tr>
</table>
<p class="center1">Hp-14-AM006TU</p>
<p class="center1">$295.00</p>
</td>
</tr>  
</table></td></tr>
</table></td> 
 
 </tr>
</table>
</body>
</html> 