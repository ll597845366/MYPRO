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
		 //�����¹�����
		HSSFWorkbook workbook=new HSSFWorkbook();
		//����������
		HSSFSheet sheet=workbook.createSheet("hello-excel");
		//�����У��к���Ϊ�������ݸ�creatRow()��������һ�д�0��ʼ����
		HSSFRow row=sheet.createRow(0);
		//������Ԫ��row�Ѿ�ȷ�����кţ��к���Ϊ�������ݸ�creatcell,��һ�д�0��ʼ����
		HSSFCell cell=row.createCell(0);
		//���õ�Ԫ���ֵ����
		cell.setCellValue("С�ں�");
		//����������������
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
