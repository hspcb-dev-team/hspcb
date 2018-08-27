package org.hspcb.data;

import org.apache.poi.ss.usermodel.Sheet;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hspcb.bean.ConsentData;
import org.hspcb.controller.Service;

public class ExcelData {
	 

	String columns[]= {"Region","ApplicationType","Total applications","Applications no 30","Applications per30",
			"Applications no 31-45","Applications per 31-45","Applications beyond45","Applications per45","Pending app","Pendinggt45"};
	    Service service=new Service();
		public void dataWrite(ResultSet resultSet1) throws SQLException, IOException {
//			ResultSet resultSet=null;
			System.out.println("Excel Creation");
			// Create a Workbook
			XSSFWorkbook workbook = new XSSFWorkbook(); // new HSSFWorkbook() for generating `.xls` file

	      /*   CreationHelper helps us create instances of various things like DataFormat, 
	           Hyperlink, RichTextString etc, in a format (HSSF, XSSF) independent way 
	        CreationHelper createHelper = workbook.getCreationHelper();*/

	        // Create a Sheet
	        
	        XSSFSheet sheet = workbook.createSheet("Application Status");
	       // Sheet sheet = (Sheet) workbook.createSheet("Application Status");

	        // Create a Font for styling header cells
	        Font headerFont = workbook.createFont();
	        headerFont.setBold(true);
	        headerFont.setFontHeightInPoints((short) 14);
	        headerFont.setColor(IndexedColors.RED.getIndex());

	        //Create a CellStyle with the font
	        CellStyle headerCellStyle = workbook.createCellStyle();
	        headerCellStyle.setFont(headerFont);

	        // Create a Row
	        XSSFRow headerRow = sheet.createRow(0);

	       //
	  
//	        resultSet1;
	        
	        // Create cells
	        for(int i = 0; i < columns.length; i++) {
	            Cell cell = headerRow.createCell(i);
	            cell.setCellValue(columns[i]);
	            cell.setCellStyle(headerCellStyle);
	        }

	        /*// Create Cell Style for formatting Date
	        CellStyle dateCellStyle = workbook.createCellStyle();
	        dateCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd-MM-yyyy"));*/

	        //request.setAttribute("resultSet", resultSet);
//	       request.getRequestDispatcher("ConsentData.jsp").include(request, response);
//	        
	        
	        // Create Other rows and cells with employees data
	        int rowNum = 1;
	      
	     while(resultSet1.next()) {
	    	 System.out.println("writing data");
	    	 XSSFRow row = sheet.createRow(rowNum);
	            row.createCell(0).setCellValue(resultSet1.getString("branch_region"));

	            row.createCell(1)
	                    .setCellValue(resultSet1.getString("Application_Type"));

	            row.createCell(2)
	                    .setCellValue(resultSet1.getInt("Total_Appln_Received"));
	            row.createCell(3)
	            .setCellValue(resultSet1.getInt("Appln_no_30d"));
	            row.createCell(4)
	            .setCellValue(resultSet1.getString("Appln_per_30d"));
	            row.createCell(5)
	            .setCellValue(resultSet1.getInt("Appln_no_31_45d"));
	            row.createCell(6)
	            .setCellValue(resultSet1.getString("Appln_per_31_45d"));
	            row.createCell(7)
	            .setCellValue(resultSet1.getString("Appln_per_31_45d"));
	            row.createCell(8)
	            .setCellValue(resultSet1.getInt("Appln_no_beyond45d"));
	            row.createCell(9)
	            .setCellValue(resultSet1.getString("Appln_per_beyond45d"));
	            row.createCell(10)
	            .setCellValue(resultSet1.getInt("Pending_Appln_no"));

	            /*Cell dateOfBirthCell = row.createCell(2);
	            dateOfBirthCell.setCellValue(employee.getDateOfBirth());
	            dateOfBirthCell.setCellStyle(dateCellStyle);

	            row.createCell(3)
	                    .setCellValue(employee.getSalary());*/
	            rowNum++;
	        }

			/*// Resize all columns to fit the content size
	        for(int i = 0; i < columns.length; i++) {
	            sheet.autoSizeColumn(i);
	        }*/

	        // Write the output to a file
	        FileOutputStream fileOut = new FileOutputStream("D:/PerformanceReport.xlsx");
	        workbook.write(fileOut);
	        fileOut.close();

	        // Closing the workbook
	        workbook.close();
	   }
		
	}

		