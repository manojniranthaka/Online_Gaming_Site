<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>GameFever.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/tabs.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">

</head>
<body background="images/tomb1.png">

	
	
	<center>
		<div class="back-rec" style="width: 50%; height: auto; margin-top: 5%;">
		
			<form action="forgotPassword.jsp" name = "forgotpass_form" method = "post" style="margin: 20px;">
				<fieldset>
					<legend class="log">Member Login - Forget Password</legend>
						<br><br><br>

						 

						 <p class="form_title" style="font-size: 17px;">Enter your account Email</p>
						  
							
						 <input type = "email" name = "answer_mail" class="input_txt" placeholder="email" required="required">
						 <br><br>
						 <input type="submit" value="Proceed" class="sub_btn">
						 <br><br>
						 </p></a>
							    
						<a href = "login.jsp"><img src="images/logo.png" width="320px" height="120px" style="margin: 0px; padding: 0px;"></a>

				</fieldset>


					<p align = "center" style = "font-size : 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b><p>						  
			</form>


		</div>
	</center>
		
	
<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet res = null;
		ResultSet res2 = null;
		Statement stmt2 = null;
		String res_ID;
		String relID;
		
		String mailUser = request.getParameter("answer_mail");
	
		
		
	
	
%>





			
	


</body>
</html>