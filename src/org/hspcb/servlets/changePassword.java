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
//@WebServlet("/changePassword")
public class changePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("In Post... change");
		// request.getRequestDispatcher("index.jsp").forward(request, response);

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String id = request.getParameter("uid");
		String oldPwd = request.getParameter("old");
		String newPwd = request.getParameter("newPass1");
		String newPwd2 = request.getParameter("newPass2");

		System.out.println("User id: changepwd " + id + " Password" + newPwd2);
//		if (Service.validate(id, oldPwd)) {
			if (Service.updatePwd(id, newPwd2)) {
				out.println("Your password has been updated.");
				request.getRequestDispatcher("changepwd.jsp").include(request, response);
			// request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request,
			// response);

		} else {
			// String final_resp ="<html><head><body><h1><font color:red>User/Password does
			// not match!!!</font></h1></body></head></html>";
			out.print("There is a problem with updating of password.");
			 request.getRequestDispatcher("changepwd.jsp").include(request, response);
		}
		out.close();
	}

}
