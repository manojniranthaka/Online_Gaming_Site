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
			String query = "select * from loginlog";
			ResultSet myRs = myStmt.executeQuery(query);
			%>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>Login Log Table Non Parameterized</caption>	
				<th>Log ID</th>
				<th>Username</th>
				<th>Time</th>
			<% 
			while(myRs.next())
			{
		%>
				<tr>
					<td><%=myRs.getString("logID") %></td>
					<td><%=myRs.getString("username") %></td>
					<td><%=myRs.getString("time") %></br></br></td>
				</tr>
		<%
			}
		%>
			</table>
			<br><br>
			<form action = "loginLogReport.jsp" method = "post">
			<input type = "text" name = "srch" style = "border:1px solid; height : 20px; margin-right:10px;">
			<button type = "submit" class = "sub_btn" style = "margin-right : 10px">Search</button>
			</form>	
		<%
			String srch = request.getParameter("srch");  
			String query2;
			if((srch == null || (srch.equals("")))) {
				query2 = "select * from loginlog  where logID = 106";
			}	
			else {
				query2 = "select * from loginlog where logID like '%"+ srch +"%'";	
			}

			ResultSet myRs1 = myStmt.executeQuery(query2);
		
			while(myRs1.next())
			{
		%>
			</br></br>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>Login Log Table Parameterized</caption>	
				<th>Log ID</th>
				<th>Username</th>
				<th>Time</th>
		
				<tr>
					<td><%=myRs1.getString("logID") %></td>
					<td><%=myRs1.getString("username") %></td>
					<td><%=myRs1.getString("time") %></br></br></td>
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