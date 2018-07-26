package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hspcb.bean.UserData;
import org.hspcb.service.Service;


public class SROData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserData userData=null;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("welcome");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		userData=new UserData();
		userData.setUsername(request.getParameter("arcvd"));
		userData.setPassword(request.getParameter("aprcsd"));
		
	    Service service=new Service();
	    try {
			service.addUserDts(userData);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		out.close();
	}

	
}
