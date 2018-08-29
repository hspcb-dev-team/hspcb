package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hspcb.bean.ConsentData;
import org.hspcb.controller.Service;
import org.hspcb.controller.ValidationPolicy;

public class LoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	List<ConsentData> consentList = null;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		System.out.println("In login page");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("_ctl0:ContentPlaceHolder1:txtuserid");
		String pwd = request.getParameter("_ctl0:ContentPlaceHolder1:txtpwd");
		HttpSession session = request.getSession();
		session.setAttribute("uid", id);
		if (Service.validate(id, pwd)) {
			try {
				consentList = Service.getConsentData();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			request.getRequestDispatcher("welcome.jsp").forward(request, response);

		} else {

			ValidationPolicy.setErrorMsg("User/Password does not match!!!");
			request.getRequestDispatcher("index.jsp").include(request, response);
		}

		out.close();
	}
}