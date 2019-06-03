<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>  

<% 	if ( session.getAttribute("tempUserAdmin") == null) 
	{
		response.sendRedirect("adminLogin.jsp");
	}
%>

<%
		DatabaseConnection conn;
		Statement stmt;
		ResultSet res;
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!--   <%@page import="dbconnect.*"%>-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/tabs.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" type="text/css" href="css/add.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Games</title>
	
	<style>
		.game th { background-color : #66b0d3;
				 	height : 50px;
				 	border-top-left-radius : 5px;
		}
		
		
		.show_games_admin{
					padding-left : 5px;
					padding-right :  5px;
		}
		
		
	</style>

</head>
<body background="images/tomb1.png" >


	<center><div class="back-rec1" style = "width : 100%; margin-top : 50px;">
	
					<table align ="center">
		 <tr><td style="font-size: 25px; color: white; "><h2 align="center" style = "margin-top : 30px; margin-bottom: 30px"><b>Manage Games</b></h2></td></tr>
	</table>
	

		
		<table align="center">
	

	<tr>
		 <td><a href="update and delete.jsp"><input name="back"style="margin-right:50px;color: white; background-color: #66b0d3; border: 8px solid #66b0d3; border-radius: 5px;"type="button" value="Show All Games"></a></td>
			
		<td><form action="update and delete.jsp" method="post"><input style="margin-right:5px;width:250px; height : 30px; margin-right : 20px; border: 1px solid black; border-radius:5px" type="text" name="s1" ><input  name="add"style="margin-right:50px;color: white; background-color: #66b0d3; border:8px solid #66b0d3; border-radius: 5px;margin-bottom : 50px;"type="submit" value="Search"></form></td>	
		  <td><a href="Add games.jsp"><input name="add" class = "gme_mgt" style="color: white; background-color: #66b0d3; border: 8px solid #66b0d3; border-radius: 5px;"type="button" value="Add a Game"></a></td>
			

	</tr>
			
	
	
	
</table>
	
<hr width="100%" align="center">



	<div style="color: white; font-family: 'Calibri'; padding-left: 0px;margin-top : 50px;">
		<table border=2 align="center" class = "game" style= "border-collapse: collapse; width:100%;font-size : 18px" cellpadding = 5px>




			<tr>
				<th>Game ID</th>
				<th>Game Name</th>
				<th>Sub Category</th>
				
				<th>Genre</th>
				<th>Developer</th>
				<th>Publisher</th>
				<th>Release Date</th>
			
				<th>Post Date</th>
				
			
				<th>File Size</th>
				
				
				
				
				
				
				
				
	<%
					try {

						DatabaseConnection db = new DatabaseConnection();
						
						String search=request.getParameter("s1");			
						String query;
						if(search!=null){
							query="select * from game where gameID like'%"+search+"%'or name like '%"+search+"%' or subCategory like '%"+search+"%' or title like '%"+search+"%' or genre like '%"+search+"%' or developer like '%"+search+"%'or publisher like '%"+search+"%'";
						}
						else{

							 query = "select * from game";
						}

						db.res = db.stmt.executeQuery(query);

						while (db.res.next()) {
						
				
	%>
				
				
			<tr>
				<td class = "show_games_admin" align="center"><%=db.res.getString("gameID")%></td>
				<td class = "show_games_admin" align="center"><%=db.res.getString("name")%></td>
				<td class = "show_games_admin" align="center"><%=db.res.getString("subCategory")%></td>
				
				<td class = "show_games_admin" align="center"><%=db.res.getString("genre")%></td>
				<td class = "show_games_admin" align="center"><%=db.res.getString("developer")%></td>
				<td class = "show_games_admin" align="center"><%=db.res.getString("publisher")%></td>
				<td class = "show_games_admin" align="center"><%=db.res.getString("rel_dte")%></td>
				
				<td class = "show_games_admin" align="center"><%=db.res.getString("postDate")%></td>
				
			
				<td class = "show_games_admin" align="center"><%=db.res.getString("fileSize")%></td>
			
			
				<td class = "show_games_admin" align="center"><img width=100px height=100px src="<%=db.res.getString("Screen1")%>"></td>
			
			
				
			
<td align="center"><a href="update.jsp?u=<%=db.res.getString("gameID")%>"><input type ="submit" name="update" style="color: white; background-color: blue; border: 2px solid blue; margin-left: 8px; margin-right:8px;border-radius: 5px;"type="button"  value="Update"></a></td>
				<td align="center"><form name="Delete_game" method="post" action="Delete_game?u=<%= db.res.getString("gameID")%>"><input name="delete"style="color: white; background-color: red; border: 2px solid red; border-radius: 5px; margin-left: 8px;margin-right:8px"type="submit" value="Delete"> </form></td>



			</tr>

			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
				}
	
			%>




		</table>
		
		<tr>
		<a href = "dashboard.jsp"><button align = "right" class = "sub_btn" style = " margin-top : 20px; width : 100% ; font-size : 15px;" >Proceed to Main Dashboard</button></a>
		</tr>


	<center><img src="images/logo.png" width="320px" height="120px" style="margin: 0px; padding: 0px;"></center>

	</div></center>
	
	<p align = "center" style ="font-size: 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | ALL Rights Reserved</b></p>
	
		
	


</body>
</html>