package springbook.user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DConnectionMaker implements ConnectionMaker {
	
	private static String url = "jdbc:postgresql://localhost:5432/postgres";
	
	public Connection makeConnection() throws ClassNotFoundException,
			SQLException {
		Class.forName("org.postgresql.Driver");
		Connection c = DriverManager.getConnection(url, "postgres","admin");
		return c;
	}
}
