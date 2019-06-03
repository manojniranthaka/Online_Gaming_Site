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
			String query = "select * from game";
			ResultSet myRs = myStmt.executeQuery(query);
			%>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>Game Table Non Parameterized</caption>	
				<th>Game ID</th>
				<th>Name</th>
				<th>SubCategory</th>
				<th>Title</th>
				<th>Genre</th>
				<th>Developer</th>
				<th>Publisher</th>
				<th>Released Date</th>
				<th>Description</th>
				<th>System Requirement</th>
				<th>Posted Date</th>
				<th>Status</th>
				<th>Language</th>
				<th>FileSize</th>
				<th>Downloads</th>
				<th>Installation Note</th>
				<th>MegaDown</th>
				<th>DriveDown</th>
				<th>UploadDown</th>
			<% 
			while(myRs.next())
			{
		%>
				<tr>
					<td><%=myRs.getString("gameID") %></td>
					<td><%=myRs.getString("name") %></td>
					<td><%=myRs.getString("subCategory") %></td>
					<td><%=myRs.getString("title") %></td>
					<td><%=myRs.getString("genre") %></td>
					<td><%=myRs.getString("developer") %></td>
					<td><%=myRs.getString("publisher") %></td>
					<td><%=myRs.getString("rel_dte") %></td>
					<td><%=myRs.getString("description") %></td>
					<td><%=myRs.getString("systemReq") %></td>
					<td><%=myRs.getString("postDate") %></td>
					<td><%=myRs.getString("status") %></td>
					<td><%=myRs.getString("languages") %></td>
					<td><%=myRs.getString("fileSize") %></td>
					<td><%=myRs.getString("downloads") %></td>
					<td><%=myRs.getString("instNote") %></td>
					<td><%=myRs.getString("megaDown") %></td>
					<td><%=myRs.getString("driveDown") %></td>
					<td><%=myRs.getString("uploadDown") %></br></br></td>
				</tr>
		<%
			}
		%>
			</table>
			<br><br>
			<form action = "gameReport.jsp" method = "post">
			<input type = "text" name = "srch" style = "border:1px solid; height : 20px; margin-right:10px;">
			<button type = "submit" class = "sub_btn" style = "margin-right : 10px">Search</button>
			</form>
		<%
			String srch = request.getParameter("srch");  
			String query2;
			if((srch == null || (srch.equals("")))) {
				query2 = "select * from game  where gameID = 2";
			}	
			else {
				query2 = "select * from game where gameID like '%"+ srch +"%'";	
			}		
			ResultSet myRs1 = myStmt.executeQuery(query2);
		
			while(myRs1.next())
			{
		%>
			</br></br>
			<table border=2 align="center" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>
			<caption>Game Table Parameterized</caption>	
					<th>Game ID</th>
				<th>Name</th>
				<th>SubCategory</th>
				<th>Title</th>
				<th>Genre</th>
				<th>Developer</th>
				<th>Publisher</th>
				<th>Released Date</th>
				<th>Description</th>
				<th>System Requirement</th>
				<th>Posted Date</th>
				<th>Status</th>
				<th>Language</th>
				<th>FileSize</th>
				<th>Downloads</th>
				<th>Installation Note</th>
				<th>MegaDown</th>
				<th>DriveDown</th>
				<th>UploadDown</th>
		
				<tr>
					<td><%=myRs1.getString("gameID") %></td>
					<td><%=myRs1.getString("name") %></td>
					<td><%=myRs1.getString("subCategory") %></td>
					<td><%=myRs1.getString("title") %></td>
					<td><%=myRs1.getString("genre") %></td>
					<td><%=myRs1.getString("developer") %></td>
					<td><%=myRs1.getString("publisher") %></td>
					<td><%=myRs1.getString("rel_dte") %></td>
					<td><%=myRs1.getString("description") %></td>
					<td><%=myRs1.getString("systemReq") %></td>
					<td><%=myRs1.getString("postDate") %></td>
					<td><%=myRs1.getString("status") %></td>
					<td><%=myRs1.getString("languages") %></td>
					<td><%=myRs1.getString("fileSize") %></td>
					<td><%=myRs1.getString("downloads") %></td>
					<td><%=myRs1.getString("instNote") %></td>
					<td><%=myRs1.getString("megaDown") %></td>
					<td><%=myRs1.getString("driveDown") %></td>
					<td><%=myRs1.getString("uploadDown") %></br></br></td>
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