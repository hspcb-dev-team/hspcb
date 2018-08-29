package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hspcb.controller.Service;
import org.hspcb.controller.ValidationPolicy;

/**
 * Servlet implementation class forgotPassword
 */

public class forgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("uid_forgot");
		String uid_school = request.getParameter("uid_school");
		String uid_nickname = request.getParameter("uid_nickname");
		String newPwd = request.getParameter("newPass1_forgot");
		String newPwd2 = request.getParameter("newPass2_forgot");
		String school = null;
		String name = null;
		ResultSet rset = Service.getUidDetails(id);

		try {
			while (rset.next()) {
				school = rset.getString("PrimarySchool");
				name = rset.getString("NickName");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (uid_school.equalsIgnoreCase(school) && uid_nickname.equalsIgnoreCase(name) && !newPwd.equals("")
				&& !newPwd2.equals("") && !newPwd.equalsIgnoreCase("null") && !newPwd2.equalsIgnoreCase("null")) {
			System.out.println("User id:  " + id + " forgotpwd" + newPwd2);
			if (newPwd.equalsIgnoreCase(newPwd2)) {
				if (Service.updatePwd(id, newPwd2)) {
					ValidationPolicy.setInfoMsg("Your password has been updated.");
					request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
				} else {
					ValidationPolicy.setErrorMsg("There is a problem with updating of password.");
					request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
				}
			} else {
				ValidationPolicy.setErrorMsg("The New password and confirm password does not match.");
				request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
			}
		} else {
			ValidationPolicy.setErrorMsg("Enter the correct details !!");
			request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
		}
		out.close();
	}

}
