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

/**
 * Servlet implementation class forgotPassword
 */
// @WebServlet("/forgotPassword")
public class forgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("In Post... forgot");
		// request.getRequestDispatcher("index.jsp").forward(request, response);

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String id = request.getParameter("uid_forgot");
		// String oldPwd = request.getParameter("old");
		String newPwd = request.getParameter("newPass1_forgot");
		String newPwd2 = request.getParameter("newPass2_forgot");

		System.out.println("User id:  " + id + " forgotpwd" + newPwd2);
		// if (Service.validate(id, newPwd)) {
		if (!newPwd.equals("") && !newPwd2.equals("") && !newPwd.equalsIgnoreCase("null")
				&& !newPwd2.equalsIgnoreCase("null")) {
			if (newPwd.equalsIgnoreCase(newPwd2)) {
				if (Service.updatePwd(id, newPwd2)) {
					out.println("Your password has been updated.");
					request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
				} else {
					// String final_resp ="<html><head><body><h1><font color:red>User/Password does
					// not match!!!</font></h1></body></head></html>";
					out.print("There is a problem with updating of password.");
					request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
				}
			} else {
				out.print("The New password and confirm password does not match.");
				request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
			}
		} else {
			out.print("New password and confirmation password should not be empty !!");
			request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
		}
		// } else {
		// out.print("User Name and old password does not match.");
		// request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
		// }
		out.close();
	}

}
