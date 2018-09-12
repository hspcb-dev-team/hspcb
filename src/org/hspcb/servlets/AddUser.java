package org.hspcb.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hspcb.bean.UserProfile;
import org.hspcb.controller.ValidationPolicy;
import org.hspcb.dao.ConnectMYSQLServer;

public class AddUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String user = (String) session.getAttribute("uname");
		try {
			System.out.println("Adding user");
			Boolean userStatus = addUser(user, req, resp);
			if (userStatus) {

				ValidationPolicy.setInfoMsg("User added successfully!!");

			}
			req.getRequestDispatcher("adduser.jsp").include(req, resp);
		}

		catch (Exception e) {

			System.out.println("Message: " + e.getMessage());
		}
	}

	public boolean addUser(String user, HttpServletRequest req, HttpServletResponse resp) throws SQLException {
		Boolean checkStatus = false;

		try {

			String fname = req.getParameter("fname");
			String lname = req.getParameter("lname");
			String employeeId = req.getParameter("empid");
			String designation = req.getParameter("designation");
			String department = req.getParameter("location");
			String mobileNo = req.getParameter("mobileno");
			String emailId = req.getParameter("emailid");

			if (!fname.equals("") && !lname.equals("") && !employeeId.equals("") && !designation.equals("")
					&& !department.equals("") && !mobileNo.equals("")) {

				int idCount = 0;
				System.out.println("Getting DB Connection <--> user profile");
				ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
				Connection connection = connectMYSQLServer.dbConnect();
				String query = "SELECT max(id) as MAX from  hspcb.USER_INFO";
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(query);
				if (resultSet.next()) {
					idCount = Integer.parseInt(resultSet.getString("MAX"));
					idCount = idCount + 1;
				}

				query = "INSERT INTO hspcb.USER_INFO values (?,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstatement = connection.prepareStatement(query,
						PreparedStatement.RETURN_GENERATED_KEYS);
				System.out.println("1" + query);

				Date dNow = new Date();
				SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String date = ft.format(dNow);
				pstatement.setInt(1, idCount);
				pstatement.setString(2, fname);
				pstatement.setString(3, lname);
				pstatement.setString(4, user);
				pstatement.setString(5, employeeId);
				pstatement.setString(6, designation);
				pstatement.setString(7, department);
				pstatement.setString(8, mobileNo);
				pstatement.setString(9, emailId);
				pstatement.setString(10, date);
				pstatement.setString(11, "2");

				int queryStatus = pstatement.executeUpdate();
				System.out.println("Query status add user " + queryStatus);
				if (queryStatus == 1)
					checkStatus = true;
			} else {
				ValidationPolicy.setErrorMsg("Please fill all the details before submitting.");
				System.out.println("Please fill the data. ");
			}
		} catch (Exception e) {

			System.out.println(e.getMessage());
		}
		return checkStatus;
	}

	public void getUser(String user) {
		String sqlQuery = "Select * from hspcb.USER_INFO where EmployeeId =" + user;

		try {
			UserProfile profile = null;

			ConnectMYSQLServer server = new ConnectMYSQLServer();
			Connection connection = server.dbConnect();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sqlQuery);
			
			while (rs.next()) {
				profile = new UserProfile();
				profile.setUpId(rs.getInt("Id"));
				profile.setFirstName(rs.getString("FirstName"));
				profile.setLastName(rs.getString("LastName"));
				profile.setCreatedBy(rs.getString("CreatedBy"));
				profile.setEmployeeId(rs.getString("EmployeeId"));
				profile.setDesignation(rs.getString("Designation"));
				profile.setDepartment(rs.getString("Department"));
				profile.setMobileNo(rs.getString("MobileNo"));
				profile.setEmailId(rs.getString("EmailId"));
				profile.setLastUpdated(rs.getDate("LastUpdated"));
				profile.setUserRole(rs.getString("UserRole"));
				System.out.println("Profile Data has been set.");
			}

		}

		catch (Exception e) {

			System.out.println(e.getMessage());
		}

	}
}
