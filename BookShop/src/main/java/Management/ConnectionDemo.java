package Management;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDemo {

	public  Connection getConnect() throws SQLException, ClassNotFoundException
	{
		
		Class.forName("oracle.jdbc.OracleDriver");

	
		Connection con= DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:ORCL","system","Pratik");
		
		return con;	
	
	}
	
}
