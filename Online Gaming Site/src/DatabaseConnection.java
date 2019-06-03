import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseConnection {

	Connection conn;
	Statement stmt;
	ResultSet res;
	
	public DatabaseConnection() {
		
	}
	
	
	
	public Connection setConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproject", "root", "");
			
		}
		
		catch(Exception ex) {
			
		}
		
		return conn;
	}
	
	
	
	
}
