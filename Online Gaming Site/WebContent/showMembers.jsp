<%
	String srch_member = "%" + request.getParameter("srch_rqst") + "%";
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


	<center>
	<div class="back-rec" style = "width:80%; float: left;">
		<div class="navbar">
		
			<ul>
					<div>						
					   <a href = "showMembers.jsp" style = "text-decoration:none; color : white"><center><h1 align = "" style="font-size: 25px; font-weight: bold; margin-top: 10px; ">Member Management</h1></center></a>
					</div>
			</ul>
			
			
		</div>

		<div>
			<% try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			
			String query;
			
			if((srch_member.equals("%null%")) || (srch_member.equals("%%"))) {
					query = "select * from user order by userID desc";
			}	
			else {
				query = "select * from user where userID like '"+ srch_member +"' OR username like '"+ srch_member +"' OR email like '"+ srch_member +"' OR fname like '"+ srch_member +"' OR lname like '"+ srch_member +"' OR dob like '"+ srch_member +"' OR address like '"+ srch_member +"' OR country like '"+ srch_member +"' OR reg_date like '"+ srch_member +"' order by userID desc";	
			}
			
			ResultSet myRs = myStmt.executeQuery(query);
			%>
			<br>
			
			<div align = "right">
		
			<form action = "showMembers.jsp" method = "post">
			<input type = "text" name = "srch_rqst" style = "border:1px solid; height : 20px; margin-right:10px;">
			<button type = "submit" class = "sub_btn" style = "margin-right : 10px">Search</button>
			</form>
			<br>
		
			
			
			
			</div>	
			<table align="center" class = "game" style= "border-collapse: collapse; width:100%;font-size : 15px; margin-top: 10px;" cellpadding = 5px>
			
								
				<th class = "th1">User ID</th>
				<th class = "th1">Email</th>
				<th class = "th1">First Name</th>
				<th class = "th1">Last Name</th>
				<th class = "th1">Date of Birth</th>
				<th class = "th1">Address</th>
				<th class = "th1">Country</th>
				<th class = "th1">Username</th>
				<th class = "th1">Reg Date</th>
				<th class = "th1">Member DP</th>
				
				
		<%		
			while(myRs.next())
			{
		%>		
				<tr>
					<td><%=myRs.getString("userID") %></td>
					<td><%=myRs.getString("email") %></td>
					<td><%=myRs.getString("fname") %></td>
					<td><%=myRs.getString("lname") %></td>
					<td><%=myRs.getString("dob") %></td>
					<td><%=myRs.getString("address") %></td>
					<td><%=myRs.getString("country") %></td>
					<td><%=myRs.getString("username") %></td>
					<td><%=myRs.getString("reg_date") %></td>
					<td><img height = "100px" width = "80px" src = "<%=myRs.getString("profilePic") %>"></br></br></td>
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

	</div>
	</center>
	
	<p align = "center" style ="font-size: 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | ALL Rights Reserved</b></p>
</body>
</html>