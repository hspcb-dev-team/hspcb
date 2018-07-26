package org.hspcb.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectMYSQLServer {

	private  final String db_connect_string = "jdbc:mysql://localhost:3306/";
	private  final String db_userid = "root";
	private final String db_password = "Admin@1234";

	public Connection dbConnect() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(db_connect_string, db_userid, db_password);
			System.out.println("DB Connected");
		} catch (Exception e) {
			System.out.println(e);
		}

		return con;
	}
}
