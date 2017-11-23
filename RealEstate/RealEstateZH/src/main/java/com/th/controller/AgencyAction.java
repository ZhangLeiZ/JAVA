package com.th.controller;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Agency;
import com.th.service.AgencyService;
import com.th.service.EmployeeService;

public class AgencyAction extends ActionSupport{
	
	private static final long serialVersionUID = -3857326130663009742L;
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	private Agency agency;
	private AgencyService agencyServiceImpl;
	private EmployeeService employeeServiceImpl;
	public void setEmployeeServiceImpl(EmployeeService employeeServiceImpl) {
		this.employeeServiceImpl = employeeServiceImpl;
	}
	//上传图片参数
	private File logoFile;
	private String logoFileFileName;
	private String agencyPhone;
	private String agencyPwd;
	private String oldpwd;
	private String newpwd;
	private int agen;
	private String prompt;
	
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}
	public void setAgen(int agen) {
		this.agen = agen;
	}
	public String getAgencyPhone() {
		return agencyPhone;
	}
	public void setAgencyPhone(String agencyPhone) {
		this.agencyPhone = agencyPhone;
	}
	public String getAgencyPwd() {
		return agencyPwd;
	}
	public void setAgencyPwd(String agencyPwd) {
		this.agencyPwd = agencyPwd;
	}
	public String getOldpwd() {
		return oldpwd;
	}
	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}
	public String getNewpwd() {
		return newpwd;
	}
	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
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
	public void setAgencyServiceImpl(AgencyService agencyServiceImpl) {
		this.agencyServiceImpl = agencyServiceImpl;
	}
	public Agency getAgency() {
		return agency;
	}
	public void setAgency(Agency agency) {
		this.agency = agency;
	}
	
	//登录
	public String login()throws Exception{
		if(agencyPhone==null && agencyPwd==null ){
			if(agen==1){
				return "login";
			}else{
				return ERROR;
			}
		}else{
				agency = agencyServiceImpl.agencylogin(agencyPhone,employeeServiceImpl.MD5Util(agencyPwd));
			if(agency!=null && !agency.equals("") && agency.getAgency_status().equals("激活")){
				session.setAttribute("agency", agency);
			}else{
				//否则返回登录页面
				request.setAttribute("msg", "用户名或密码错误，或你的账号没有激活");
				return ERROR;
			}
		}
		return "login";
	}
	//注册
	public String add() throws Exception {
		if(agency!=null){
			if(logoFile!=null && !logoFile.equals("")){
				agency.setAgency_logo(employeeServiceImpl.uploadFile(logoFile));
		}else{
				agency.setAgency_logo("/images/EhXMKTTovOtGipiW784N.jpg");
		}
				agency.setAgency_pwd(employeeServiceImpl.MD5Util(agency.getAgency_pwd()));
				//入驻时间
				agency.setCreated_time(new Date().toLocaleString());
				// 默认为N未审核
				agency.setChecked_status("N");
				// 默认为0未激活
				
				agency.setAgency_status("冻结");
				
				prompt="新增成功!";
				agencyServiceImpl.add(agency);
		}else{
			return "login";
		}
		
		return ERROR;
	}
	
	//修改经销商数据
	public String update()throws Exception{
		try {
			if(logoFile!=null && !logoFile.equals("")){
				agency.setAgency_logo(employeeServiceImpl.uploadFile(logoFile));
			}
				if(agency!=null){
					agency = agencyServiceImpl.updateagency(agency);
					session.setAttribute("agency", agency);
					
					prompt="修改成功!";
					
				}
		} catch (Exception e) {
				return "update";
		}
		return "update";
	}
	//退出登录
	public String logout() throws Exception{
				session.invalidate();
		return ERROR;
	}
	
	//修改密码
	public String pwd()throws Exception{
		try {
			agency = (Agency)session.getAttribute("agency");
			if(agency.getAgency_pwd().equals(employeeServiceImpl.MD5Util(oldpwd))){
				agency.setAgency_pwd(employeeServiceImpl.MD5Util(newpwd));
				agencyServiceImpl.updatepwd(agency);
				
				prompt="修改密码成功！";
				
				addFieldError("agency_pwd", "恭喜你，密码修改成功");
			}else{
				addFieldError("agency_pwd", "密码修改失败，原密码输入错误！");
			}
		} catch (Exception e) {
			return "pwd";
		}
				
		
		return "pwd";
	}
}
