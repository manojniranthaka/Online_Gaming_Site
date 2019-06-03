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
			String query = "select * from admin_reg";
			ResultSet myRs = myStmt.executeQuery(query);
			%>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>Admin Table Non Parameterized</caption>	
				<th>Admin ID</th>
				<th>Admin Name</th>
				<th>Admin Username</th>
				<th>Admin Password</th>
			<% 
			while(myRs.next())
			{
		%>
				<tr>
					<td><%=myRs.getString("admin_ID") %></td>
					<td><%=myRs.getString("ad_name") %></td>
					<td><%=myRs.getString("ad_uname") %></td>
					<td><%=myRs.getString("ad_pw") %></br></br></td>
				</tr>
		<%
			}
		%>
			</table>
			<br><br>
			<form action = "adminReport.jsp" method = "post">
			<input type = "text" name = "srch" style = "border:1px solid; height : 20px; margin-right:10px;">
			<button type = "submit" class = "sub_btn" style = "margin-right : 10px">Search</button>
			</form>	
		<%
			String srch = request.getParameter("srch");  
			String query2;
			if((srch == null || (srch.equals("")))) {
				query2 = "select * from admin_reg  where admin_ID = 1";
			}		
			else {
				query2 = "select * from admin_reg where admin_ID like '%"+ srch +"%'";	
			}
			
			ResultSet myRs1 = myStmt.executeQuery(query2);
		
			while(myRs1.next())
			{
		%>
			</br></br>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>Admin Table Parameterized</caption>	
				<th>Admin ID</th>
				<th>Admin Name</th>
				<th>Admin Username</th>
				<th>Admin Password</th>
		
				<tr>
					<td><%=myRs1.getString("admin_ID") %></td>
					<td><%=myRs1.getString("ad_name") %></td>
					<td><%=myRs1.getString("ad_uname") %></td>
					<td><%=myRs1.getString("ad_pw") %></br></br></td>
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