

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import java.sql.*;

/**
 * Servlet implementation class RegisterStore
 */
@WebServlet("/RegisterStore")
public class RegisterStore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterStore() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassCastException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassCastException {
		String username    = request.getParameter("reg_uname");
		String pass        = request.getParameter("reg_pw");
		String fname       = request.getParameter("reg_fname");
		String lname       = request.getParameter("reg_lname");
		String dob         = request.getParameter("reg_dob");
		String address     = request.getParameter("reg_addr");
		String country     = request.getParameter("reg_country");
		String seqQuestion = request.getParameter("questionType");
		String regDate     = request.getParameter("reg_rgDate");
		String secAnswer   = request.getParameter("seqAnwser");
		String pass1 	   = request.getParameter("reg_pw");
		String pass2 	   = request.getParameter("reg_pw1");
		String email       = request.getParameter("reg_mail");
		String prof = "profilePics/" + request.getParameter("prof_pic");
		
		if(!(pass1.equals(pass2))) {
			JOptionPane.showMessageDialog (null, "Passwords does not Match", "Password Match Error", JOptionPane.ERROR_MESSAGE);
			response.sendRedirect("Register.jsp");
		}
		else {
			
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			Statement myStmt = myConn.createStatement();
			String query = "insert into user(username, email, fname, lname, dob, address, country, password, secQuestion ,reg_date, secAnwser, profilePic) values ('" + username + "','" + email + "','" + fname + "','" + lname + "','" + dob + "','" + address + "','" + country + "','" + pass1 + "','" + seqQuestion + "', NOW(), '" + secAnswer + "','" + prof + "')";
			int myRs = myStmt.executeUpdate(query);
			JOptionPane.showMessageDialog (null, "You have registered Successfully..", "Registration", JOptionPane.INFORMATION_MESSAGE);
			  response.sendRedirect("login.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			JOptionPane.showMessageDialog (null, "Username / Email already exist..", "Registration Error", JOptionPane.ERROR_MESSAGE);
			response.sendRedirect("Register.jsp");
			//e.printStackTrace();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		}
	}

}
