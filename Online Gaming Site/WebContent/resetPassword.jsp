<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	String user_mail = (String)request.getAttribute("mail");    

	Connection conn = null;
	ResultSet res2 = null;
	Statement stmt2 = null;
	
	
	String f_mail = request.getParameter("answer_mail");
	
	if(user_mail == null) {
		response.sendRedirect("login.jsp");
	}
	
	else {
		
	
	
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			}
			
			catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
	
	    
    
%>
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

	<h3><%=user_mail %></h3>
	
<%
			try { 
				stmt2=conn.createStatement();
				String sql2 ="SELECT * FROM user where email = '"+user_mail+"'";
				
				res2 = stmt2.executeQuery(sql2);
				while(res2.next()){				
										
									
%>
	
	
	
	<center>
		<div class="back-rec" style="width: 50%; height: auto; margin-top: 5%;">
		
			<form name = "resetpass_form" action="resetPasswordCheck" method = "post" style="margin: 20px;">
				<fieldset>
					<legend class="log">Member Login - Reset Password</legend>

						 <p class="form_title" style="margin-top: 5%; font-size: 17px;">User Email</p>
						 <input type="text" name="reset_mail" class="input_txt" value = "<%=res2.getString("email") %>" required="required" readonly>

						 <p class="form_title" style="font-size: 17px;">Password</p>
						 <input type="password" name="reset_pw1" class="input_txt" placeholder="Password" required="required">
						 
						 <p class="form_title" style="font-size: 17px;">Confirm Password</p>
						 <input type="password" name="reset_pw2" class="input_txt" placeholder="Confirm Password" required="required">
				
						 
						 <br><br>
						 <input type="submit" value="Proceed" class="sub_btn">
						 <br><br>
						 </p>
							    
						<a href = "login.jsp"><img src="images/logo.png" width="320px" height="120px" style="margin: 0px; padding: 0px;"></a>
						
						
				</fieldset>		
				
					<p align = "center" style = "font-size : 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b><p>			  
			</form>
		</div>
	</center>
	
	
<%
				}
			}
				
				catch (Exception e) {
					
					e.printStackTrace();
					
				}
	}

	
%>
	
	
</body>
</html>