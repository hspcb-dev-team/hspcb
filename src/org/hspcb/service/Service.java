package org.hspcb.contoller;

import java.sql.*;

import org.hspcb.dao.ConnectMYSQLServer;

public class Service {

	public static boolean validate(String name, String pass) {
		boolean status = false;
		try {
			System.out.println("Getting DB Connection");
			ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
			Connection conn = connectMYSQLServer.dbConnect();

			PreparedStatement ps = conn.prepareStatement("select * from hspcb.USER_INFO where FirstName=? and LastName=?");
			ps.setString(1, name);
			ps.setString(2, pass);
			System.out.println("SQL Query: " + status);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			System.out.println("Status" + status);
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
