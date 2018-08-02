package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hspcb.bean.UserProfile;
import org.hspcb.dao.ConnectMYSQLServer;

public class AddUser extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		String user = (String) session.getAttribute("uname");
//		user = user.split(arg0, arg1)
		
		getUser(user);		
		req.getRequestDispatcher("/WEB-INF/views/adduser.jsp").forward(req, resp);
	}

	public void addUser(UserProfile userProfile) throws SQLException {
		try {
			String query = "INSERT INTO hspcb.USER_INFO values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			System.out.println("Getting DB Connection <--> user profile");
			ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
			Connection connection = connectMYSQLServer.dbConnect();
			PreparedStatement pstatement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
			System.out.println("1" + query);
			Integer id = userProfile.getUpId();
			String fname = userProfile.getFirstName();
			String lname = userProfile.getLastName();
			String createdBy = userProfile.getCreatedBy();
			String employeeId = userProfile.getEmployeeId();
			String designation = userProfile.getDesignation();
			String department = userProfile.getDepartment();
			String status = userProfile.getStatus();
			String mobileNo = userProfile.getMobileNo();
			String contactNo = userProfile.getContactNo();
			String emailId = userProfile.getEmailId();
			Date lastUpdated = userProfile.getLastUpdated();
			String userRole = userProfile.getUserRole();

			pstatement.setInt(1, id);
			pstatement.setString(2, fname);
			pstatement.setString(3, lname);
			pstatement.setString(4, createdBy);
			pstatement.setString(5, employeeId);
			pstatement.setString(6, designation);
			pstatement.setString(7, department);
			pstatement.setString(8, status);
			pstatement.setString(9, mobileNo);
			pstatement.setString(10, contactNo);
			pstatement.setString(11, emailId);
			pstatement.setDate(12, lastUpdated);
			pstatement.setString(13, userRole);

			int queryStatus = pstatement.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}
	
	public void getUser(String user)
	{
		String sqlQuery = "Select * from hspcb.USER_INFO where EmailId =" + user;

		try {
			UserProfile profile =null;
			String data = null;
			ConnectMYSQLServer server = new ConnectMYSQLServer();
			Connection connection = server.dbConnect();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sqlQuery);
			// Date date = new Date();
			// SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			if(rs.next()) {
			while (rs.next()) {
				profile = new UserProfile();
//				Integer id = rs.getInt("Id");
//				String fname = rs.getString("FirstName");
//				String lname = rs.getString("LastName");
//				String createdBy = rs.getString("CreatedBy");
//				String employeeId = rs.getString("EmployeeId");
//				String designation = rs.getString("Designation");
//				String department = rs.getString("Department");
//				String status = rs.getString("Status");
//				String mobileNo = rs.getString("MobileNo");
//				String contactNo = rs.getString("ContactNo");
//				String emailId = rs.getString("EmailId");
//				Date lastUpdated = rs.getDate("LastUpdated");
//				String userRole = rs.getString("UserRole");
				profile.setUpId(rs.getInt("Id"));
				profile.setFirstName(rs.getString("FirstName"));
				profile.setLastName(rs.getString("LastName"));
				profile.setCreatedBy(rs.getString("CreatedBy"));
				profile.setEmployeeId(rs.getString("EmployeeId"));
				profile.setDesignation(rs.getString("Designation"));
				profile.setDepartment(rs.getString("Department"));
				profile.setStatus(rs.getString("Status"));
				profile.setMobileNo(rs.getString("MobileNo"));
				profile.setContactNo(rs.getString("ContactNo"));
				profile.setEmailId(rs.getString("EmailId"));
				profile.setLastUpdated(rs.getDate("LastUpdated"));
				profile.setUserRole(rs.getString("UserRole"));
//				out.println("Id: " + id + "fname: " + fname + "lname: " + lname + "createdBy: " + createdBy
//						+ "employeeId: " + employeeId + "designation: " + designation + "department: " + department
//						+ "status: " + status + "mobileNo: " + mobileNo + "contactNo: " + contactNo + "emailId: "
//						+ emailId + "lastUpdated: " + lastUpdated + "userRole: " + userRole);
			System.out.println("Profile Data has been set.");
			}
			}
			else {
				addUser(profile);
			}
		}

		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	
	}
}
