package org.hspcb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectMYSQLServer {

	private String db_connect_string = "jdbc:mysql://localhost:3306/";
	private String db_userid = "root";
	private String db_password = "Admin@1234";

	public Connection dbConnect() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(db_connect_string, db_userid, db_password);
			System.out.println("DB Connected");
			// here sonoo is database name, root is username and password
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return con;
	}
}
