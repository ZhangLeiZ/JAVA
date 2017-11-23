package com.th.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Agency;
import com.th.bean.Buildings;
import com.th.bean.House;
import com.th.common.PageByEasyUi;
import com.th.service.BuildingsService;
import com.th.service.HouseService;

public class BuildingsAction extends ActionSupport{
	private Buildings buildings;
	private BuildingsService buildingsServiceImpl;
	private List<Buildings> rows;
	private HttpServletRequest request=ServletActionContext.getRequest();
	private int pageNumber;
	private int pageSize;
	private  int total;
	private File logoFile;
	private String logoFileFileName;
	private String id;
	private Buildings builds;
	private Agency agency;
	HttpSession session = request.getSession();
	private String buildingsName;
	private String prompt;
	private Double longitudes;
	private Double latitudes;
	private HouseService houseServiceImpl;
	private String buildingsid;
	private List<House> houselist;
	
	
	public void setHouseServiceImpl(HouseService houseServiceImpl) {
		this.houseServiceImpl = houseServiceImpl;
	}
	public String getBuildingsid() {
		return buildingsid;
	}
	public void setBuildingsid(String buildingsid) {
		this.buildingsid = buildingsid;
	}
	public List<House> getHouselist() {
		return houselist;
	}
	public void setHouselist(List<House> houselist) {
		this.houselist = houselist;
	}
	public void setLongitudes(Double longitudes) {
		this.longitudes = longitudes;
	}
	public void setLatitudes(Double latitudes) {
		this.latitudes = latitudes;
	}
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}
	public String getBuildingsName() {
		return buildingsName;
	}
	public void setBuildingsName(String buildingsName) {
		this.buildingsName = buildingsName;
	}
	
	public void setAgency(Agency agency) {
		this.agency = agency;
	}
	
	public void setBuilds(Buildings builds) {
		this.builds = builds;
	}
	
	
	public Buildings getBuilds() {
		return builds;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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

	
	public int getTotal() {
		return total;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<Buildings> getRows() {
		return rows;
	}
	public void setBuildingsServiceImpl(BuildingsService buildingsServiceImpl) {
		this.buildingsServiceImpl = buildingsServiceImpl;
	}
	public Buildings getBuildings() {
		return buildings;
	}
	public void setBuildings(Buildings buildings) {
		this.buildings = buildings;
	}
	public String budilgAdd() throws Exception {
		
		// 保存文件的路径，必须是tomcat里面当前项目下的子路径 
        String filePath = request.getServletContext().getRealPath("/attached");  
         
        File file =new File(filePath);
        
        if(!file.exists()){
        	file.mkdirs();
        }
        
        try {
			FileUtils.copyFile(logoFile, new File(file,logoFileFileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        String pathe="/attached";
        String path=pathe+"/"+logoFileFileName;
	              
        buildings.setBuildings_logo(path);
        buildings.setLongitude(116.331398);
        buildings.setLatitude(39.897445);
        prompt="新增成功！";
        
		buildingsServiceImpl.add(buildings);
		return "buildList";
	}
	
	public String list(){
		agency=(Agency) session.getAttribute("agency");
		PageByEasyUi<Buildings> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		
		page=buildingsServiceImpl.queryByPage(page,agency.getAgency_id());
		rows=page.getRows();
		total=page.getTotal();
		return "list";	
	}
	
	public String FindList() {
		agency=(Agency) session.getAttribute("agency");
		PageByEasyUi<Buildings> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		
		
		page=buildingsServiceImpl.queryByPageFind(page, agency.getAgency_id(), buildingsName, buildingsName);
		rows=page.getRows();
		total=page.getTotal();
		return "findList";	
		
	}
	
	
	public String buildList(){
		return "buildList";
	}
	
	
	public String find(){
	
		request.setAttribute("buildingsName", buildings.getBuildings_name());
		return "find";
	}
	
	public String buildUpdate(){
		
		 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
        String filePath = request.getServletContext().getRealPath("/attached");  
         
        File file =new File(filePath);
        
        if(!file.exists()){
        	file.mkdirs();
        }
        
        
        if(logoFileFileName==null || logoFileFileName.equals("")){
        	
        	Buildings logo=new Buildings();
        	
        	logo=buildingsServiceImpl.queryById(buildings.getBuildings_id());
        	
        	buildings.setBuildings_logo(logo.getBuildings_logo());
        	
        	
        	prompt="修改成功！";
        	
        	buildingsServiceImpl.update(buildings);
        	
        	return "buildList";
        }else{
        	
        	  try {
				FileUtils.copyFile(logoFile, new File(file,logoFileFileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
        	  
        	  String pathe="/attached";
        	  String path=pathe+"/"+logoFileFileName;
	              
	           buildings.setBuildings_logo(path);
	           
	          prompt="修改成功！";
	           
	           
	           buildingsServiceImpl.update(buildings);
	      		
	           return "buildList";
        }
		
	}
	
	public String active() {
		
		buildingsServiceImpl.valid(id, "激活");
		return "list";
	}

	public String inactive() {
		
		buildingsServiceImpl.valid(id, "冻结");
		return "list";
	}
	
	public String  details(){
		builds=buildingsServiceImpl.queryById(id);
		return "details";
	}
	
	public String latitudeslog(){
		buildings=buildingsServiceImpl.queryById(id);
		buildings.setLatitude(latitudes);
		buildings.setLongitude(longitudes);
		buildingsServiceImpl.update(buildings);
        prompt="设置成功！";
		return "buildList";
	}
	
	public String xiangqing(){
		builds=buildingsServiceImpl.queryById(buildingsid);
		if(buildingsid!=null){
			houselist = houseServiceImpl.Houselist(buildingsid);    
		}
		return "xiangqing";
	}
	
}
