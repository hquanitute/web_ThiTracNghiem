package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;

public class ConnectDB 
{
	
	public ConnectDB() {
		super();
	}
	public ConnectDB(Connection conn) {
		super();
		this.conn = conn;
	}
	private Connection conn;
	public Connection Connect(String username,String pass) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		String dbName="web";
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		    try {
				conn =
				   DriverManager.getConnection("jdbc:mysql://localhost:3306/web?autoReconnect=true&useSSL=false", "cauhoi", "123");
			} catch (SQLException ex) {
			    System.out.println("SQLException: " + ex.getMessage());
			    System.out.println("SQLState: " + ex.getSQLState());
			    System.out.println("VendorError: " + ex.getErrorCode());
			}
			return conn;


	}
}
