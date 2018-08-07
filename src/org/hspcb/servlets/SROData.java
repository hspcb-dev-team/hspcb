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
		/*System.out.println("welcome");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		userData=new UserData();
		
		
		userData.setSub_rgn(request.getParameter("sub_rgn"));
		userData.setOfcr_name(request.getParameter("ofcr_name"));
		userData.setCto_rcvd(request.getParameter("cto_rcvd"));
		userData.setCto_pndng(request.getParameter("cto_pndng"));
		userData.setCto_grntd(request.getParameter("cto_grntd"));
		userData.setPassword(request.getParameter("cto_rjctd"));
		userData.setUsername(request.getParameter("cte_rcvd"));
		userData.setPassword(request.getParameter("cte_pndng"));
		userData.setPassword(request.getParameter("cte_grntd"));
		userData.setPassword(request.getParameter("cte_rjctd"));*/
		
	    Service service=new Service();
	    //	service.addUserDts(userData);
		request.getRequestDispatcher("/WEB-INF/views/SROData.jsp").forward(request, response);

		
	}

	
}
