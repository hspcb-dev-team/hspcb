package org.hspcb.data;

import org.apache.poi.ss.usermodel.Sheet;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hspcb.bean.ConsentData;
import org.hspcb.controller.Service;

public class ExcelData {
	 
	List<ConsentData> consentData=new ArrayList<ConsentData>();
    Service service=new Service();
	public void dataWrite(List<ConsentData> consentData) throws SQLException, IOException {
		
		System.out.println("Excel Creation");
		// Create a Workbook
        Workbook workbook = new XSSFWorkbook(); // new HSSFWorkbook() for generating `.xls` file

        /* CreationHelper helps us create instances of various things like DataFormat, 
           Hyperlink, RichTextString etc, in a format (HSSF, XSSF) independent way */
        CreationHelper createHelper = workbook.getCreationHelper();

        // Create a Sheet
        Sheet sheet = (Sheet) workbook.createSheet("Application Status");

        // Create a Font for styling header cells
        Font headerFont = workbook.createFont();
        headerFont.setBold(true);
        headerFont.setFontHeightInPoints((short) 14);
        headerFont.setColor(IndexedColors.RED.getIndex());

        // Create a CellStyle with the font
        CellStyle headerCellStyle = workbook.createCellStyle();
        headerCellStyle.setFont(headerFont);

        // Create a Row
        Row headerRow = sheet.createRow(0);

       //
  
        this.consentData=consentData;
        
        // Create cells
       /* for(int i = 0; i < columns.length; i++) {
            Cell cell = headerRow.createCell(i);
            cell.setCellValue(columns[i]);
            cell.setCellStyle(headerCellStyle);
        }*/

        /*// Create Cell Style for formatting Date
        CellStyle dateCellStyle = workbook.createCellStyle();
        dateCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd-MM-yyyy"));*/

        // Create Other rows and cells with employees data
        int rowNum = 1;
        
        
        for(ConsentData consentData1: consentData) {
            Row row = sheet.createRow(rowNum++);

            row.createCell(0)
                    .setCellValue(consentData1.getApplication_Type());

            row.createCell(1)
                    .setCellValue(consentData1.getTotal_Appln_Received());
            row.createCell(2)
            .setCellValue(consentData1.getTotal_Appln_Received());
            row.createCell(3)
            .setCellValue(consentData1.getAppln_no_30d ());
            row.createCell(4)
            .setCellValue(consentData1.getAppln_per_30d ());
            row.createCell(5)
            .setCellValue(consentData1.getAppln_no_31_45d ());
            row.createCell(6)
            .setCellValue(consentData1.getAppln_per_31_45d ());
            row.createCell(7)
            .setCellValue(consentData1.getAppln_per_31_45d ());
            row.createCell(8)
            .setCellValue(consentData1.getAppln_per_31_45d ());
            row.createCell(9)
            .setCellValue(consentData1.getAppln_per_31_45d ());

            /*Cell dateOfBirthCell = row.createCell(2);
            dateOfBirthCell.setCellValue(employee.getDateOfBirth());
            dateOfBirthCell.setCellStyle(dateCellStyle);

            row.createCell(3)
                    .setCellValue(employee.getSalary());*/
        }

		/*// Resize all columns to fit the content size
        for(int i = 0; i < columns.length; i++) {
            sheet.autoSizeColumn(i);
        }*/

        // Write the output to a file
        FileOutputStream fileOut = new FileOutputStream("D:/poi-generated-file.xlsx");
        workbook.write(fileOut);
        fileOut.close();

        // Closing the workbook
        workbook.close();
    }
}

	