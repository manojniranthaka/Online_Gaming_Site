

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class requestAdd
 */
@WebServlet("/requestAdd")
public class requestAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String name, email, g_name, message, query;
    Connection conn;
    Statement stmt;
    ResultSet res;
    DatabaseConnection dbconn;
    
    
    public requestAdd() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassCastException {
		
		doGet(request, response);
		
try {
			
			
			
			dbconn = new DatabaseConnection();
			name = request.getParameter("nme_rqst_gme");
			email = request.getParameter("email_rqst_gme");
			g_name = request.getParameter("gme_nme_rqst_gme");
			message = request.getParameter("comment_rqst_gme");
			
			conn = dbconn.setConnection();
			stmt = conn.createStatement();
			query = "insert into req_game (name, email, g_name, message, post_date) values ('"+name+"', '"+email+"', '"+g_name+"', '"+message+"', NOW())";
			int i = stmt.executeUpdate(query);
			
			JOptionPane.showMessageDialog (null, "Thanks for your request! We'll be in touch..", "Message", JOptionPane.INFORMATION_MESSAGE);
			//RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			
		}
		
		catch(Exception ex) {
			
			request.setAttribute("Error", ex);
			JOptionPane.showMessageDialog (null, "Theres something went wrong!! We'll be in touch later", "Feedback", JOptionPane.ERROR_MESSAGE);
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
			
			
			RequestDispatcher rd = request.getRequestDispatcher("request_gme.jsp");
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
