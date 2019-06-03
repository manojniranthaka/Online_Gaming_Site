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
	
	<% if (request.getAttribute("message") != null) 
	   {	
	%>
	        <script type="text/javascript">
				alert(" <%= request.getAttribute("message")%> ");
			</script>
	<%} 
	%>
	
	<center>
		<div class="back-rec" style="width: 50%; height: auto; margin-top: 5%;">
		
			<form name = "login_form" action="LoginCheck" method = "post" style="margin: 20px;">
				<fieldset>
					<legend class="log">Member Login</legend>

						 <p class="form_title" style="margin-top: 5%; font-size: 17px;">Username / Email</p>
						 <input type="text" name="log_uname" class="input_txt" placeholder="Username" required="required">

						 <p class="form_title" style="font-size: 17px;">Password</p>
						 <input type="password" name="log_pw" class="input_txt" placeholder="Password" required="required">

						 <br><br>
						 <input type="submit" value="Login" class="sub_btn">
						 <br><br>
						 <a href="mailIdentify.jsp" style="color:white; font-style: italic;"><p class="form_title" style="margin-bottom: 4%;">Forgot password
						 </p></a>
					
						 <br><br>
						 <a href="Register.jsp" style="color:white; font-style: italic;"><p class="form_title" style="margin-bottom: 4%;">Not Registered
						 </p></a>		    
							    
						<a href = "login.jsp"><img src="images/logo.png" width="320px" height="120px" style="margin: 0px; padding: 0px;"></a>
				</fieldset>	
				
					<p align = "center" style = "font-size : 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b><p>				  
			</form>
		</div>
	</center>
</body>
</html>