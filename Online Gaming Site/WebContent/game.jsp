<% 	if ( session.getAttribute("tempUser") == null) 
	{
		response.sendRedirect("login.jsp");
	}
%>

<%
  String game_ID = request.getParameter("id");
  String game_ID1 = request.getParameter("related_ID");
  String game_ID2 = request.getParameter("related_game_ID");
  
 
 %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>   

<%
		Connection conn = null;
		Statement stmt = null;
		Statement stmt2 = null;
		Statement stmt3 = null;
		ResultSet res = null;
		ResultSet res2 = null;
		ResultSet res3 = null;
		ResultSet res4 = null;
		Statement stmt4 = null;
		
	
			try {
				
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
				
				
			}
			
			
			catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
	
		
		
			
			if(game_ID == null && game_ID1 == null && game_ID2 == null) {
				response.sendRedirect("index.jsp");
			}
		
	
	
%>



 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>GameFever.com</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/tabs.css">
</head>
<body background="images/tomb1.png">
	</h1>
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
							%>

						<form action = "game.jsp" method = "post">
							<tr>
								<td>
									<center>
									<input type="image" src="<%=res2.getString("Screen1") %>" width="280px" height="130px" alt="Submit" />
									<input type = "hidden" name = "related_game_ID" value = "<%=res2.getString("gameID") %>">
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
			
			<%
				try { 
					stmt=conn.createStatement();
					String sql ="SELECT * FROM game where gameID = '"+game_ID+"' OR gameID = '"+game_ID1+"' OR gameID = '"+game_ID2+"'";
					
					res = stmt.executeQuery(sql);
					while(res.next()){
			%>

			<div class="tab-win" align="right">
				<table class="games" id="gamess">
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
							
							
						</td>
					</tr>

					<tr class="cont">
						<td  class="cont" style="padding: 20px; font-size: 25px;">
							
								
							<div class="tab-div">
							      <div class="tab">
							        <button class="tablinks" onclick="openTab(event, 'Description')" id="defaultOpen">Description</button>
							        <button class="tablinks" onclick="openTab(event, 'Screenshots')">Screenshots</button>
							        <button class="tablinks" onclick="openTab(event, 'System Requirements')">System Requirements</button>
							         <button class="tablinks" onclick="openTab(event, 'LinkDownload')">Link Download</button>
							        <button class="tablinks" onclick="openTab(event, 'Installation Tips')">Installation Tips</button>
							      </div>

							      <div id="Description" class="tabcontent">
							        
							        	<p><%=res.getString("description") %></p>
							      </div>

							      <div id="Screenshots" class="tabcontent">

							      	<br>
							        
							        <center>
							        	<img src="<%=res.getString("Screen2") %>" width="500px" height="280px">
									</center>

									<br>
							        
							        <center>
							        	<img src="<%=res.getString("Screen3") %>" width="500px" height="280px">
									</center>

									<br>
							        
							        <center>
							        	<img src="<%=res.getString("Screen4") %>" width="500px" height="280px">
									</center>

							 		<br>
							        
							        
							        
							       

							      </div>

							      <div id="System Requirements" class="tabcontent">
							        <p><%=res.getString("systemReq") %></p>
							      </div>

							      <div id="LinkDownload" class="tabcontent">


							        <h6>Mega Download >>  <a href = "<%=res.getString("megaDown") %>" class="link" target="_blank"> <p class="ins"><%=res.getString("name") %></p></a>  </h6>  

							        <hr class="line">

							         <h6>Google Drive Download >> <a href = "<%=res.getString("driveDown") %>" class="link" target="_blank"> <p class="ins"><%=res.getString("name") %></p></a>  </h6>  

							        <hr class="line">


							        <h6>Mega Download >> <a href = "<%=res.getString("uploadDown") %>" class="link" target="_blank"> <p class="ins"><%=res.getString("name") %></p></a>  </h6>  
 
							         
							       
							      </div>



							      <div id="Installation Tips" class="tabcontent">
							       <p><%=res.getString("instNote") %></p>
							      </div>

							      <script>
							      function openTab(evt, item) {
							          var i, tabcontent, tablinks;
							          tabcontent = document.getElementsByClassName("tabcontent");
							          for (i = 0; i < tabcontent.length; i++) {
							              tabcontent[i].style.display = "none";
							          }
							          tablinks = document.getElementsByClassName("tablinks");
							          for (i = 0; i < tablinks.length; i++) {
							              tablinks[i].className = tablinks[i].className.replace(" active", "");
							          }
							          document.getElementById(item).style.display = "block";
							          evt.currentTarget.className += " active";
							      }

							      // Get the element with id="defaultOpen" and click on it
							      document.getElementById("defaultOpen").click();
							      </script>
							</div>


							
						</td>
					</tr>
				</table>
				
				<% 
					}
				
				}
		
				catch (Exception e) {
					
					e.printStackTrace();
					
				}
		%>
		
		
		
		
		


				<!---Table 2 Comments -->

				<table class="games" id="commentss">
					<tr>
						<th>
							<p class="tab_head">Post a Comment</p>
						</th>
					</tr>
					
				
				
					
					
					
				<%
						try { 
							stmt=conn.createStatement();
							String sql ="SELECT * FROM game where gameID = '"+game_ID+"' OR gameID = '"+game_ID1+"' OR gameID = '"+game_ID2+"' ";
							
							stmt4=conn.createStatement();
							
						
							res = stmt.executeQuery(sql);
							while(res.next()){
							
								
					
				%>
				
				
				
				
				

					<tr>
						<td  class="topic" style="padding: 20px; font-size: 25px;">
						
							<p class="response"><font color = "#2980b9" style = "font-weight : bold; font-size : 20px;"><%=res.getString("title") %></font></p>

						</td>
					</tr>
					
				
				
				
				
				<%
								
							}
						}
				
						catch(Exception ex) {
						
						}
				
						
							
					
				%>
				
				
				
				<%
				
					String query4 = "SELECT count(*) as Count from comment where game_ID = '"+game_ID+"' OR game_ID = '"+game_ID1+"' OR game_ID = '"+game_ID2+"'";
					int count=0;
					try {
					    	res4 = stmt4.executeQuery(query4);
					    while(res4.next())
					        count=res4.getInt(1);
					} 
					
					catch (Exception e) {
						e.printStackTrace();
					}
					 
					finally {
						
					%>
						
						<tr>
						<td  class="topic" style="padding: 20px; font-size: 25px;">
						
							<p class="response"><%=count %> Comment(S)</p>

						</td>
						</tr>
						
					<% 	
					    
					}
				
				
					%>
				
				
				

					
					
					<tr class="pict" >
						<td  class="reply" style="padding: 30px; font-size: 30px;">
							
							<form name = "reply_form" action="addComment" method = "post">
							  <fieldset style="padding-left: : 20px;">
							    <legend><p class="reply_head">Leave a reply : </p></legend>

							    <p class="form_title">Your Name:</p>
							    <input type="text" name="cmnt_fname" class="input_txt" placeholder="Name" required="required">
							    
							    <p class="form_title">Your Email:</p>
							    <input type="Email" name="cmnt_email" class="input_txt" placeholder="email" required="required"> 

							    <p class="form_title">Your Message:</p>
							    <textarea name="cmnt_comment" class="input_txt_cmmnt" rows = "10" cols = "50" required="required">
							    </textarea>
							    
							    <input type = "hidden" name = "gme_ID" value = "<%=game_ID %>">
							    
							    <br>
							    
							    <input type="submit" value="Submit" class="sub_btn">
							    <input type="reset" value="Reset" class="sub_btn">
							  </fieldset>
							</form>

						</td>
					</tr>
					
					
					<%
								try { 
									stmt3=conn.createStatement();
									String sql3 ="SELECT * FROM comment where game_ID = '"+game_ID+"' OR game_ID = '"+game_ID1+"' OR game_ID = '"+game_ID2+"' order by cmmnt_ID desc";
									
									res3 = stmt3.executeQuery(sql3);
									while(res3.next()){	
											
									
					%>
						


					<tr class="pict" >
						<td  class="reply" style="padding: 30px; font-size: 30px;">
							
							
							  <fieldset style="padding-left: : 20px;">
							   

							    <p class="form_title" id="pst">Date Posted :</p>
							    <p class="rep"><%=res3.getString("dte_cmmnt") %></p>
							  
							    <p class="form_title" id="pst"> Guest Name : </p>
							    <p class="rep"><%=res3.getString("name") %> </p>
							  
							    <p class="form_title" id="pst"> Guest Message: </p>
							    <p class="rep"><%=res3.getString("message") %></p>
							    
							    
							   
							  </fieldset>
							
						</td>
					</tr>
					
					
					<% 
					
									
									}
								
								}
						
								catch (Exception e) {
									
									e.printStackTrace();
									
								}
					
					finally {
						conn.close();
					}
						%>
					
				</table>


				
			</div>
		


	</div>
		
	
	<p align = "center" style = "font-size : 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b><p>	





			
	


</body>
</html>