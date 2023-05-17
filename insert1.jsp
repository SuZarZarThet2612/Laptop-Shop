<%@include file="dbconnect.jsp" %>

<%@ page import="java.io.*,java.util.*, javax.servlet.*" %> 
<%@ page import="javax.servlet.http.*" %>
 <%@ page import="org.apache.commons.fileupload.*" %>
  <%@ page import="org.apache.commons.fileupload.disk.*" %> 
  <%@ page import="org.apache.commons.fileupload.servlet.*" %>
 <%@ page import="org.apache.commons.io.output.*" %>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%> 
 <%@ page import="java.lang.*" %>
 

<%
 
	String id = "";	
	String modelname = "";
	String brand="";
	String price="";
	String cpu="";
	String ram="";
	String hdd="";
	String graphic="";
	String display="";
	String drive="";
	String img_url = "";
	
	
	

		 File file ; 
		   int maxFileSize = 8000 * 1024; 
		   int maxMemSize = 8000 * 1024;
		   ServletContext context = pageContext.getServletContext();
		   String filePath = "D:\\J2ee 34\\laptop\\pimage";
		 
		 
		   String contentType = request.getContentType(); 
		   if ((contentType.indexOf("multipart/form-data") >= 0))
		   {
			   DiskFileItemFactory factory = new DiskFileItemFactory(); 
		  
		   factory.setSizeThreshold(maxMemSize);
		  
		   factory.setRepository(new File("C:\\temp")); 
		   
		   ServletFileUpload upload = new ServletFileUpload(factory); 
		   
		   upload.setSizeMax( maxFileSize );
		
			 
			   List fileItems = upload.parseRequest(request); 
			  
			   Iterator i = fileItems.iterator(); 
			   
			   while ( i.hasNext () ) 
			   { FileItem fi = (FileItem)i.next();
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("id")){
					  id= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("modelname")){
					   modelname= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("brand")){
					   brand= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("price")){
					   price= fi.getString();
				   }
			   }
			   
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("cpu")){
					  cpu= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("ram")){
					   ram= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("hdd")){
					   hdd= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("graphic")){
					   graphic= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("display")){
					   display= fi.getString();
				   }
			   }
			   if( fi.isFormField()){
				   if(fi.getFieldName().equals("drive")){
					   drive= fi.getString();
				   }
			   }
			   if ( !fi.isFormField () ) { 
				
				   String fieldName = fi.getFieldName();
				   String fileName = fi.getName();
				
				   
				  if(fieldName.equals("img_file")){
					   boolean isInMemory = fi.isInMemory(); 
					   long sizeInBytes = fi.getSize(); 
					   if( fileName.lastIndexOf("\\") >= 0 )
					   { file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))) ; 
					   }else
					   { file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ; 
					   } 
					   fi.write( file ) ; 
					  // out.println("Uploaded Filename: " + filePath + fileName.substring( fileName.lastIndexOf("\\")) + "<br>");
					    img_url=fileName.substring( fileName.lastIndexOf("\\")+1);
					 
				  }
				  } 
			}
		 	
			  
			
			   out.println(img_url + "<br>");
			  
		   }
	
		
			   try{		
					String sqlquery="insert into pics(pic_id,url) values('" + id + "','" + img_url + "');";
			 st.executeUpdate(sqlquery);
					
			   }
		   catch(Exception ex){
						out.println(ex);
					}
		   try{		
				String sqlquery1="insert into features(id,colour,car_no,engine_power,engine_type,owner_phone,owner_name) values('" + id + "','" + cpu + "', '" +
										ram + "','" +hdd + "','" + graphic + "','" + display + "','" + drive + "');";
				int result = st.executeUpdate(sqlquery1);
				if(result == 1){
					//out.println(sqlquery);
					out.println("success.");
					//session.setAttribute("success","update_book");
					//response.sendRedirect("testing.jsp");
				}
		   
		   }
	   catch(Exception ex1){
					out.println(ex1);
				}
	   try{		
			String sqlquery2="insert into mtable(prod_id,model_name,brand,price) values('" + id + "','" + modelname + "','" + brand+ "','" + price + "');";
			int result = st.executeUpdate(sqlquery2);
			if(result == 1){
				//out.println(sqlquery);
				out.println("success.");
				//session.setAttribute("success","update_book");
				//response.sendRedirect("testing.jsp");
			}
	   
	   }
  catch(Exception e){
				out.println(e);
			}
	
	%>

