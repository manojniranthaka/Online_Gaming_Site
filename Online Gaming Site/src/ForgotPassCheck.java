

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
import javax.swing.JOptionPane;

/**
 * Servlet implementation class ForgotPassCheck
 */
@WebServlet("/ForgotPassCheck")
public class ForgotPassCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException , ClassCastException{
		String username = request.getParameter("forg_uname");
		String seqQuestion = request.getParameter("questionType");
		String seqAnwser = request.getParameter("seqAnwser");
		String email = request.getParameter("forg_email");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			String query = "select * from user where username = '" + username + "' and secQuestion = '" + seqQuestion + "' and secAnwser ='" + seqAnwser + "'";
			ResultSet myRs = myStmt.executeQuery(query);
			
			if(myRs.next())
			{
				

				request.setAttribute("mail", email);
				request.getRequestDispatcher("resetPassword.jsp").forward(request,response);
				JOptionPane.showMessageDialog (null, "Security verification passed Successfully, Enter your new Password!", "Feedback", JOptionPane.INFORMATION_MESSAGE);
				
						
			}
			else
			{
				
				request.getRequestDispatcher("mailIdentify.jsp").forward(request,response);
				JOptionPane.showMessageDialog (null, "Invalid answer, Please try again!", "Feedback", JOptionPane.ERROR_MESSAGE);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
