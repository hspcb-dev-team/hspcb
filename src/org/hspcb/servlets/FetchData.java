package org.hspcb.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hspcb.dao.ConnectMYSQLServer;

/**
 * Servlet implementation class FetchData
 */

public class FetchData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String region = request.getParameter("region");
		String applnType = request.getParameter("apptype");
		String totalApplnReceived = request.getParameter("apprec");
		String Appln_no_30d = request.getParameter("appno30d");
		String Appln_per_30d = request.getParameter("appper30d");
		String Appln_no_31_45d = request.getParameter("appno3145d");
		String Appln_per_31_45d = request.getParameter("appper3145d");
		String Appln_no_beyond45d = request.getParameter("appnobe45d");
		String Appln_per_beyond45d = request.getParameter("appperbe45d");
		String Pending_Appln_no = request.getParameter("pendappno");
		String Pending_Appln_per = request.getParameter("pendappper");
		String Pending_Appln_no_gt45d = request.getParameter("pendappnogt45d");
		String Pending_Appln_per_gt45d = request.getParameter("pendapppergt45d");

		try {
			int idCount = 0;
			System.out.println("Getting DB Connection <--> fetch data");
			ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
			Connection connection = connectMYSQLServer.dbConnect();
			String query = "SELECT max(id) as MAX from  hspcb.performancereport";
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			if (resultSet.next()) {
				idCount = Integer.parseInt(resultSet.getString("MAX"));
				idCount = idCount + 1;
			}
			System.out.println("Max Id for perf report table " + idCount);
			query = "INSERT INTO hspcb.performancereport values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstatement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
			System.out.println(" Fetch data from CPCB: " + query);

			pstatement.setInt(1, idCount);
			pstatement.setString(2, region);
			pstatement.setString(3, applnType);
			pstatement.setString(4, totalApplnReceived);
			pstatement.setString(5, Appln_no_30d);
			pstatement.setString(6, Appln_per_30d);
			pstatement.setString(7, Appln_no_31_45d);
			pstatement.setString(8, Appln_per_31_45d);
			pstatement.setString(9, Appln_no_beyond45d);
			pstatement.setString(10, Appln_per_beyond45d);
			pstatement.setString(11, Pending_Appln_no);
			pstatement.setString(12, Pending_Appln_per);
			pstatement.setString(13, Pending_Appln_no_gt45d);
			pstatement.setString(14, Pending_Appln_per_gt45d);
			int queryStatus = pstatement.executeUpdate();
			System.out.println("Query status database sync with cpcb " + queryStatus);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}

}
