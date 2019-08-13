package CGB;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class TestPoi {

	 public static void main(String[] args) throws IOException {
		 //创建新工作簿
		HSSFWorkbook workbook=new HSSFWorkbook();
		//创建工作表
		HSSFSheet sheet=workbook.createSheet("hello-excel");
		//创建行，行号作为参数传递给creatRow()方法，第一行从0开始计算
		HSSFRow row=sheet.createRow(0);
		//创建单元格，row已经确定了行号，列号作为参数传递给creatcell,第一列从0开始计算
		HSSFCell cell=row.createCell(0);
		//设置单元格的值（）
		cell.setCellValue("小黑黑");
		//将表格输出到磁盘中
		try {
			FileOutputStream fos=new FileOutputStream(new File("E:\\hello.xls"));
			workbook.write(fos);
			workbook.close();
			fos.close();
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		}
	}
}
