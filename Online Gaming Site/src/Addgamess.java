

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.sql.*;




/**
 * Servlet implementation class Addgamess
 */
@WebServlet("/Addgamess")
public class Addgamess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addgamess() {
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
		// TODO Auto-generated method stub

	
		
		
		
		
		//String gameID = request.getParameter("game_gameID");
		
		String n1 = request.getParameter("game_name");
        String rld = request.getParameter("game_rldate");
		String pub = request.getParameter("game_pub");
		String s1 = request.getParameter("game_subcat");
		String d1 = request.getParameter("game_dev");	
		String t1 = request.getParameter("game_title");
		String g1 = request.getParameter("game_genre");
		String p1 = request.getParameter("game_pdate");
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
		
			try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
					Statement myStmt = myConn.createStatement();
					String query =  " INSERT INTO game(name,subcategory,title,genre,developer,publisher,rel_dte,description,systemReq,postDate,status,languages,fileSize,downloads,instNote,Screen1 ,Screen2,Screen3,Screen4,megaDown,driveDown,uploadDown ) VALUE ('"+n1+"','"+s1+"','"+t1+"','"+g1+"','"+d1+"','"+pub+"','"+rld+"','"+des+"','"+req+"',NOW(),'"+st1+"','"+la1+"','"+f1+"','"+dow+"','"+ins1+"','"+Sc1+"','"+Sc2+"','"+Sc3+"','"+Sc4+"','"+meg+"','"+dri+"','"+upd+"')";
							

					myStmt.executeUpdate(query);
					
					/*if(myRs.next())
					{
					
						
						response.sendRedirect("");
					}
					else
					{
						response.sendRedirect("");
					}
					*/
					response.sendRedirect("update and delete.jsp ");
					
				} catch (SQLException e) {
					
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					
					e.printStackTrace();
				}
				
			}

		}

