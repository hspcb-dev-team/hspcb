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

		response.setContentType("text/html");

		request.getRequestDispatcher("Welcome.jsp").forward(request, response);
		/*response.setContentType("text/html");
>>>>>>> refs/remotes/origin/master
		PrintWriter out = response.getWriter();

		String n = request.getParameter("_ctl0:ContentPlaceHolder1:txtusername");
		String p = request.getParameter("_ctl0:ContentPlaceHolder1:txtpwd");

		System.out.println("User: " + n + " Name" + p);

		if (Service.validate(n, p)) {
			// String name = request.getParameter("username");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/home.jsp");
			out.print("Welcome " + n);
			rd.forward(request, response);
		} else {
			String final_resp ="<html><head><body><h1><font color:red>User/Password does not match!!!</font></h1></body></head></html>";
			out.print(final_resp);			
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}

		out.close();*/
	}
}