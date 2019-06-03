import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

@WebServlet("/adminLoginCheck")
public class adminLoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public adminLoginCheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException , ClassCastException{
		
		doGet(request, response);
		
		String username = request.getParameter("ad_log_uname");
		String pass = request.getParameter("ad_log_pw");

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();			
			
			String query = "select * from admin_reg where (ad_uname = '" + username + "' OR admin_email = '"+ username +"') and ad_pw = '" + pass + "'";
			ResultSet myRs = myStmt.executeQuery(query);
			
			if (myRs.next()) 
			{	
				String query2 = "insert into loginlog(username, time) values ('"+ username + "', NOW())";
				myStmt.executeUpdate(query2);

				HttpSession session = request.getSession(true);
				session.setAttribute("tempUserAdmin", username);
				
				JOptionPane.showMessageDialog (null, "Login Successful", "Login", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("dashboard.jsp").forward(request,response);
			} 
			else 
			{
				request.getRequestDispatcher("adminLogin.jsp").forward(request,response);
				JOptionPane.showMessageDialog (null, "Invalid User Credentials", "Login Error", JOptionPane.ERROR_MESSAGE);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
