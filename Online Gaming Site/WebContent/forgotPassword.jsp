<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>    
<%@ page import="javax.swing.JOptionPane" %> 

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

	
			
	<%
	Connection conn = null;
	ResultSet res2 = null;
	Statement stmt2 = null;
	
	
	

	String f_mail = request.getParameter("answer_mail");

	if(f_mail == null) {
		response.sendRedirect("login.jsp");
	}
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
	}
	
	catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	
	
%>		

<%
			try { 
				stmt2=conn.createStatement();
				String sql2 ="SELECT * FROM user where email = '"+f_mail+"'";
		
				
				res2 = stmt2.executeQuery(sql2);
			
				
				if(res2.next()){		
				
					
				
						
										
									
%>

	
	<center>
		<div class="back-rec" style="width: 50%; height: auto; margin-top: 5%;">
		
			<form action="ForgotPassCheck" name = "forgotpass_form"  method = "post" style="margin: 20px;">
				<fieldset>
					<legend class="log">Member Login</legend>

						<center>
							<img width = "140px" height = "180px" border = "2" src = "<%=res2.getString("profilePic") %>" style = "margin-top:30px;">
						</center>

						 <p class="form_title" style="margin-top: 5%; font-size: 17px;">User email</p>
						 <input type="text" name="forg_email" class="input_txt" value="<%=res2.getString("email") %>" readonly>
						 
						 <p class="form_title" style="margin-top: 5%; font-size: 17px;">Username</p>
						 <input type="text" name="forg_uname" class="input_txt" value="<%=res2.getString("username") %>" readonly>

						 <p class="form_title" style="font-size: 17px;">Security Question</p>
						   <input type="text" name="questionType" class="input_txt" value="<%=res2.getString("secQuestion") %>" readonly>
						  </select> 
							
						 <input type = "text" name = "seqAnwser" class="input_txt" placeholder="Answer" required="required">
						 <br><br>
						 <input type="submit" value="Submit" class="sub_btn">
						 <br><br>
						 </p></a>
							    
						<a href = "login.jsp"><img src="images/logo.png" width="320px" height="120px" style="margin: 0px; padding: 0px;"></a>

				</fieldset>

				
				<p align = "center" style = "font-size : 15px;"><b>COPYRIGHT &copy GAMEFEVER 2018 | All Rights Reserved</b><p>							  
			</form>


		</div>
	</center>
	
<%
				}
				
				else {
					
					
					JOptionPane.showMessageDialog (null, "Invalid email. Please try again", "Feedback", JOptionPane.ERROR_MESSAGE);
					response.sendRedirect("mailIdentify.jsp");
				}
			}
			
				
				catch (Exception e) {
					
					e.printStackTrace();
					
				}

	
%>
		
	






			
	


</body>
</html>