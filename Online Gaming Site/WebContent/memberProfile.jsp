<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<% if (session.getAttribute("tempUser") == null) 
    {	
    	response.sendRedirect("login.jsp");
	}	
%>	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>GameFever.com</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body background="images/tomb1.png">
	
	
	<div class="back-rec">
		<div class="navbar">
			<ul>
		  		<li><a href="index.jsp">Home</a></li>
			  		<div class="dropdown1">
					    <button class="dropb1">Index Releases</button>
					    <div class="drop-cont1">
					      <a href="full.jsp">Full Games</a>
					      <a href="repack.jsp">Repack Games</a>
					    </div>
	 				</div> 

	 				<div class="dropdown1">
					    <button class="dropb1">Request Here</button>
					    <div class="drop-cont1">
					      <a href="request_gme.jsp">Game Request</a>
					      <a href="feedback.jsp">Message / Feedback</a>
					    </div>
	 				</div> 
	 				
	 				<div class="dropdown1">
					    <a href = "memberProfile.jsp"><button class="dropb1">My Profile</button></a>
	 				</div>
	 				

	 				<input type="submit" name="srch_submit" class="btns" value="Search">
		  			<input type="text" name = "search" id="g_search">
			</ul>
		</div>

		<div class="navbar1">
			<ul>
				<li><a href="action.jsp">Action</a></li>
		  		<li><a href="adventure.jsp">Adventure</a></li>
		  		<li><a href="arcade.jsp">Arcade</a></li>
		  		<li><a href="fight.jsp">Fighting</a></li>
		  		<li><a href="puzzle.jsp">Puzzle</a></li>
		  		<li><a href="horror.jsp">Horror</a></li>
		  		<li><a href="platform.jsp">Platform</a></li>
		  		<li><a href="racing.jsp">Racing</a></li>
		  		<li><a href="simulate.jsp">Simulation</a></li>
		  		<li><a href="sports.jsp">Sports</a></li>
		  		<li><a href="strategy.jsp">Strategy</a></li>
			</ul>
		</div>
		
		<% try {
			String username = session.getAttribute("tempUser").toString();
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
		
			String query = "select * from user where username = '" + username + "' OR email = '" + username + "' ";
			ResultSet myRs = myStmt.executeQuery(query);
			
			while(myRs.next())
			{
		%>
		<center><table class="games" style = "width:80%; margin-top : 30px;">
				
				
					<tr>
						<th style = "background-color:gray; height : 10px;">
							<p class="tab_head" >My Profile
						</th>
					</tr>
					
					<tr class="cont">
						<td  class="cont" style="padding: 10px; ">
							<p style = "font-size: 20px; margin-left:30px; "><font color = "red"><strong></strong></font> Email : <font color = "#2980b9"><b><%=myRs.getString("email") %></b> </font></p>
							
						</td>
					</tr>		

					<tr>
						<td  class="topic" style="padding: 20px; font-size: 25px;">
						<center>
						<img width=200px height=250px  border="3" style = "border-color:  "src="<%=myRs.getString("profilePic") %>">
						</center>
						
					</tr>

					<tr class="cont">
						<td  class="cont" style="padding: 10px; ">
							<p style = "font-size: 20px; margin-left:30px; "><font color = "red"><strong></strong></font> Username : <font color = "#2980b9"><b><%=myRs.getString("username") %></b> </font></p>
							
						</td>
					</tr>		
			
					
					<tr class="cont">
						<td  class="cont" style="padding: 10px; ">
							<p style = "font-size: 20px; margin-left:30px; "><font color = "red"><strong></strong></font> First Name : <font color = "#2980b9"><b><%=myRs.getString("fname") %></b> </font></p>
							
						</td>
					</tr>		

					<tr class="cont">
						<td  class="cont" style="padding: 10px; ">
							<p style = "font-size: 20px; margin-left:30px; "><font color = "red"><strong></strong></font> Last Name : <font color = "#2980b9"><b><%=myRs.getString("lname") %></b> </font></p>
							
						</td>
					</tr>		
					
					<tr class="cont">
						<td  class="cont" style="padding: 10px; ">
							<p style = "font-size: 20px; margin-left:30px; "><font color = "red"><strong></strong></font> Date of Birth : <font color = "#2980b9"><b><%=myRs.getString("dob") %></b> </font></p>
							
						</td>
					</tr>		
					
					<tr class="cont">
						<td  class="cont" style="padding: 10px; ">
							<p style = "font-size: 20px; margin-left:30px; "><font color = "red"><strong></strong></font> Address : <font color = "#2980b9"><b><%=myRs.getString("address") %></b> </font></p>
							
						</td>
					</tr>		
					
					<tr class="cont">
						<td  class="cont" style="padding: 10px; ">
							<p style = "font-size: 20px; margin-left:30px; "><font color = "red"><strong></strong></font> Country : <font color = "#2980b9"><b><%=myRs.getString("country") %></b> </font></p>
							
						</td>
					</tr>		
					
					
					
					<tr class="cont">
						<td  class="cont" style="padding: 10px; ">
							<p style = "font-size: 20px; margin-left:30px; "><font color = "red"><strong></strong></font> Joined Since : <font color = "#2980b9"><b><%=myRs.getString("reg_date") %></b> </font></p>
							
						</td>
					</tr>		
					
		
				</table>
				</center>
		<%
			}
		}
		catch( Exception e) {
			e.printStackTrace();
		}
		%>
		
			<p align = "center" style = "font-size : 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b><p>		
</body>
</html>