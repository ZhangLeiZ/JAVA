package com.zl.Poi;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.util.HSSFColor;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.*;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/**
 * Created by Administrator on 2017/10/30.
 */
public class PoIWriteCountext {
    public static void main(String [] args) {
        PoIWriteCountext poIWriteCountext = new PoIWriteCountext();
        poIWriteCountext.XLSXWrite("E:/Writesheet.xlsx");
    }
    public void XLSXWrite(String xlsxPath) {

        try {
            OutputStream fileOutputStream = new FileOutputStream(new File(xlsxPath));
            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet xssfSheet = workbook.createSheet("Sheetname");
            //设置字体格式
            XSSFFont xssfFont = workbook.createFont();
            xssfFont.setBold(true);
            xssfFont.setFontHeightInPoints((short)11);
            xssfFont.setColor(IndexedColors.LIGHT_ORANGE.getIndex());
            XSSFCellStyle xssfCellStyle = workbook.createCellStyle();
            xssfCellStyle.setFont(xssfFont);
           // xssfCellStyle.setFillForegroundColor(IndexedColors.GREY_50_PERCENT.getIndex());
            xssfCellStyle.setWrapText(true);
            xssfCellStyle.setAlignment(HorizontalAlignment.CENTER);
            CellRangeAddress cellRangeAddress = new CellRangeAddress(0,0,0,4);
            xssfSheet.addMergedRegion(cellRangeAddress);

            //插入图片 画图的顶级管理器，一个sheet只能获取一个（一定要注意这点）
            XSSFDrawing xssfDrawing  = xssfSheet.createDrawingPatriarch();
            //先把读进来的图片放到一个ByteArrayOutputStream中，以便产生ByteArray
            ByteArrayOutputStream outputstream = new ByteArrayOutputStream();
            BufferedImage bufferedImage = null;
            bufferedImage = ImageIO.read(new File("E:/image/images.jpg"));
            ImageIO.write(bufferedImage,"jpg",outputstream);
            //主要用于设置图片的属性
            XSSFClientAnchor xssfClientAnchor = new XSSFClientAnchor(0, 0, 255, 255,(short) 1, 8, (short) 5, 24);
            //xssfClientAnchor.setAnchorType();
            //插入图片
            byte [] str = outputstream.toByteArray();
            xssfDrawing.createPicture(xssfClientAnchor,workbook
                    .addPicture(outputstream.toByteArray(),XSSFWorkbook.PICTURE_TYPE_JPEG));

            Map<String , Object []> treemap = new TreeMap<String, Object[]>();
            treemap.put("1",new Object[]{"通讯录"});
            treemap.put("2",new Object[]{"编号","姓名","年龄","性别","手机号码"});
            treemap.put("3",new Object[]{"01","zhangsan","128","女","2432423"});
            treemap.put("4",new Object[]{"02","zhangdsf","14","男","24356573"});
            treemap.put("5",new Object[]{"03","zhadfasfan","12","女","243765"});
            treemap.put("6",new Object[]{"04","zhrewgsan","19","男","2354523"});
            treemap.put("7",new Object[]{"05","zjhhsan","10","男","245000099"});
            Set<String> setkey = treemap.keySet();
            int rowid=0;
            for (String keyid:setkey) {
                XSSFRow xssfRow = xssfSheet.createRow(rowid++);
                Object[] objects = treemap.get(keyid);
                xssfRow.setHeight((short)450);
                int cellid = 0;
                for (Object object:objects) {
                    XSSFCell xssfCell = xssfRow.createCell(cellid++);
                    xssfCell.setCellValue((String) object);
                    xssfCell.setCellStyle(xssfCellStyle);
                }
            }
            workbook.write(fileOutputStream);
            System.out.print("表格输出成功！");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
