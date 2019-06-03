<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

<%
	if (session.getAttribute("tempUserAdmin") == null) {
		response.sendRedirect("adminLogin.jsp");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GameFeverCom - Dashboard</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/dash.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body background="images/tomb1.png">

	<div class="back-rec" style="padding: 0px; margin: 30px;">
	
	<form align = "right" action="adminLogout" method="post">
    						 <input type="submit" value="Logout" class="sub_btn" style = "width: 100px; height : 30px; margin-top: 20px; margin-right:40px; border-color: black;">
	</form>
	
		<center>
			<div>
				<img src="images/logo.png" width="250px" height="100px">
				<h1 style="font-size: 35px;">
					<b>Admin Dashboard</b>
				</h1>
			</div>
		</center>


	 				
	 				

		<table align="center" border="0" id="but_menu" width="auto"
			height="400px" cellpadding="0px" cellspacing="0px">
			<tr>
				<td colspan = "3">
					<!--<button class="btn_dash" style="background-color: darkred">
		                <br><i class="fa fa-user"
		                style="color:white;font-size: 30px; margin-top:10px;"></i></button>-->
				</td>
				<td><a href="gameRequest.jsp"><button class="btn_dash"
							style="background-color: orangered">
							Game Request Mgt <br>
							<i class="fa fa-bell-o"
								style="color: white; font-size: 30px; margin-top: 10px;  border-radius:10px; font-weight:bold"></i>
						</button></a></td>
						
						
						
				<td>
					<!--<button class="btn_dash" style="background-color: saddlebrown">
		                <br><i class="fa fa-check"
		                       style="color:white;font-size: 30px; margin-top:10px;"></i></button>-->
				</td>
			</tr>

			<tr>
				<td colspan="3"><a href="update and delete.jsp"><button
							class="btn_dash" style="background-color: darkslategray">
							Game Mgt <br>
							<i class="fa fa-gamepad"
								style="color: white; font-size: 30px; margin-top: 10px;"></i>
						</button></a></td>
				<td><a href="show_feedback.jsp"><button class="btn_dash"
							style="background-color: forestgreen">
							Feedback Mgt <br>
							<i class="fa fa-bar-chart-o"
								style="color: white; font-size: 30px; margin-top: 10px;"></i>
						</button></a></td>
				<td><a href = "showMembers.jsp"><button class="btn_dash" style="background-color: #0080ff">
						Member Mgt <br>
						<i class="fa fa-user-circle"
							style="color: white; font-size: 30px; margin-top: 10px;"></i>
					</button></a></td>
					
			</tr>

			<tr>
			<td colspan = "3">
					<!--<button class="btn_dash" style="background-color: darkred">
		                <br><i class="fa fa-user"
		                style="color:white;font-size: 30px; margin-top:10px;"></i></button>-->
				</td>


			<td><a href = "AdminLoginLog.jsp"><button class="btn_dash" style="background-color: #0080ff">
						Member Login Log <br>
						<i class="fa fa-sign-in"
							style="color: white; font-size: 30px; margin-top: 10px;"></i>
					</button></a></td>
			<tr>

		</table>

				

		<p align="center" style="font-size: 15px;">
			<b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b>
		<p>
			<br>
	</div>














</body>
</html>