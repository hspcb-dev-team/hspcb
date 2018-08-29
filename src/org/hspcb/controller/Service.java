package org.hspcb.controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import org.hspcb.bean.ConsentData;
import org.hspcb.dao.ConnectMYSQLServer;

public class Service {

	private static Connection conn = null;

	public static void dbConnect() {
		ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
		conn = connectMYSQLServer.dbConnect();
	}

	public static boolean validate(String id, String pass) {
		boolean validStatus = false;
		try {
			System.out.println("Getting DB Connection");
			dbConnect();
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
			dbConnect();
			String sqlQuery = "UPDATE hspcb.user_Login SET Password=?  where EmployeeId=?";
			PreparedStatement ps = conn.prepareStatement(sqlQuery);
			ps.setString(1, pass);
			ps.setString(2, id);
			int value = ps.executeUpdate();
			if (value == 1)
				updateStatus = true;

		} catch (Exception e) {
			System.out.println(e);
		}
		return updateStatus;
	}

	public static ResultSet getUidDetails(String id) {
		ResultSet rset = null;
		try {
			dbConnect();
			String sqlQuery = "Select * from hspcb.user_info where EmployeeId=?";
			PreparedStatement ps = conn.prepareStatement(sqlQuery);
			ps.setString(1, id);
			rset = ps.executeQuery();
		} catch (Exception e) {
			System.out.println(e);
		}
		return rset;
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
	 * System.out.println("count"+count); }
	 * 
	 * public List<UserData> getDepatmentlist() throws SQLException{ String
	 * query="select * from hspcb.user_info"; ConnectMYSQLServer connectMYSQLServer
	 * = new ConnectMYSQLServer(); Connection connection =
	 * connectMYSQLServer.dbConnect(); PreparedStatement
	 * pstatement=connection.prepareStatement(query); ResultSet
	 * rset=pstatement.executeQuery(); List<UserData> userInfo = new
	 * ArrayList<UserData>(); while(rset.next()){ UserData userData= new UserData();
	 * 
	 * userData.setUsername(rset.getString(1));
	 * userData.setPassword(rset.getString(2)); userInfo.add(userData); } return
	 * userInfo; }
	 */
	public static List<ConsentData> getConsentData() throws SQLException {
		dbConnect();

		String query = "select * from hspcb.performancereport";
		PreparedStatement pstatement = conn.prepareStatement(query);
		ResultSet rset = pstatement.executeQuery();
		List<ConsentData> consnetInfo = new ArrayList<ConsentData>();
		while (rset.next()) {
			ConsentData cData = new ConsentData();
			cData.setBranch_region(rset.getString(2));
			cData.setApplication_Type(rset.getString(3));
			cData.setTotal_Appln_Received(rset.getString(4));
			cData.setAppln_no_30d(rset.getString(5));
			cData.setAppln_per_30d(rset.getString(6));
			cData.setAppln_no_31_45d(rset.getString(7));
			cData.setAppln_per_31_45d(rset.getString(8));
			cData.setAppln_no_beyond45d(rset.getString(9));
			cData.setAppln_per_beyond45d(rset.getString(10));
			cData.setPending_Appln_no(rset.getString(11));
			cData.setPending_Appln_per(rset.getString(12));
			cData.setPending_Appln_no_gt45d(rset.getString(13));
			cData.setPending_Appln_per_gt45d(rset.getString(14));

			consnetInfo.add(cData);
		}
		return consnetInfo;
	}

}
