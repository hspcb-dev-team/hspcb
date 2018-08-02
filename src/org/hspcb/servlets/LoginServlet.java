package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hspcb.controller.Service;

public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		request.getRequestDispatcher("Welcome.jsp").forward(request, response);
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String id = request.getParameter("_ctl0:ContentPlaceHolder1:txtuserid");
		String pwd = request.getParameter("_ctl0:ContentPlaceHolder1:txtpwd");

		System.out.println("User id: " + id + " Password" + pwd);
		HttpSession session = request.getSession();
		session.setAttribute( "uid", id );
//		session.setAttribute( "PWD", p );
		if (Service.validate(id, pwd)) {
			request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);;
			out.print("Welcome " + id);
		} else {
			String final_resp ="<html><head><body><h1><font color:red>User/Password does not match!!!</font></h1></body></head></html>";
			out.print(final_resp);			
			request.getRequestDispatcher("index.jsp").include(request, response);
		}

		out.close();
	}
}