package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.PlainDocument;

import org.hspcb.controller.Service;
import org.hspcb.controller.ValidationPolicy;

/**
 * Servlet implementation class forgotPassword
 */
// @WebServlet("/changePassword")
public class changePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			System.out.println("In Post... change");
			// request.getRequestDispatcher("index.jsp").forward(request, response);

			response.setContentType("text/html");

			PrintWriter out = response.getWriter();

			String id = request.getParameter("uid_change");
			String oldPwd = request.getParameter("old_change");
			String newPwd = request.getParameter("newPass1_change");
			String newPwd2 = request.getParameter("newPass2_change");

			System.out.println("User id: changepwd " + id + " old Password" + oldPwd + " New pwd " + newPwd
					+ " New Pwd 2 " + newPwd2);
			if (Service.validate(id, oldPwd)) {
				if( !newPwd.equals("") && !newPwd2.equals("") && !newPwd.equalsIgnoreCase("null") && !newPwd2.equalsIgnoreCase("null")) {
				if (newPwd.equalsIgnoreCase(newPwd2)) { 
					if (Service.updatePwd(id, newPwd2)) {
						ValidationPolicy.setInfoMsg("Your password has been updated.");
						request.getRequestDispatcher("changepwd.jsp").include(request, response);
						// request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request,
						// response);
					} else {
						// String final_resp ="<html><head><body><h1><font color:red>User/Password does
						// not match!!!</font></h1></body></head></html>";
						ValidationPolicy.setErrorMsg("There is a problem with changing of password, please try again !!");
						request.getRequestDispatcher("changepwd.jsp").include(request, response);
					}
				
				} else {
					ValidationPolicy.setErrorMsg("The New password and confirm password does not match.");
					request.getRequestDispatcher("changepwd.jsp").include(request, response);
				}
				} else
				{
					ValidationPolicy.setErrorMsg("New password and confirmation password should not be empty !!");
					request.getRequestDispatcher("changepwd.jsp").include(request, response);
				}
			} else {
				// String final_resp ="<html><head><body><h1><font color:red>User/Password does
				// not match!!!</font></h1></body></head></html>";
				ValidationPolicy.setErrorMsg("User Name and old password does not match.");
				request.getRequestDispatcher("changepwd.jsp").include(request, response);
			}
			out.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}

}
