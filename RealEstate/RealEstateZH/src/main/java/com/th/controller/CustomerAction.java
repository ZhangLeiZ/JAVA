package com.th.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.aspectj.util.FileUtil;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Building;
import com.th.bean.Customer;
import com.th.bean.Employee;
import com.th.common.PageByEasyUi;
import com.th.common.Pager4EasyUI;
import com.th.service.CustomerService;
import com.th.service.MissionService;

public class CustomerAction extends ActionSupport{
	private Customer customer;
	private CustomerService customerServiceImpl;
	private int pageNumber;
	private int pageSize;
	private  int total;
	private List<Customer> rows;
	private String prompt;
	private String employee_id;
	private MissionService missionService;
	private List<Employee> employees;
	private String customer_id;
	private HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	private HttpServletResponse response=ServletActionContext.getResponse();
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private String targetdir; //保存路径
	private String targetfilename; //保存的文件名
	private String 	fileList[];
	private File logoFile;
	private String logoFileFileName;
	private String path;
	private String filename;
	private String contentType;
	private String id;
	private String employeename;
	
	
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public File getLogoFile() {
		return logoFile;
	}
	public void setLogoFile(File logoFile) {
		this.logoFile = logoFile;
	}
	public String getLogoFileFileName() {
		return logoFileFileName;
	}
	public void setLogoFileFileName(String logoFileFileName) {
		this.logoFileFileName = logoFileFileName;
	}
	public String[] getFileList() {
		return fileList;
	}
	public void setFileList(String[] fileList) {
		this.fileList = fileList;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getTargetdir() {
		return targetdir;
	}
	public void setTargetdir(String targetdir) {
		this.targetdir = targetdir;
	}
	public String getTargetfilename() {
		return targetfilename;
	}
	public void setTargetfilename(String targetfilename) {
		this.targetfilename = targetfilename;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public List<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
	public void setMissionService(MissionService missionService) {
		this.missionService = missionService;
	}
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}
	public int getTotal() {
		return total;
	}
	public List<Customer> getRows() {
		return rows;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setCustomerServiceImpl(CustomerService customerServiceImpl) {
		this.customerServiceImpl = customerServiceImpl;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String Customeradd() throws Exception {
		customerServiceImpl.add(customer);
		return SUCCESS;
	}
	
	public String customerList(){
		employees=missionService.listEmp();
		return "customerList";
	}
	
	public String list(){
		PageByEasyUi<Customer> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=customerServiceImpl.queryByPage(page);
		rows=page.getRows();
		total=page.getTotal();
		return "list";
	}
	
	public String customerAdd(){
		
		customer.setCreated_time(new Date().toLocaleString());
		customerServiceImpl.add(customer);
		employees=missionService.listEmp();
		
		prompt="新增成功！";
		
		return "customerList";
	}
	
	public String customerUpdate(){
		
		customerServiceImpl.updateCustomer(customer);
		employees=missionService.listEmp();
		prompt="修改成功！";
		
		return "customerList";
	}
	
	public String active(){
		customerServiceImpl.valid(customer_id, "激活");
		employees=missionService.listEmp();

		
		return "customerList";
	}
	
	public String inactive(){
		customerServiceImpl.valid(customer_id, "冻结");
		employees=missionService.listEmp();

		
		return "customerList";
	}
	
	public String uploadFile() throws IOException{
			// 保存文件的路径，必须是tomcat里面当前项目下的子路径 
	        String filePath = request.getServletContext().getRealPath("/uploadDocument");  
	         
	        File file =new File(filePath);
	        
	        if(!file.exists()){
	        	file.mkdirs();
	        }
	        
	        try {
				FileUtils.copyFile(logoFile, new File(file,logoFileFileName));
				FileUtils.copyFile(upload, new File(file,uploadFileName));
				
			} catch (IOException e) {
				e.printStackTrace();
			}
	        
	       
	        String path="/uploadDocument/"+logoFileFileName;
			
			String paths="/uploadDocument/"+uploadFileName;
			
			
			customerServiceImpl.updateContract(customer.getCustomer_id(), paths,path);
			
			prompt="上传成功！";
			
			employees=missionService.listEmp();
			
			return "customerList";
	}
	
	public String filefind() throws Exception{
		//获取request对象
		HttpServletRequest request=ServletActionContext.getRequest();
		//获取文件路径
		String path=request.getRealPath("/uploadDocument");
		File file=new File(path);
		//获取当前路径的所有文件
		fileList=file.list();
		return INPUT;
	}
	
	//返回一个InputStream类型,实现文件下载的函数
	public InputStream getInputStream(){
		
		return ServletActionContext.getServletContext().getResourceAsStream(path);
	}
	
	
	
	public String down() throws Exception{
		//解决下载的中文文件名问题
//		filename = java.net.URLEncoder.encode(filename,"utf-8");
	
		 response.setHeader("Content-Disposition","attachment;"+  
				 "filename="+ new String(filename.getBytes("ISO8859-1"), "GBK") );  
		
		
//		filename=new String(filename.getBytes("iso-8859-1"),"utf-8");
//		filename = new String(filename.getBytes("utf-8"), "ISO8859-1");  
//		filename = URLEncoder.encode(filename,"UTF-8");  
		path="/uploadDocument/"+filename;
//		System.out.println("path="+path);
//		System.out.println("filename="+filename);
		contentType="image/bmp,image/png,image/gif,image/jpeg,image/xlsx,image/zip,image/docx,image/txt";
		
		
		
		return SUCCESS;
	}
	
	
//	public InputStream getInputStream() {
//		   String name=filename;
//		//  String realPath=ServletActionContext.getServletContext().getRealPath("/uploadImages")+ "/"+name; 路径错误
//		   String realPath="/uploadDocument/"+name;
//		   InputStream in=ServletActionContext.getServletContext().getResourceAsStream(realPath);
//		   if(null==in){
//		    System.out.println("Can not find a java.io.InputStream with the name [inputStream] in the invocation stack. Check the <param name=\"inputName\"> tag specified for this action.检查action中文件下载路径是否正确.");  
//
//		   }
//		   return ServletActionContext.getServletContext().getResourceAsStream(realPath);
//		}
	
	public String details(){
		customer=customerServiceImpl.queryById(id);
		request.setAttribute("employeename", employeename);
		
		return "details";
	}
	
	//员工客户分页
		public String page()throws Exception{
			Pager4EasyUI<Customer> page=new Pager4EasyUI<Customer>();
			page.setPageSize(pageSize);
			page.setPage(pageNumber);
			Employee employee = new Employee();
			employee = (Employee)session.getAttribute("employee");
			page=customerServiceImpl.queryByPage(page,employee.getEmployee_id());
			rows=page.getRows();
			total=page.getTotal();
			return "list";
		}
			
		//链接
		public String list1()throws Exception{
			return "page";
		}
		
		
		//员工客户上传电子档案
		public String upfile()throws Exception{
			String path = request.getServletContext().getRealPath("/other");
			File file2 = new File(path);
			if(file2.exists()){
				file2.mkdirs();
			}
			FileUtil.copyFile(logoFile, new File(file2,logoFileFileName));
			String paths = "/other"+"/"+logoFileFileName;
			customer.setArchives(paths);
			customerServiceImpl.upfile(customer);
			return "page";
		}
		
		//员工客户修改
		public String update()throws Exception{
			customerServiceImpl.updatecustomer(customer);
			return "page";
		}
		
		//员工激活
		public String jihuo()throws Exception{
			customerServiceImpl.valid(customer_id, "激活");
			return "page";
		}
		
		//员工冻结
		public String dongjie()throws Exception{
			customerServiceImpl.valid(customer_id, "冻结");
			return "page";
		}
	
}
