import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import java.sql.*;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginCheck() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException , ClassCastException
	{

		String username = request.getParameter("log_uname");
		String pass = request.getParameter("log_pw");

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			
			String query1 = "select * from user where (username = '" + username + "' OR email = '"+username+"') and password = '" + pass + "'";
			ResultSet myRs = myStmt.executeQuery(query1);
					
			if (myRs.next()) 
			{	
				String query2 = "insert into loginlog(username, time) values ('"+ username + "', NOW())";
				myStmt.executeUpdate(query2);
				request.setAttribute("message","You have Sucessfully logged In");

				HttpSession session = request.getSession(true);
				session.setAttribute("tempUser", username);
				
				JOptionPane.showMessageDialog (null, "Login Successful", "Login", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("index.jsp").forward(request,response);
			} 
			else 
			{
				request.getRequestDispatcher("login.jsp").forward(request,response);
				JOptionPane.showMessageDialog (null, "Invalid User Credentials", "Login Error", JOptionPane.ERROR_MESSAGE);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
