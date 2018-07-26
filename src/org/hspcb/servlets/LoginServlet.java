package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hspcb.contoller.Service;

public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String n = request.getParameter("username");
		String p = request.getParameter("userpass");

		System.out.println("User: " + n + " Name" + p);

		if (Service.validate(n, p)) {

			String name = request.getParameter("username");
			out.print("Welcome " + name);
			// RequestDispatcher rd=request.getRequestDispatcher("servlet2");
			// rd.forward(request,response);
		} else {
			out.print("Sorry username or password error");
			// RequestDispatcher rd=request.getRequestDispatcher("index.html");
			// rd.include(request,response);
		}

		out.close();
	}
}