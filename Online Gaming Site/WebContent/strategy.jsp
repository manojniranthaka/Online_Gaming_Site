<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		Statement stmt = null;
		ResultSet res = null;
		ResultSet res2 = null;
		Statement stmt2 = null;
		String res_ID;
		String relID;
	
		
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Horror Games</title>
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
		  		<li><a href="simulate.jsp">Simulation</a></li>
		  		<li><a href="sports.jsp">Sports</a></li>
		  		<li><a href="strategy.jsp">Strategy</a></li>
			</ul>
		</div>


			<div class="logo" style="float: left;">
				<img src="images/logo.png" width="320px" height="120px"><br>
				
			<form action="LogOutCheck" method="post">
    				<center>
    				<input type="submit" value="Logout" class="sub_btn" name = "lout" style = "width: 100; height : 30px; border-color: black;">
					<input type = "hidden" value = "lout" name = "sEnd">
					
					</center>
				
				</form>		

					<div class="tab-win1">
						<table class="related">

							<tr>
								<th>
									<p align="left">Related Games</p>
								</th>
							</tr>
							
							<%
								try { 
									stmt2=conn.createStatement();
									String sql2 ="SELECT * FROM game order by RAND() LIMIT 4";
									
									res2 = stmt2.executeQuery(sql2);
									while(res2.next()){
										
									//relID = res2.getString("gameID");
							%>

							<form action = "game.jsp" method = "post">
								
							<tr>
								<td>
									
									<center>
									<input type="image" src="<%=res2.getString("Screen1") %>" width="280px" height="130px" alt="Submit" />
									<input type = "hidden" name = "related_ID" value = "<%=res2.getString("gameID") %>">
									</center>
									
								</td>
								
							</tr>
							
							
							</form>
							<%
									}
								}
									
									catch (Exception e) {
										
										e.printStackTrace();
										
									}
							
							
							
							%>

							

						</table>

							
						


					
					</div>
			
			</div>

		<div class="tab-win" align="right">

			<%
				try { 
					stmt=conn.createStatement();
					String sql ="SELECT * FROM game where genre like '%strategy%' order by gameID desc";
					
					res = stmt.executeQuery(sql);
					while(res.next()) {
						
					
			
			
			%>






				<form action = "game.jsp" method = "post">
				<table class="games">
				
				
					<tr>
						<th>
							<p class="tab_head">Posted on : <%=res.getString("postDate") %></p>
						</th>
					</tr>

					<tr>
						<td  class="topic" style="padding: 20px; font-size: 25px;"><%=res.getString("name") %></td>
					</tr>

					<tr class="pict" >
						<td  class="pict" style="padding: 30px; font-size: 30px;">
							
							<center><img src="<%=res.getString("Screen1") %>" width="430px" height="220px"></center>

						</td>
					</tr>

					<tr class="cont">
						<td  class="cont" style="padding: 20px; font-size: 25px;">
							<p><font color = "red"><strong>Title</strong></font> : <%=res.getString("title") %></p>
							<p><font color = "red"><strong>Genre</strong></font> : <%=res.getString("genre") %></p>
							<p><font color = "red"><strong>Developer</strong></font> : <%=res.getString("developer") %></p>
							<p><font color = "red"><strong>Publisher</strong></font> : <%=res.getString("publisher") %></p>
							<p><font color = "red"><strong>Release Date</strong></font> : <%=res.getString("rel_dte") %></p>
							<p><font color = "red"><strong>Languages</strong></font> : <%=res.getString("languages") %></p>
							<p><font color = "red"><strong>File Size</strong></font> : <%=res.getString("fileSize") %></p>
							<p><font color = "red"><strong>Download</strong></font> : <%=res.getString("downloads") %></p>
							<input type = "hidden" name = "id" value = "<%=res.getString("gameID") %>">

							<button type ="submit" class="read_more" );">Read More >></button></a>
							
						</td>
					</tr>
				</table>
				</form>
			
				


				
			
			
		<% 
					}
				
				}
		
				catch (Exception e) {
					
					e.printStackTrace();
					
				}
		%>
		

	</div>
	</div>




	<p align = "center" style = "font-size : 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b><p>		
	






			
	


</body>
</html>