<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>  


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% 	if ( session.getAttribute("tempUserAdmin") == null) 
	{
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>GameFever.com</title>

	

	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/tabs.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" type="text/css" href="css/add.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body background="images/tomb1.png">


	
	<center>
		<div class="back-rec1">
		
	<% try{
		String u = request.getParameter("u").toString();

		Class.forName("com.mysql.jdbc.Driver");
		Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
		Statement myStmt = myConn.createStatement();
		String query = "Select * from game where gameID = '"+u+"'";
		ResultSet myRs = myStmt.executeQuery(query);
		
		while(myRs.next())
		{
	%>	
		
			<center>
			<form name = "game" action="updateGame?u=<%= myRs.getString("gameID")%>" method = "post" >
				<fieldset style = "margin-top : 10px;">
					<legend class="log"><h3 style = "font-size : 30px; font-weight:bold; width:400px;">Update Games</h3></legend>

						<table class="regis_frm" style = "padding:10px; border-style:solid 1px; ">
						
							<tr>
								<td align = "center"><p class="form_title" style="font-size: 17px;">Game name</p>
						 			<input type="text" name="game_name" class="input_txt" value = "<%=myRs.getString("name") %>" required="required">
						 		</td>
						 		
						 		<td align = "center"><p class="form_title" style="font-size: 17px;">Title</p>
						 			<input type="text" name="game_title" class="input_txt" value = "<%=myRs.getString("title") %>" required="required">
						 		</td>
									
								
								<td align = "center"><p class="form_title" style="font-size: 17px;">Genre</p>
						 			<input type="text" name="game_genre" class="input_txt" placeholder="" value = "<%=myRs.getString("genre") %>" required="required">
						 		</td>
									

									
						 			
						 			
								
							</tr>

							<tr>
							
								<td align = "center"><p class="form_title" style="font-size: 17px;">Developer</p>
						 			<input type="text" name="game_dev" class="input_txt" value = "<%=myRs.getString("developer") %>" required="required">
						 		</td>
						 		
						 		<td align = "center"><p class="form_title" style="font-size: 17px;">Publisher</p>
						 			<input type="text" name="game_pub" class="input_txt" placeholder="" value = "<%=myRs.getString("publisher") %>" required="required">
						 		</td>
						 		
						 		<td align = "center"><p class="form_title" style="font-size: 17px;">Release Date</p>
							       	<input type="text" name="game_rldate" class="input_txt" placeholder="" value = "<%=myRs.getString("rel_dte") %>" required="required">
							    </td>
							
								
									
			
									
						 			
						 			
							</tr>
							
							
						

                            <tr>	
                                   
                                <td align = "center"><p class="form_title" style="font-size: 17px;">Languages</p>
						 		<input type="text" name="game_languages" class="input_txt" placeholder="" value = "<%=myRs.getString("languages") %>" required="required">
						 		</td>
                                   
								<td align = "center"><p class="form_title" style="font-size: 17px;">File size </p>
						 			<input type="text" name="game_size" class="input_txt" value = "<%=myRs.getString("fileSize") %>" required="required">
						 		</td>
						 		
						 		<td align = "center"><p class="form_title" style="font-size: 17px;"> Downloads</p>
						 			<input type="text" name="game_down" class="input_txt" placeholder="" value = "<%=myRs.getString("downloads") %>" required="required">
						 		</td>
						
									
									
						 			
						 			
								
							    	
						
							</tr>

						
							

							<tr>
							
							<td align = "center"><p class="form_title" style="font-size: 17px;">Status</p>
						 			<select name="game_status" class="input_txt" placeholder="" required="required">
						 			<option value="Free"> Free </option>
  									<option value="Paid">Paid</option>
  									</select>
						 	</td>
						 	
						 	<td></td>
						 	
						 	
						 	<td align = "center"><p class="form_title" style="font-size: 17px;">Sub Category</p>						
									<select name ="game_subcat" class = "input_txt" value = "<%=myRs.getString("subCategory") %>">
  									<option value="Repack"> Repack </option>
  									<option value="Full">Full</option>
  									
                				 	
                		         	</select>
                		    </td>
					
					
								
									
						 			
						 		
						 		
						
							</tr>
							
						
							
							<tr>
					
									<td align = "center"><p class="form_title" style="font-size: 17px;">Mega Down</p>
						 			<input type="text" name="game_mdown" class="input_txt" placeholder="" value = "<%=myRs.getString("megaDown") %>" required="required">
						 			</td>
						 			
						 			<td align = "center"><p class="form_title" style="font-size: 17px;">UploadDown</p>
						 			<input type="text" name="game_updown" class="input_txt" placeholder="" value = "<%=myRs.getString("uploadDown") %>" required="required">
						 			
						 			<td align = "center"><p class="form_title" style="font-size: 17px;">Driver Down</p>
						 			<input type="text" name="game_ddown" class="input_txt" placeholder="" value = "<%=myRs.getString("driveDown") %>" required="required"></td>
						 			</td>
						 			
						 			
								

									
							</tr>
							
							
							<tr>
									
									<td align = "center"><p class="form_title" style="font-size: 17px;">Screenshot 1</p>
						 			<input type="file" name="game_screen1" class="input_txt" required="required"></td>
						 			
						 			<td align = "center"><p class="form_title" style="font-size: 17px;">Screenshot 2</p>
						 			<input type="file" name="game_screen2" class="input_txt"  required="required"></td>
								    
									
									<td align = "center"><p class="form_title" style="font-size: 17px;">Screenshot 3</p>
						 			<input type="file" name="game_screen3" class="input_txt" placeholder="" required="required"></td>
					            	
					            		
					            	
									
								
							</tr>
							
							
							<tr>
					
								<td align = "center"><p class="form_title" style="font-size: 17px;">Screenshot 4</p>
						 			<input type="file" name="game_screen4" class="input_txt" required="required"></td>
							
						
						 
				            	
						
							</tr>
							
								<td align = "center" style = "padding-top:50px;"><p class="form_title" style="font-size: 17px;">System Requirements</p>
						 		<textarea name="game_req" class="input_txt_cmmnt" rows = "8" cols = "40" required="required">
							    </textarea></td>
							    
							    <td align = "center" style = "padding-top:50px;"><p class="form_title" style="font-size: 17px;">Description</p>
							   	<textarea name="game_description" class="input_txt_cmmnt" rows = "8" cols = "40" required="required">
							    </textarea></td>
							    
							    <td align = "center" style = "padding-top:50px;"><p class="form_title" style="font-size: 17px;">Install Note</p>
								<textarea name="game_installnote" class="input_txt_cmmnt" rows = "8" cols = "40" required="required">
								</textarea></td>
						
							</tr>

							<tr>
							
							<td></td>
								
								<td>
								<center>
								<input type="submit" value="Update" class="sub_btn" style ="margin:5%;" >
								<input type="reset" value="Reset" class="sub_btn" style ="margin:5%">
								</center>
								</td>
												
												
								<td></td>

							
							

							</tr>
							
							
								
							
						

							
					</table>
				
				
				

			<br><br>
			
								  
			</form>
			
		</center>
		
<%
			}
		}
	
		catch(Exception e){
		e.printStackTrace();
		}
%>

	<a href = "dashboard.jsp"><button align = "right" class = "sub_btn" style = " margin-top : 20px; width : 100% ; font-size : 15px;" >Proceed to Main Dashboard</button></a>

	<center>
		<img src="images/logo.png" width="320px" height="120px" style="margin: 0px; padding: 0px;"></center>
							
		</div>
		
			<p align = "center" style ="font-size: 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | ALL Rights Reserved</b></p>
		
		</center>

	






			
	


</body>
</html>