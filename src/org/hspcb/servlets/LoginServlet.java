package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hspcb.service.Service;

public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		request.getRequestDispatcher("Welcome.jsp").forward(request, response);
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String n = request.getParameter("_ctl0:ContentPlaceHolder1:txtusername");
		String p = request.getParameter("_ctl0:ContentPlaceHolder1:txtpwd");

		System.out.println("User: " + n + " Name" + p);

		if (Service.validate(n, p)) {
			request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);;
			out.print("Welcome " + n);
		} else {
			String final_resp ="<html><head><body><h1><font color:red>User/Password does not match!!!</font></h1></body></head></html>";
			out.print(final_resp);			
			request.getRequestDispatcher("index.jsp").include(request, response);
		}

		out.close();
	}
}