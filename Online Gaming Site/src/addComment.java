

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


@WebServlet("/addComment")
public class addComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String name, message, email, query, game_ID;
    Connection conn;
    Statement stmt;
    ResultSet res;
    DatabaseConnection dbconn;
	
    public addComment() {
        super();
  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassCastException {
		
		doGet(request, response);
		
			try {
						
						
						
						dbconn = new DatabaseConnection();
						name = request.getParameter("cmnt_fname");
						message = request.getParameter("cmnt_comment");
						email = request.getParameter("cmnt_email");
						game_ID = request.getParameter("gme_ID");
						
						conn = dbconn.setConnection();
						stmt = conn.createStatement();
						query = "insert into comment (game_ID, name, email, message, dte_cmmnt) values ('"+game_ID+"', '"+name+"', '"+email+"', '"+message+"', CURDATE())";
						int i = stmt.executeUpdate(query);
						JOptionPane.showMessageDialog (null, "Comment added Successfully..", "Comment", JOptionPane.INFORMATION_MESSAGE);
						
					}
					
					catch(Exception ex) {
						
						request.setAttribute("Error", ex);
						JOptionPane.showMessageDialog (null, "Theres something went wrong!.. We'll be in touh later..", "Error", JOptionPane.ERROR_MESSAGE);
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
