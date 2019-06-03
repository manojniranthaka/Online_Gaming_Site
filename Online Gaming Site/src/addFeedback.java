

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import javax.servlet.RequestDispatcher;




@WebServlet("/addFeedback")
public class addFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String name, message, query;
    Connection conn;
    Statement stmt;
    ResultSet res;
    DatabaseConnection dbconn;
	
    public addFeedback() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassCastException {
		
		doGet(request, response);
		try {
			
			
			
			dbconn = new DatabaseConnection();
			name =request.getParameter("feed_name");
			message = request.getParameter("feed_message");
			
			conn = dbconn.setConnection();
			stmt = conn.createStatement();
			query = "insert into feedback (feed_name, feedback, feed_date) values ('"+name+"', '"+message+"', NOW())";
			int i = stmt.executeUpdate(query);
			JOptionPane.showMessageDialog (null, "Feedback added Successfully..", "Feedback", JOptionPane.INFORMATION_MESSAGE);
			
		}
		
		catch(Exception ex) {
			
			request.setAttribute("Error", ex);
			JOptionPane.showMessageDialog (null, "Something went wrong, Please try again!", "Error", JOptionPane.ERROR_MESSAGE);
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		finally {
			
			
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			try {
			
				conn.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//out.close;
			
		}
		
	}

}
