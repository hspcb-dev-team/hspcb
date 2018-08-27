package org.hspcb.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hspcb.controller.Service;
import org.hspcb.dao.ConnectMYSQLServer;
import org.hspcb.data.ExcelData;


public class ConsentData extends HttpServlet {
	

	private static Connection conn = null;
	private static ResultSet  resultSet=null;
	
	public static void dbConnect() {
		ConnectMYSQLServer connectMYSQLServer = new ConnectMYSQLServer();
		conn = connectMYSQLServer.dbConnect();

	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dbConnect();
	 	String branch=request.getParameter("regionName");
	 	String appType=request.getParameter("applicationType");
		ExcelData excelData=new ExcelData();
		PreparedStatement statement=null;
	 	if(branch.equals("All")  && appType.equals("All") ){
	 		String sql = "select * from hspcb.PerformanceReport  ";
	 	 	System.out.println("For all regions and all type");
	 	 
			try {
				
				statement = conn.prepareStatement(sql);
				resultSet =  statement.executeQuery();
		
			//	if(resultSet.next()) {
					HttpSession session=request.getSession();
					request.setAttribute("resultSet", resultSet);
					request.getRequestDispatcher("ConsentData.jsp").include(request, response);
						
				   //  resultSet.close();
				//}
				resultSet =  statement.executeQuery();
				excelData.dataWrite(resultSet);
				
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	 	 	
	 	
	 	}
	 	
	 	else if( appType.equals("All")){
	 		System.out.println("For all regions");
	 		String sql = "select * from hspcb.PerformanceReport where branch_region=?  ";
	 		System.out.println(branch);
			try {
				statement = conn.prepareStatement(sql);
				statement.setString(1, branch);
			 	

			 	 resultSet = statement.executeQuery();
			 //	if(resultSet.next()) {
					HttpSession session=request.getSession();
					request.setAttribute("resultSet", resultSet);
					request.getRequestDispatcher("ConsentData.jsp").include(request, response);
						
				   //  resultSet.close();
				//}
				resultSet =  statement.executeQuery();
				excelData.dataWrite(resultSet);
				
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	 	 	
	 	}
	 	else{
	 		System.out.println("For specifice region and type");
	 	String sql = "select * from hspcb.PerformanceReport where branch_region=? and application_type=? ";
		System.out.println(branch);
		System.out.println(appType);
		try {
		
			statement = conn.prepareStatement(sql);
			statement.setString(1, branch);
		 	
			statement.setString(2, appType);
		 	
			
			System.out.println("query is"+sql);
			resultSet =  statement.executeQuery();
		
			//if(resultSet.next()) {
				HttpSession session=request.getSession();
				request.setAttribute("resultSet", resultSet);
				request.getRequestDispatcher("ConsentData.jsp").include(request, response);
					
			   //  resultSet.close();
		//	}
			resultSet =  statement.executeQuery();
			excelData.dataWrite(resultSet);
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	 	
	 	}
	}

}
