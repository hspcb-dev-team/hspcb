package org.hspcb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hspcb.bean.ConsentData;

import org.hspcb.controller.Service;
import org.hspcb.dao.ConnectMYSQLServer;
import org.hspcb.data.ExcelData;
import org.hspcb.data.SubRegionExcel;


public class SROData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	
	private static Connection conn = null;
	private static ResultSet resultSet = null;

	public static void dbConnect() {
		ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
		conn = connectMYSQLServer.dbConnect();

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		dbConnect();
		String branch = request.getParameter("regionName");
		String appType = request.getParameter("applicationType");
		String officetype = request.getParameter("officetype");
		
		SubRegionExcel excelData = new SubRegionExcel();
		PreparedStatement statement = null;
		if (branch.equals("All") && officetype.equals("All")) {
			System.out.println("in sub-region");
			String sql = "select * from hspcb.subRegion  ";
			System.out.println("For all regions and all type");

			try {
				statement = conn.prepareStatement(sql);
				resultSet = statement.executeQuery();
				request.setAttribute("resultSet", resultSet);
				request.getRequestDispatcher("SROData.jsp").include(request, response);
				resultSet = statement.executeQuery();
				excelData.dataWrite(resultSet);

			} catch (SQLException e1) {
				e1.printStackTrace();
			}

		}

		else if (appType.equals("All")) {
			System.out.println("For all regions");
			String sql = "select * from hspcb.subRegion where region=? and Office=? ";
			System.out.println(branch);
			try {
				statement = conn.prepareStatement(sql);
				statement.setString(1, branch);
				statement.setString(2, officetype);
				resultSet = statement.executeQuery();
				request.setAttribute("resultSet", resultSet);
				request.getRequestDispatcher("SROData.jsp").include(request, response);
				resultSet = statement.executeQuery();
				excelData.dataWrite(resultSet);
			} catch (SQLException e1) {
			
				e1.printStackTrace();
			}

		} else {
			System.out.println("For specifice region and type");
			String sql = "select * from hspcb.subRegion where region=?  and Office=? ";
			System.out.println(branch);
			System.out.println(appType);
			try {
				statement = conn.prepareStatement(sql);
				statement.setString(1, branch);
				statement.setString(2, appType);
/*				statement.setString(3, officetype);*/
				resultSet = statement.executeQuery();
				request.setAttribute("resultSet", resultSet);
				request.getRequestDispatcher("SROData.jsp").include(request, response);
				resultSet = statement.executeQuery();
				excelData.dataWrite(resultSet);
				
				
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}

		}
	}


	
}
