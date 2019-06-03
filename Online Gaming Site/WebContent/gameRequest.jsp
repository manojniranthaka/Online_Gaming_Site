<%
	String srch_gme = "%" + request.getParameter("srch_rqst") + "%";
%>

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 	if ( session.getAttribute("tempUserAdmin") == null) 
	{
		response.sendRedirect("adminLogin.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>GameFever.com</title>

	<link rel="stylesheet" type="text/css" href="css/tabs.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" type="text/css" href="css/add.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
		<style>
		.table, th, td {
    		
   			text-align: center;
   			
   			padding : 10px;
   			border : 2px solid;
		}
		
		.th1 { background-color : #66b0d3;
		}
	</style>

</head>
<body background="images/tomb1.png">


	
	<div class="back-rec">
		<div class="navbar">
		
			<ul>
			
			
					<div>
						
					   <a href = "gameRequest.jsp" style = "text-decoration:none; color : white"><center><h1 align = "" style="font-size: 25px; font-weight: bold; margin-top: 10px; ">Game Request Management</h1></center></a>
					    
					 
	 				</div>
	
					
	 				
			</ul>
			
			
		</div>

		<div>
			<% try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			
			String query;
			
			if(srch_gme.equals("%null%")) {
				
			query = "select * from req_game order by req_ID desc";
			
			}
			
			else if(srch_gme.equals("%%")) {
				query = "select * from req_game order by req_ID desc";
			}
			
			
			else {
				query = "select * from req_game where name like '"+ srch_gme +"' OR email like '"+ srch_gme +"' OR g_name like '"+ srch_gme +"' OR post_date like '"+ srch_gme +"' order by req_ID desc";
				
			}
			
			ResultSet myRs = myStmt.executeQuery(query);
			%>
			<br>
			
			<div align = "right">
		
			<form action = "gameRequest.jsp" method = "post">
			<input type = "text" name = "srch_rqst" style = "border:1px solid; height : 20px; margin-right:10px;">
			<button type = "submit" class = "sub_btn" style = "margin-right : 10px">Search</button>
			
				
			
			</form>
			<br>
		
			
			
			
			</div>	
			<table align="center" class = "game" style= "border-collapse: collapse; width:100%;font-size : 15px; margin-top: 10px;" cellpadding = 5px>
			
								
				<th class = "th1">Request ID</th>
				<th class = "th1">Name</th>
				<th class = "th1">Email</th>
				<th class = "th1">Requested Game</th>
				<th class = "th1">Message</th>
				<th class = "th1">Posted Date</th>
		<%		
			while(myRs.next())
			{
		%>		
				<tr>
					<td><%=myRs.getString("req_ID") %></td>
					<td><%=myRs.getString("name") %></td>
					<td><%=myRs.getString("email") %></td>
					<td><%=myRs.getString("g_name") %></td>
					<td><%=myRs.getString("message") %></td>
					<td><%=myRs.getString("post_date") %></br></br></td>
				</tr>
		<%
			}
		%>
			</table>
		<%
		}
		catch( Exception e) {
			e.printStackTrace();
		}
		%>
		
		<tr>
		<a href = "dashboard.jsp"><button align = "right" class = "sub_btn" style = " margin-top : 20px; width : 100% ; font-size : 15px;" >Proceed to Main Dashboard</button></a>
		</tr>
	</div>
	
	<center><img src="images/logo.png" width="320px" height="120px" style="margin: 0px; padding: 0px;"></center>

	</div></center>
	
	<p align = "center" style ="font-size: 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | ALL Rights Reserved</b></p>
</body>
</html>