package org.hspcb.controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.hspcb.bean.UserData;
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

	public void  addUserDts(UserData userData) throws SQLException{
		System.out.println("Adding");
		String query="INSERT INTO hspcb.SRODATA values (?,?,?)";
		System.out.println("Getting DB Connection");
		ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
		Connection connection = connectMYSQLServer.dbConnect();
		PreparedStatement pstatement=connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
System.out.println("1"+query);
		String name=userData.getUsername();
		String pwd=userData.getPassword();
		pstatement.setString(1, null);
		pstatement.setString(2, name);
		pstatement.setString(3, pwd);

		System.out.println("2"+query);
		int count =pstatement.executeUpdate();
		System.out.println("count"+count);
	}
	public List<UserData> getDepatmentlist() throws SQLException{
		String query="select * from hspcb.user_info";
		ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
		Connection connection = connectMYSQLServer.dbConnect();
		PreparedStatement pstatement=connection.prepareStatement(query);
		ResultSet rset=pstatement.executeQuery();
		List<UserData> userInfo = new ArrayList<UserData>();
		while(rset.next()){
			UserData userData= new UserData();
			
			userData.setUsername(rset.getString(1));
			userData.setPassword(rset.getString(2));
			userInfo.add(userData);
		}
		return userInfo;
	}
}
