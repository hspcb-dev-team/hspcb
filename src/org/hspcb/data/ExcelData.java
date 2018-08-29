package org.hspcb.data;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hspcb.controller.Service;

public class ExcelData {

	String columns[] = { "Region", "ApplicationType", "Total applications", "Applications no 30", "Applications per30",
			"Applications no 31-45", "Applications per 31-45", "Applications beyond45", "Applications per45",
			"Pending app", "Pendinggt45" };

	String sub_columns[] = { " ", " ", " ", "Number", "Percentage", "Number", "Percentage", "Number", "Percentage",
			"Number", "Percentage" };
	Service service = new Service();

	public void dataWrite(ResultSet resultSet1) throws SQLException, IOException {

		System.out.println("Excel Creation");
		// Create a Workbook
		XSSFWorkbook workbook = new XSSFWorkbook(); // new HSSFWorkbook() for generating `.xls` file

		// Create a Sheet
		XSSFSheet sheet = workbook.createSheet("OfficerPerformanceReport");

		// Create a Font for styling header cells
		Font headerFont = workbook.createFont();
		headerFont.setBold(true);
		headerFont.setFontHeightInPoints((short) 14);
		headerFont.setColor(IndexedColors.BLACK.getIndex());

		// Create a CellStyle with the font
		CellStyle headerCellStyle = workbook.createCellStyle();
		headerCellStyle.setFont(headerFont);

		// Create a Row
		XSSFRow headerRow = sheet.createRow(0);

		// Create cells
		for (int i = 0; i < columns.length; i++) {
			Cell cell = headerRow.createCell(i);
			cell.setCellValue(columns[i]);
			cell.setCellStyle(headerCellStyle);
		}
		// Create a Row
		XSSFRow subheaderRow = sheet.createRow(1);

		for (int i = 0; i < sub_columns.length; i++) {
			Cell cell = subheaderRow.createCell(i);
			cell.setCellValue(sub_columns[i]);
			cell.setCellStyle(headerCellStyle);
		}

		// Create Other rows and cells with employees data
		int rowNum = 2;

		while (resultSet1.next()) {
			XSSFRow row = sheet.createRow(rowNum);
			row.createCell(0).setCellValue(resultSet1.getString("branch_region"));
			row.createCell(1).setCellValue(resultSet1.getString("Application_Type"));
			row.createCell(2).setCellValue(resultSet1.getInt("Total_Appln_Received"));
			row.createCell(3).setCellValue(resultSet1.getInt("Appln_no_30d"));
			row.createCell(4).setCellValue(resultSet1.getString("Appln_per_30d"));
			row.createCell(5).setCellValue(resultSet1.getInt("Appln_no_31_45d"));
			row.createCell(6).setCellValue(resultSet1.getString("Appln_per_31_45d"));
			row.createCell(7).setCellValue(resultSet1.getString("Appln_per_31_45d"));
			row.createCell(8).setCellValue(resultSet1.getInt("Appln_no_beyond45d"));
			row.createCell(9).setCellValue(resultSet1.getString("Appln_per_beyond45d"));
			row.createCell(10).setCellValue(resultSet1.getInt("Pending_Appln_no"));
			rowNum++;
		}

		// Resize all columns to fit the content size
		for (int i = 0; i < columns.length; i++) {
			sheet.autoSizeColumn(i);
		}

		// Resize all columns to fit the content size
		for (int i = 0; i < sub_columns.length; i++) {
			sheet.autoSizeColumn(i);
		}

		// Write the output to a file
		FileOutputStream fileOut = new FileOutputStream("D:/PerformanceReport.xlsx");
		workbook.write(fileOut);
		fileOut.close();

		// Closing the workbook
		workbook.close();
	}

}
