package dbconnect;



import java.sql.*;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.Statement;

public class DatabaseConnection {
	
	
	public Connection conn;
	public Statement stmt;
	public ResultSet res;
	
	
	public DatabaseConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			stmt =conn.createStatement();
			
			
		}catch(Exception e) {
			
			System.out.println("Error");
			
		}
		
	}
}		
			

			
			
			
			



