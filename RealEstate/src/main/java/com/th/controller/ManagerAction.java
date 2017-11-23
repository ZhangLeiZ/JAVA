package com.th.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.aspectj.util.FileUtil;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Activity;
import com.th.bean.Agency;
import com.th.bean.Article;
import com.th.bean.Buildings;
import com.th.bean.Employee;
import com.th.bean.Manager;
import com.th.bean.Type;
import com.th.common.ContextUtils;
import com.th.service.ActivityService;
import com.th.service.AgencyService;
import com.th.service.ArticleService;
import com.th.service.BuildingService;
import com.th.service.BuildingsService;
import com.th.service.EmployeeService;
import com.th.service.ManagerService;

public class ManagerAction extends ActionSupport{
	private static final long serialVersionUID = -554793244826730150L;

	private Manager manager;
	private Article article;
	private String article_content;
	private List<Type> types;
	private ArticleService articleServiceImpl;
	private ManagerService managerService;
	private EmployeeService employeeServiceImpl;
	private AgencyService agencyServiceImpl;
	private File logoFile;
	private String logoFileFileName;
	private File file;
	private int msg;
	private String employeeid;
	
	
	public List<Type> getTypes() {
		return types;
	}
	public void setTypes(List<Type> types) {
		this.types = types;
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
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	
	public ArticleService getArticleServiceImpl() {
		return articleServiceImpl;
	}
	public void setArticleServiceImpl(ArticleService articleServiceImpl) {
		this.articleServiceImpl = articleServiceImpl;
	}
	public void setEmployeeid(String employeeid) {
		this.employeeid = employeeid;
	}
	public int getMsg() {
		return msg;
	}
	public void setFile(File file) {
		this.file = file;
	}
	private String account;
	private String pwd;
	private int pageNumber;
	private int pageSize;
	private List<Object> rows;
	private int total;
	private String agencyid;
	private Agency agency;
	private Employee employee;
	public void setBuildings(Buildings buildings) {
		this.buildings = buildings;
	}
	private String activityid;
	private ActivityService activityServiceImpl;
	private Activity activity;
	private BuildingsService buildingsServiceImpl;
	public void setBuildingsServiceImpl(BuildingsService buildingsServiceImpl) {
		this.buildingsServiceImpl = buildingsServiceImpl;
	}
	public Activity getActivity() {
		return activity;
	}
	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	public void setActivityServiceImpl(ActivityService activityServiceImpl) {
		this.activityServiceImpl = activityServiceImpl;
	}
	public void setActivityid(String activityid) {
		this.activityid = activityid;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	private String struta;
	private String oldpassword;
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	private String newpassword;
	private Buildings buildings;
	
	public Buildings getBuildings() {
		return buildings;
	}
	public void setAgencyServiceImpl(AgencyService agencyServiceImpl) {
		this.agencyServiceImpl = agencyServiceImpl;
	}
	public Agency getAgency() {
		return agency;
	}

	public void setAgency(Agency agency) {
		this.agency = agency;
	}

	public void setAgencyid(String agencyid) {
		this.agencyid = agencyid;
	}
	
	public void setStruta(String struta) {
		this.struta = struta;
	}
	
	public List<Object> getRows() {
		return rows;
	}

	public int getTotal() {
		return total;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setEmployeeServiceImpl(EmployeeService employeeServiceImpl) {
		this.employeeServiceImpl = employeeServiceImpl;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	public String login()throws Exception{
		if(account==null && pwd==null){
			return "manlogin";
		}
				manager = managerService.Managerlogin(account, employeeServiceImpl.MD5Util(pwd));
				msg=3;
			if(manager!=null){
				session.setAttribute("manager",manager);
				msg=4;
			}else{
				return "manlogin";
			}
				return "manager";	
	}
	
	public String manexamine()throws Exception{
		return "manager";
	}
	public String manupdate()throws Exception{
		if(manager!=null && !manager.equals("")){
			if(file!=null && !file.equals("")){
				manager.setManager_image(employeeServiceImpl.uploadFile(file));
			}
			
			managerService.update(manager);
			manager = managerService.queryById(manager.getManager_id());
			session.setAttribute("manager",manager);
		}else{
			return "manupdate";
		}
		msg=1;
		return "manupdate";
	}
	public String maneupdatepwd()throws Exception{
		if(oldpassword !=null && !oldpassword.equals("") && newpassword !=null && !newpassword.equals("")){
			manager = (Manager)session.getAttribute("manager");
			if(manager.getManager_password().equals(employeeServiceImpl.MD5Util(oldpassword))){
				managerService.valid(manager.getManager_id(), employeeServiceImpl.MD5Util(newpassword));
				msg=2;
			}else{
				msg=5;
				return "manpwd";
			}
		}
		return "manpwd";
	}
	public String leyout()throws Exception{
		session.invalidate();
		return "manlogin";
	}
	
	public String agency()throws Exception{
		if(pageNumber==0 || pageSize==0 || struta==null){
			return "agency";
		}else{
			rows = managerService.AgencyFindByPage(pageNumber, pageSize, struta);
			total = managerService.managerCount("select count(*) from t_agency where agency_status='"+struta+"'");
		}
		return "agencys";	
	}
	public String upstatus()throws Exception{
		
		managerService.StatusUp("update t_agency set agency_status='激活' where agency_id='"+agencyid+"'");
		return "agencys";
	}
	public String downstatus()throws Exception{
		managerService.StatusUp("update t_agency set agency_status='冻结' where agency_id='"+agencyid+"'");
		return "agencys";
	}
	public String agencyExamine()throws Exception{	
		agency = agencyServiceImpl.queryById(agencyid);
		return "examine";
	}
	public String examine()throws Exception{	
		if(struta!=null && struta.equals("") && agencyid!=null && agencyid.equals("")){
			managerService.ExamineAndverify(struta, agencyid);
		}
		return "agency";		
	}
	public String employee()throws Exception{	
		if(pageNumber==0 || pageSize==0 || struta==null){
			return "employees";
		}else{
			rows = managerService.EmployeeFindByPage(pageNumber, pageSize, struta);
			total = managerService.managerCount("select count(*) from t_employee where employee_status='"+struta+"'");
		}
		return "employee";		
	}
	
	public String empupstatus()throws Exception{
		managerService.StatusUp("update t_employee set employee_status='激活' where employee_id='"+employeeid+"'");
		return "employee";
	}
	public String empdownstatus()throws Exception{
		managerService.StatusUp("update t_employee set employee_status='冻结' where employee_id='"+employeeid+"'");
		return "employee";
	}
	public String empExamine()throws Exception{	
		employee = employeeServiceImpl.queryById(employeeid);
		buildings = buildingsServiceImpl.queryById(employee.getBuildings_id());
		return "empexamine";
	}
	public String user()throws Exception{		
		return "user";		
	}
	public String activity()throws Exception{	
		if(pageNumber==0 || pageSize==0 || struta==null){
			return "activitys";
		}else{
			rows = managerService.ActivityFindByPage(pageNumber, pageSize, struta);
			total = managerService.managerCount("select count(*) from t_activity where activity_status='"+struta+"'");
		}
		return "activity";		
	}
	public String actupstatus()throws Exception{
			managerService.StatusUp("update t_activity set activity_status='激活' where activity_id='"+activityid+"'");
			return "activity";
	}
	public String actdownstatus()throws Exception{
			managerService.StatusUp("update t_activity set activity_status='冻结' where activity_id='"+activityid+"'");
			return "activity";
	}
	public String actExamine()throws Exception{	
			activity = activityServiceImpl.queryById(activityid);
			return "actexamine";
	}
	
	
							//文章
	
	private String articleId;
	public String getArticleId() {
		return articleId;
	}
	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}
	
	//文章的新增
	public String article()throws Exception{
		if(logoFile == null){
			types = articleServiceImpl.List();
			return "article";
		}
		String path = request.getServletContext().getRealPath("/other");
		File file1 = new File(path);
		if(file1.exists()){
			file1.mkdirs();
		}
		FileUtil.copyFile(logoFile, new File(file1,logoFileFileName));
		String paths = "/other"+"/"+logoFileFileName;
		System.out.println("图片="+logoFileFileName);
		article.setArticle_logo(paths);
		String contentUrl = "other/"+ContextUtils.getFilename()+".html";
		System.out.println("URL="+contentUrl);
		//将文章内容转换为HTML页面
		makehtml(article_content, contentUrl, request);
		article.setArticle_content(article_content);
		article.setContentUrl(contentUrl);
		article.setArticle_status("激活");
		articleServiceImpl.add(article);
		session.setAttribute("article", article);
		msg=9;
		return "articlelists";		
	}
	
	
	public String permission()throws Exception{		
		return "permission";		
	}
	
	//生成HTML页面
	private void makehtml(String content,String filename,HttpServletRequest request){
		String PAGE_HEAD="<!DOCTYPE HTML><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>";
		String PAGE_TAIL="</body></html>";
		content = PAGE_HEAD + content + PAGE_TAIL;
		String savePath = request.getRealPath("/") + filename;
		File file = new File(savePath);
			FileOutputStream fos;
		try {
			fos = new FileOutputStream(file);
			fos.write(content.getBytes());
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String articlelist()throws Exception{	
		if(pageNumber==0 || pageSize==0 || struta==null){
			return "articlelists";
		}else{
			rows = managerService.ArticleFindByPage(pageNumber, pageSize, struta);
			total = managerService.managerCount("select count(*) from t_article where article_status='"+struta+"'");
		}
		return "activity";		
	}
	
	public String artupstatus()throws Exception{
		managerService.StatusUp("update t_article set article_status='激活' where article_id='"+articleId+"'");
		return "activity";
	}
	public String artdownstatus()throws Exception{
		managerService.StatusUp("update t_article set article_status='冻结' where article_id='"+articleId+"'");
		return "activity";   
	}
	public String artExamine()throws Exception{	
		article = articleServiceImpl.queryById(articleId);
		return "artexamine";
	}
	public String articleup()throws Exception{	
		types = articleServiceImpl.List();
		article = articleServiceImpl.queryById(articleId);
		return "article";
	}
	public String articleupdate()throws Exception{	
		if(logoFile!=null){
			article.setArticle_logo(employeeServiceImpl.uploadFile(logoFile));
		}
		article.setArticle_content(article_content);
		articleServiceImpl.update(article);
		msg=10;
		return "articlelists";
	}
	public String articledelete()throws Exception{	
		if(articleId!=null){
			article = articleServiceImpl.queryById(articleId);
			articleServiceImpl.delete(article);
			msg=11;
		}
		return "articlelists";
	}
	
}
