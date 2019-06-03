<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>   

<% 	if ( session.getAttribute("tempUser") == null) 
	{
		response.sendRedirect("login.jsp");
	}
%>

<%
		Connection conn = null;
		Statement stmt4 = null;
		ResultSet res4 = null;
	
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
		}
		
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
				
	
	
%>


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GameFever.com</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/tabs.css">
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
		  			
		  			<form action = "srch.jsp" method = "post">
	 				<input type="submit" name="srch_submit" class="btns" value="Search">
		  			<input type="text" name = "search" id="g_search">
		  			</form>
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
		  		<li><a href="simulation.jsp">Simulation</a></li>
		  		<li><a href="sports.jsp">Sports</a></li>
		  		<li><a href="strategy.jsp">Strategy</a></li>
			</ul>
		</div>


			<div class="logo">
				<img src="images/logo.png" width="320px" height="120px" style="float:left;">
			</div>

			<div class="tab-win" align="right">
				
				<table class="games" id="request_gme">
					<tr>
						<th>
							<p class="tab_head">Request a Game
						</th>
					</tr>
					
					

							

					<tr class="pict" >
						<td  class="reply" style="padding: 30px; font-size: 30px;">
							
							<form action="requestAdd" name = "game_rqst_form" method = "post">
							  <fieldset style="padding-left: : 20px;">
							    <legend><p class="reply_head">Game Request Form : </p></legend>

							    <p class="form_title">Your Name:</p>
							    <input type="text" name="nme_rqst_gme" class="input_txt" placeholder="Name" required="required">
							    
							    <p class="form_title">Your Email:</p>
							    <input type="Email" name="email_rqst_gme" class="input_txt" placeholder="email" required="required"> 

							    <p class="form_title">Game Name:</p>
							    <input type="text" name="gme_nme_rqst_gme" class="input_txt" placeholder="Game Name" required="required"> 

							    <p class="form_title">Your Message:</p>
							    <textarea name="comment_rqst_gme" class="input_txt_cmmnt" rows = "10" cols = "50">
							    </textarea>
							    
							    <br>
							    
							    <input type="submit" value="Request" class="sub_btn">
							    <input type="reset" value="Reset" class="sub_btn">
							  </fieldset>
							</form>

						</td>
					</tr>

					
				</table>


				
			</div>
		


	</div>
		
	


	<p align = "center" style = "font-size : 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b><p>	



			
	


</body>
</html>