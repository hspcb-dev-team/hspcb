package org.hspcb.servlets;

	import java.io.FileInputStream;
	import java.io.IOException;
	import java.io.PrintWriter;
	 
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	 
	/**
	 * Servlet implementation class guru_download
	 */
	public class FileDownload extends HttpServlet {
		private static final long serialVersionUID = 1L;
	 
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
			PrintWriter out = response.getWriter();
			String gurufile = "PerformanceReport.xlsx";
			String gurupath = "D:/";
			response.setContentType("APPLICATION/OCTET-STREAM");
			response.setHeader("Content-Disposition", "attachment; filename=\""
					+ gurufile + "\"");
	 
			FileInputStream fileInputStream = new FileInputStream(gurupath
					+ gurufile);
	 
			int i;
			while ((i = fileInputStream.read()) != -1) {
				out.write(i);
			}
			fileInputStream.close();
			out.close();
		}
	 
	 
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
		}
	 
	}