<%
	String srch_feedback = "%" + request.getParameter("srch_rqst") + "%";
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
						
					   <a href = "show_feedback.jsp" style = "text-decoration:none; color : white"><center><h1 align = "" style="font-size: 25px; font-weight: bold; margin-top: 10px; ">Member Feedback Management</h1></center></a>
					    
					 
	 				</div>
	
					
	 				
			</ul>
			
			
		</div>

		<div>
			<% try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			
			String query;
			
			if(srch_feedback.equals("%null%")) {
				
			query = "select * from feedback order by feed_ID desc";
			
			}
			
			else if(srch_feedback.equals("%%")) {
				query = "select * from feedback order by feed_ID desc";
			}
			
			
			else {
				query = "select * from feedback where feed_ID like '"+ srch_feedback +"' OR feed_name like '"+ srch_feedback +"' OR feedback like '"+ srch_feedback +"' OR feed_date like '"+ srch_feedback +"' order by feed_ID desc";
				
			}
			
			ResultSet myRs = myStmt.executeQuery(query);
			%>
			<br>
			
			<div align = "right">
		
			<form action = "show_feedback.jsp" method = "post">
			<input type = "text" name = "srch_rqst" style = "border:1px solid; height : 20px; margin-right:10px;">
			<button type = "submit" class = "sub_btn" style = "margin-right : 10px">Search</button>
			
				
			
			</form>
			<br>
		
			
			
			
			</div>	
			<table align="center" class = "game" style= "border-collapse: collapse; border-color:white; width:100%;font-size : 15px; margin-top: 10px;" cellpadding = 5px>
			
								
				<th class = "th1">Feedback ID</th>
				<th class = "th1">Guest Name</th>
				<th class = "th1">Feedback</th>
				<th class = "th1">Feedback Date</th>
				
		<%		
			while(myRs.next())
			{
		%>		
				<tr>
					<td><%=myRs.getString("feed_ID") %></td>
					<td><%=myRs.getString("feed_name") %></td>
					<td><%=myRs.getString("feedback") %></td>
					<td><%=myRs.getString("feed_date") %></br></br></td>
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