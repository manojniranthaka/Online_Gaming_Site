

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class updateGame
 */
@WebServlet("/updateGame")
public class updateGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateGame() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException , ClassCastException{
		String n1 = request.getParameter("game_name");
        String rld = request.getParameter("game_rldate");
		String pub = request.getParameter("game_pub");
		String s1 = request.getParameter("game_subcat");
		String d1 = request.getParameter("game_dev");	
		String t1 = request.getParameter("game_title");
		String g1 = request.getParameter("game_genre");
		String st1 = request.getParameter("game_status");
	    String la1 = request.getParameter("game_languages");
		String des = request.getParameter("game_description");
        String f1 = request.getParameter("game_size");
		String Sc1 = "games/" + request.getParameter("game_screen1");
		String Sc2 = "games/" + request.getParameter("game_screen2");
		String Sc3 = "games/" + request.getParameter("game_screen3");                                               
		String Sc4 = "games/" + request.getParameter("game_screen4");
		String ins1 = request.getParameter("game_installnote");
	    String meg = request.getParameter("game_mdown");
		String dri = request.getParameter("game_ddown");
		String req = request.getParameter("game_req");
		String dow = request.getParameter("game_down");
		String upd = request.getParameter("game_updown");
		
		try{
			response.setContentType("text/html;charset=UTF-8");
			String id=request.getParameter("u");
		
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			String query = "update game " + 
							"set name = '" + n1 + 
					        "',subCategory = '" + s1 + 
							"',title = '" + t1 + 
							"',genre = '" + g1 + 
							"',developer = '" + d1 + 
							"',publisher = '" + pub + 
							"',rel_dte = '" + rld + 
							"',description = '" + des + 
							"',systemReq = '" + req +  
							"',status = '" + st1 + 
							"',languages = '" + la1 + 
							"',fileSize = '" + f1 + 
							"',downloads = '" + dow + 
							"',instNote = '" + ins1 + 
							"',Screen1 = '" + Sc1 + 
							"',Screen2 = '" + Sc2 + 
							"',Screen3 = '" + Sc3 + 
							"',Screen4 = '" + Sc4 + 
							"',megaDown ='" + meg + 
							"',driveDown = '" + dri + 
							"',uploadDown = '" + upd +
					        "' WHERE gameID = '" + id + "'";
							
			int myRs = myStmt.executeUpdate(query);
			JOptionPane.showMessageDialog (null, "The Game has Sucessfully Updated!", "Update", JOptionPane.INFORMATION_MESSAGE);
			request.getRequestDispatcher("update and delete.jsp").forward(request,response);
	}
	catch(Exception e){
		e.printStackTrace();
	}
	}

}
