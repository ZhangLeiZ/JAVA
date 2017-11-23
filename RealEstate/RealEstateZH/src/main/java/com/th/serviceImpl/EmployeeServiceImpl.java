package com.th.serviceImpl;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Employee;
import com.th.common.PageByEasyUi;
import com.th.dao.EmployeeDAO;
import com.th.service.EmployeeService;

public class EmployeeServiceImpl implements EmployeeService{

	private EmployeeDAO employeeDAOImpl;
	private final static String UPFILE = "/images/";
	public void setEmployeeDAOImpl(EmployeeDAO employeeDAOImpl) {
		this.employeeDAOImpl = employeeDAOImpl;
	}

	@Override
	public Employee queryById(String id) {
		
		return employeeDAOImpl.queryById(id);
	}

	@Override
	public void delete(Employee t) {
		employeeDAOImpl.delete(t);
		
	}

	@Override
	public void update(Employee t) {
		employeeDAOImpl.update(t);
		
	}

	@Override
	public void add(Employee t) {
		employeeDAOImpl.add(t);
		
	}

	
	@Override
	public void valid(String id, String valid) {
		employeeDAOImpl.valid(id, valid);
		
	}

	@Override
	public int count() {
		
		return employeeDAOImpl.count();
	}

	@Override
	public List<Employee> FindPage(int pageNumber, int pageSize) {
		return employeeDAOImpl.FindPage(pageNumber, pageSize);
	}
	
	public String uploadFile(File file){
		HttpServletRequest request = ServletActionContext.getRequest();
	    String root = request.getRealPath(UPFILE);//图片要上传到的服务器路径
	   /* String Name[] = request.getParameter("file").split("//.");
	    
	    +Name[Name.length-1];*/
	    String fileName="";
	    fileName=getRandomString(20)+".jpg";
	    String picPath=UPFILE+fileName;//图片保存到数据库的路径
	    File file1=new File(root);
	    if(!file1.exists()){
	    	boolean isok = file1.mkdirs();
	    	if(!isok){
	    		return null;
	    	}
	    }
	    try {
	      FileUtils.copyFile(file, new File(file1,fileName));
	    } catch (IOException e) {
	      e.printStackTrace();
	    }
		return picPath;
}
	public String getRandomString(int length){
		String str="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		Random random=new Random();
		StringBuffer sb=new StringBuffer();
		for(int i=0;i<length;i++){
		int number=random.nextInt(62);
		sb.append(str.charAt(number));
	}
		return sb.toString();
	}

	@Override
	public Employee employeelogin(String phone, String pwd) {
		return employeeDAOImpl.employeelogin(phone, pwd);
	}

	@Override
	public String MD5Util(String str) {
		return string2MD5(str);
	}
	
	 public  String string2MD5(String inStr){  
	      MessageDigest md5 = null;  
	      try{  
	          md5 = MessageDigest.getInstance("MD5");  
	      }catch (Exception e){  
	          System.out.println(e.toString());  
	          e.printStackTrace();  
	          return "";  
	      }  
	      char[] charArray = inStr.toCharArray();  
	      byte[] byteArray = new byte[charArray.length];  

	      for (int i = 0; i < charArray.length; i++)  
	          byteArray[i] = (byte) charArray[i];  
	      byte[] md5Bytes = md5.digest(byteArray);  
	      StringBuffer hexValue = new StringBuffer();  
	      for (int i = 0; i < md5Bytes.length; i++){  
	          int val = ((int) md5Bytes[i]) & 0xff;  
	          if (val < 16)  
	              hexValue.append("0");  
	          hexValue.append(Integer.toHexString(val));  
	      }  
	      return hexValue.toString();  

	  }  

	  /** 
	   * 加密解密算法 执行一次加密，两次解密 
	   */   
	  public  String convertMD5(String inStr){  

	      char[] a = inStr.toCharArray();  
	      for (int i = 0; i < a.length; i++){  
	          a[i] = (char) (a[i] ^ 't');  
	      }  
	      String s = new String(a);  
	      return s;  

	  }

	@Override
	public String Deciphering(String str) {
		return convertMD5(convertMD5(str));
	}

	@Override
	public void employeepwdUp(Employee employee) {
		employeeDAOImpl.employeepwdUp(employee);
	}

	@Override
	public Employee employeeupdate(Employee employee) {
		return employeeDAOImpl.employeeupdate(employee);
	}

	@Override
	public void employeeadd(Employee employee, String agencyid) {
		employeeDAOImpl.employeeadd(employee, agencyid);
		
	}

	@Override
	public List<Employee> EmpFindPage(int pageNumber, int pageSize, String id) {
		
		return employeeDAOImpl.EmpFindPage(pageNumber, pageSize, id);
	}

	@Override
	public void empUpdateStratus(String employeeid) {
		employeeDAOImpl.empUpdateStratus(employeeid);
	}

	@Override
	public void empDownStratus(String employeeid) {
		employeeDAOImpl.empDownStratus(employeeid);
	}

	@Override
	public List<Buildings> Buildinglist(String agencyid) {
		return employeeDAOImpl.Buildinglist(agencyid);
	}

	@Override
	public List<Employee> Hemployee(String buildingsid) {
		return employeeDAOImpl.Hemployee(buildingsid);
	}

	@Override
	public List<Employee> listemployee() {
		return employeeDAOImpl.listemployee();
	}

	@Override
	public Employee EmpMap(List employeelist) {
		List<Employee> listemp = new ArrayList<Employee>();
		Employee employees=null;
		Map map = new HashMap();
		int size = employeelist.size();
		Random random = new Random();
		int num = random.nextInt(size)+1;
		int k=0;
		for(int i=0;i<employeelist.size();i+=1){
			List<Employee> list = employeelist.subList(i, i+1);
			map.put(k, list);
			k++;
		}
		listemp = (List) map.get(num);
		employees = listemp.get(0);
		return employees;
	}

	@Override
	public PageByEasyUi<Employee> queryByPage(PageByEasyUi<Employee> page, String id) {
		
		return employeeDAOImpl.queryByPage(page, id);
	}

	@Override
	public int count(String id) {
		
		return employeeDAOImpl.count(id);
	}

	

}
