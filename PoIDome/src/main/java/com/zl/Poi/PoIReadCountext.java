package com.zl.Poi;

import com.zl.Bean.Students;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/10/30.
 */
public class PoIReadCountext {
    public static void main(String [] args) {
        PoIReadCountext poIReadCountext = new PoIReadCountext();
        List<Students> studentsList =poIReadCountext.ReadXLSXCountext("src/main/resources/poi_2.xlsx");
        for (Students students:studentsList) {
            System.out.println(students);
        }
    }
    public List<Students> ReadXLSXCountext(String xlsPath) {
        List<Students> studentslist = new ArrayList<Students>();
        try {
            XSSFWorkbook workbook = new XSSFWorkbook(new FileInputStream(new File(xlsPath)));
            XSSFSheet xssfSheet = workbook.getSheet("Sheet1");
            for(int row=2;row <= xssfSheet.getLastRowNum();row++) {
                    Students students = new Students();
                    XSSFRow xssfRow = xssfSheet.getRow(row);
                    for(int cll=0;cll <= xssfRow.getLastCellNum();cll++) {
                        XSSFCell xssfCell = xssfRow.getCell(cll);
                        if(cll == 0) {
                            students.setStuno((int) xssfCell.getNumericCellValue());
                        }else if(cll == 1) {
                            students.setName(xssfCell.getStringCellValue());
                        }else if(cll == 2) {
                            students.setSex(xssfCell.getStringCellValue());
                        }else if(cll == 3){
                            students.setPhone(xssfCell.getStringCellValue());
                        }
                    }
                studentslist.add(students);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return studentslist;
    }
}
