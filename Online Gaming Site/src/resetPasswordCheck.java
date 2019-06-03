import java.io.IOException;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

@WebServlet("/resetPasswordCheck")
public class resetPasswordCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public resetPasswordCheck() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException,
			ClassCastException {

		String usermail = request.getParameter("reset_mail");
		String pass1 = request.getParameter("reset_pw1");
		String pass2 = request.getParameter("reset_pw2");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			String query = "select * from user where email = '" + usermail + "'";
			ResultSet rs = myStmt.executeQuery(query);

			if (rs.next()) {
				if (pass1.equals(pass2)) {
					query = "update user set password = '" + pass1 + "' where email = '" + usermail + "'";
					int myRs = myStmt.executeUpdate(query);
					JOptionPane.showMessageDialog(null, "You have successfully changed your Password", "Succeed", JOptionPane.INFORMATION_MESSAGE);
					request.getRequestDispatcher("login.jsp").forward(request,response);
				} 
				else 
				{
					JOptionPane.showMessageDialog(null, "Passwords doesnt match. Try again!", "Error", JOptionPane.ERROR_MESSAGE);
					request.getRequestDispatcher("mailIdentify.jsp").forward(request, response);
				}
			} 
			else 
			{
				JOptionPane.showMessageDialog(null, "Something went wrong. Please try again!", "Error", JOptionPane.ERROR_MESSAGE);
				request.getRequestDispatcher("mailIdentify.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
