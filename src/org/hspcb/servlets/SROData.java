package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hspcb.bean.ConsentData;

import org.hspcb.controller.Service;


public class SROData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ConsentData userData=null;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	   request.getRequestDispatcher("/WEB-INF/views/SROData.jsp").forward(request, response);

		
	}

	
}
