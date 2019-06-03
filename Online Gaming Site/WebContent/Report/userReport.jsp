<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Report</title>

</head>
<body>
		<a href = "reportPanel.jsp">Go Back</a></br>
	
			<% try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			String query = "select * from user";
			ResultSet myRs = myStmt.executeQuery(query);
			%>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>User Table Non Parameterized</caption>	
				<th>User ID</th>
				<th>Username</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Date of Birth</th>
				<th>Address</th>
				<th>Country</th>
				<th>Registered Date</th>
				<th>Security Question</th>
				<th>Security Anwser</th>
				<th>Password</th>
			<% 
			while(myRs.next())
			{
		%>
				<tr>
					<td><%=myRs.getString("userID") %></td>
					<td><%=myRs.getString("username") %></td>
					<td><%=myRs.getString("fname") %></td>
					<td><%=myRs.getString("lname") %></td>
					<td><%=myRs.getString("dob") %></td>
					<td><%=myRs.getString("address") %></td>
					<td><%=myRs.getString("country") %></td>
					<td><%=myRs.getString("reg_date") %></td>
					<td><%=myRs.getString("secQuestion") %></td>
					<td><%=myRs.getString("secAnwser") %></td>
					<td><%=myRs.getString("password") %></br></br></td>
				</tr>
		<%
			}
		%>
			</table>
			<br><br>
			<form action = "userReport.jsp" method = "post">
			<input type = "text" name = "srch" style = "border:1px solid; height : 20px; margin-right:10px;">
			<button type = "submit" class = "sub_btn" style = "margin-right : 10px">Search</button>
			</form>	
		<%
			String srch = request.getParameter("srch");  
			String query2;
			if((srch == null || (srch.equals("")))) {
				query2 = "select * from user  where userID = 14";
			}	
			else {
				query2 = "select * from user where userID like '%"+ srch +"%'";	
			}
			ResultSet myRs1 = myStmt.executeQuery(query2);
		
			while(myRs1.next())
			{
		%>
			</br></br>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>User Table Parameterized</caption>	
				<th>User ID</th>
				<th>Username</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Date of Birth</th>
				<th>Address</th>
				<th>Country</th>
				<th>Registered Date</th>
				<th>Security Question</th>
				<th>Security Anwser</th>
				<th>Password</th>
		
				<tr>
					<td><%=myRs1.getString("userID") %></td>
					<td><%=myRs1.getString("username") %></td>
					<td><%=myRs1.getString("fname") %></td>
					<td><%=myRs1.getString("lname") %></td>
					<td><%=myRs1.getString("dob") %></td>
					<td><%=myRs1.getString("address") %></td>
					<td><%=myRs1.getString("country") %></td>
					<td><%=myRs1.getString("reg_date") %></td>
					<td><%=myRs1.getString("secQuestion") %></td>
					<td><%=myRs1.getString("secAnwser") %></td>
					<td><%=myRs1.getString("password") %></br></br></td>
				</tr>
		<% 		
			}
		}
		catch( Exception e) {
			e.printStackTrace();
		}
		%>
	</div>
</body>
</html>