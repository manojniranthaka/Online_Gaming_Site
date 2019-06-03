

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

import dbconnect.DatabaseConnection;

/**
 * Servlet implementation class update
 */
@WebServlet("/updat")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassCastException {
		
		
		DatabaseConnection db = new DatabaseConnection();
	
		
		try {
			

		
			String idd = request.getParameter("id");
			String n1 = request.getParameter("game_name");
	        String rld = request.getParameter("game_rldate");
			String pub = request.getParameter("game_pub");
			String s1 = request.getParameter("game_scat");
			String d1 = request.getParameter("game_developer");	
			String t1 = request.getParameter("game_title");
			String g1 = request.getParameter("game_genre");
			String p1 = request.getParameter("game_pdate");
			String st1 = request.getParameter("game_status");
		    String la1 = request.getParameter("game_languages");
			String des = request.getParameter("game_description");
	        String f1 = request.getParameter("game_size");
	        Part part1 = request.getPart("game_screen1");
	        Part part2 = request.getPart("game_screen2");
	        Part part3 = request.getPart("game_screen3");
	        Part part4 = request.getPart("game_screen4");
	        String fi1=extractFile(part1);
			String fi2=extractFile(part2);
			String fi3=extractFile(part3);                                             
			String fi4=extractFile(part4);
			String ins1 = request.getParameter("game_installnote");
		    String meg = request.getParameter("game_mdown");
			String dri = request.getParameter("game_ddown");
			String req = request.getParameter("game_req");
			String dow = request.getParameter("game_down");
			String upd = request.getParameter("game_updown");
	
		
		
		
		if(n1.equals("")||rld.equals("")||pub.equals("")||s1.equals("")||d1.equals("")||t1.equals("")||g1.equals("")||p1.equals("")||st1.equals("")||la1.equals("")||des.equals("")||f1.equals("")||ins1.equals("")||meg.equals("")||dri.equals("")||req.equals("")||dow.equals("")||upd.equals("")){
			JOptionPane.showMessageDialog(null, "A field is Empty.Please Re-enter");
			response.sendRedirect("update.jsp?u="+idd+"");
		}else {
		
		
		
		
		String savepath1="C:\\Users\\ASUS\\eclipse-workspace\\oop\\WebContent\\games\\"+fi1;

		String savepath2="C:\\Users\\ASUS\\eclipse-workspace\\oop\\WebContent\\games\\"+fi2;

		String savepath3="C:\\Users\\ASUS\\eclipse-workspace\\oop\\WebContent\\games\\"+fi3;

		String savepath4="C:\\Users\\ASUS\\eclipse-workspace\\oop\\WebContent\\games\\"+fi4;
	
		
		part1.write(savepath1);
		part2.write(savepath2);
		part3.write(savepath3);
		part4.write(savepath4 );
		

		db.stmt.executeUpdate("update game set name ='"+n1+"',subCategory='"+s1+"',title='"+t1+"',genre='"+g1+"',developer='"+d1+"',publisher='"+pub+"',rel_dte='"+rld+"' description='"+des+"',systemReq='"+req+"',postDate='"+p1+"',status='"+st1+"',languages='"+la1+"',fileSize='"+f1+"' downloads='"+dow+"',insNote='"+ins1+"',Screen1='"+part1+"' Screen2='"+part2+"',Screen3='"+part3+"',Screen4='"+part4+"',megaDown='"+meg+"',driveDown='"+dri+"',uploadDown ='"+upd+"'");
		JOptionPane.showMessageDialog(null, "Update Successful");
		response.sendRedirect("update and delete.jsp");
		}
		
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null,"Error : "+e);
			response.sendRedirect("update and delete.jsp");
			
		}
		 

		doGet(request, response);
	}
	

	private String extractFile(Part part) {
	String s=part.getHeader("content-disposition");
	String []games=s.split(";");
		for(String string :games) {
			if(string.trim().startsWith("filename")) {
				return string.substring(string.lastIndexOf("\\")+1,string.length()-1);
				
			}
			
		}
		
		return "";
		
	}
	
	

}
