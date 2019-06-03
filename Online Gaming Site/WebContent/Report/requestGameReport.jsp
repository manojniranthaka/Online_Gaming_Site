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
			String query = "select * from req_game";
			ResultSet myRs = myStmt.executeQuery(query);
			%>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>Game Request Non Parameterized</caption>	
				<th>Request ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Game Name</th>
				<th>Message</th>
				<th>Posted Date</th>
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
			<br><br>
			<form action = "requestGameReport.jsp" method = "post">
			<input type = "text" name = "srch" style = "border:1px solid; height : 20px; margin-right:10px;">
			<button type = "submit" class = "sub_btn" style = "margin-right : 10px">Search</button>
			</form>	
		<%
			String srch = request.getParameter("srch");  
			String query2;
			if((srch == null || (srch.equals("")))) {
				query2 = "select * from req_game  where req_ID = 20";
			}	
			else {
				query2 = "select * from req_game where req_ID like '%"+ srch +"%'";	
			}
			ResultSet myRs1 = myStmt.executeQuery(query2);
		
			while(myRs1.next())
			{
		%>
			</br></br>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>Game Request Table Parameterized</caption>	
				<th>Request ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Game Name</th>
				<th>Message</th>
				<th>Posted Date</th>
				
				<tr>
					<td><%=myRs1.getString("req_ID") %></td>
					<td><%=myRs1.getString("name") %></td>
					<td><%=myRs1.getString("email") %></td>
					<td><%=myRs1.getString("g_name") %></td>
					<td><%=myRs1.getString("message") %></td>
					<td><%=myRs1.getString("post_date") %></br></br></td>
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