
import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
 import dbconnect.DatabaseConnection;
 		
/**
 * Servlet implementation class Delete_game
 */
@WebServlet("/Delete_game")
public class Delete_game extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_game() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		

try {
	DatabaseConnection db = new DatabaseConnection();
		response.setContentType("text/html;charset=UTF-8");
		
		
		String id=request.getParameter("u");
	
		int value=JOptionPane.showConfirmDialog(null, "Delete_game?");
		
		if(value==0) {
			db.stmt.executeUpdate("delete from game where gameID='"+id+"'");
			response.sendRedirect("update and delete.jsp");
		}
		else {
			response.sendRedirect("update and delete.jsp");
		}
		
}catch(Exception e) {
	JOptionPane.showMessageDialog(null,"Error : "+e);
	response.sendRedirect("update and delete.jsp");
}
		
		doGet(request, response);
	}

}

