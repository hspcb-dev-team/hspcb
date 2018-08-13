package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
import org.hspcb.controller.Service;
import org.hspcb.controller.ValidationPolicy;
import org.hspcb.dao.ConnectMYSQLServer;

public class AddUser extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("In post add user");
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		String user = (String) session.getAttribute("uname");
		// user = user.split(arg0, arg1)
		// getUser(user);
		try {
			System.out.println("Adding user");
			Boolean userStatus = addUser(user, req, resp);
			if (userStatus) {
				// out.println("User added successfully");
				ValidationPolicy.setInfoMsg("User added successfully!!");
				System.out.println("User added successfully");
			}
			req.getRequestDispatcher("adduser.jsp").include(req, resp);
		}

		catch (Exception e) {
			// TODO: handle exception
			System.out.println("Message: " + e.getMessage());
		}
	}

	public boolean addUser(String user, HttpServletRequest req, HttpServletResponse resp) throws SQLException {
		Boolean checkStatus = false;
		UserProfile userProfile = null;
		try {
			PrintWriter out = resp.getWriter();
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
				System.out.println("Current Date: " + date);

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
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return checkStatus;
	}

	public void getUser(String user) {
		String sqlQuery = "Select * from hspcb.USER_INFO where EmployeeId =" + user;

		try {
			UserProfile profile = null;
			String data = null;
			ConnectMYSQLServer server = new ConnectMYSQLServer();
			Connection connection = server.dbConnect();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sqlQuery);
			// Date date = new Date();
			// SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

			while (rs.next()) {
				profile = new UserProfile();
				// Integer id = rs.getInt("Id");
				// String fname = rs.getString("FirstName");
				// String lname = rs.getString("LastName");
				// String createdBy = rs.getString("CreatedBy");
				// String employeeId = rs.getString("EmployeeId");
				// String designation = rs.getString("Designation");
				// String department = rs.getString("Department");
				// String status = rs.getString("Status");
				// String mobileNo = rs.getString("MobileNo");
				// String contactNo = rs.getString("ContactNo");
				// String emailId = rs.getString("EmailId");
				// Date lastUpdated = rs.getDate("LastUpdated");
				// String userRole = rs.getString("UserRole");
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
			// TODO: handle exception
			System.out.println(e.getMessage());
		}

	}
}
