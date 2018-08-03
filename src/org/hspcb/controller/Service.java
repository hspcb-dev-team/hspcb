package org.hspcb.controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.hspcb.bean.UserData;
import org.hspcb.dao.ConnectMYSQLServer;

public class Service {

	public static boolean validate(String id, String pass) {
		boolean validStatus = false;
		try {
			System.out.println("Getting DB Connection");
			ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
			Connection conn = connectMYSQLServer.dbConnect();

			PreparedStatement ps = conn
					.prepareStatement("select * from hspcb.user_Login where EmployeeId=? and Password=?");
			ps.setString(1, id);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			validStatus = rs.next();
			System.out.println("Status" + validStatus);
		} catch (Exception e) {
			System.out.println(e);
		}
		return validStatus;
	}

	public static boolean updatePwd(String id, String pass) {
		boolean updateStatus = false;
		try {
			System.out.println("Getting DB Connection");
			ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
			Connection conn = connectMYSQLServer.dbConnect();
			String sqlQuery = "UPDATE hspcb.user_Login SET Password=?  where EmployeeId=?";
			PreparedStatement ps = conn.prepareStatement(sqlQuery);
			ps.setString(1, pass);
			ps.setString(2, id);
			int value = ps.executeUpdate();
			if(value == 1)
				updateStatus=true;
			System.out.println("Status" + updateStatus);
		} catch (Exception e) {
			System.out.println(e);
		}
		return updateStatus;
	}

	/*
	 * public void addUserDts(UserData userData) throws SQLException{
	 * System.out.println("Adding"); String
	 * query="INSERT INTO hspcb.SRODATA values (?,?,?)";
	 * System.out.println("Getting DB Connection"); ConnectMYSQLServer
	 * connectMYSQLServer = new ConnectMYSQLServer(); Connection connection =
	 * connectMYSQLServer.dbConnect(); PreparedStatement
	 * pstatement=connection.prepareStatement(query,
	 * PreparedStatement.RETURN_GENERATED_KEYS); System.out.println("1"+query);
	 * pstatement.setString(1, null); pstatement.setString(2, name);
	 * pstatement.setString(3, pwd);
	 * 
	 * System.out.println("2"+query); int count =pstatement.executeUpdate();
	 * System.out.println("count"+count); } public List<UserData> getDepatmentlist()
	 * throws SQLException{ String query="select * from hspcb.user_info";
	 * ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer(); Connection
	 * connection = connectMYSQLServer.dbConnect(); PreparedStatement
	 * pstatement=connection.prepareStatement(query); ResultSet
	 * rset=pstatement.executeQuery(); List<UserData> userInfo = new
	 * ArrayList<UserData>(); while(rset.next()){ UserData userData= new UserData();
	 * 
	 * userData.setUsername(rset.getString(1));
	 * userData.setPassword(rset.getString(2)); userInfo.add(userData); } return
	 * userInfo; }
	 */
}
