package com.th.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.House;
import com.th.bean.HouseImg;
import com.th.common.PageByEasyUi;
import com.th.service.BuildingService;
import com.th.service.HouseService;

public class HouseAction extends ActionSupport{
	private House house;
	private HouseService houseServiceImpl;
	private BuildingService buildingServiceImpl;
	private int pageNumber;
	private int pageSize;
	private  int total;
	private List<House> rows;
	private List<Buildings> buildingAdd;
	private File logoFile;
	private String logoFileFileName;
	private HttpServletRequest request=ServletActionContext.getRequest();
	private String id;
	private String buildingsName;
	private List<HouseImg> houseImgs;
	private List<String> uploadFileName;
	private List<File> upload;
	private HouseImg houseImg;
	private String houseFind;
	private String prompt;
	
	public String getPrompt() {
		return prompt;
	}

	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}

	public String getHouseFind() {
		return houseFind;
	}

	public void setHouseFind(String houseFind) {
		this.houseFind = houseFind;
	}

	public HouseImg getHouseImg() {
		return houseImg;
	}

	public void setHouseImg(HouseImg houseImg) {
		this.houseImg = houseImg;
	}

	public List<String> getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public List<File> getUpload() {
		return upload;
	}

	public void setUpload(List<File> upload) {
		this.upload = upload;
	}

	public List<HouseImg> getHouseImgs() {
		return houseImgs;
	}

	public void setHouseImgs(List<HouseImg> houseImgs) {
		this.houseImgs = houseImgs;
	}

	public String getBuildingsName() {
		return buildingsName;
	}

	public void setBuildingsName(String buildingsName) {
		this.buildingsName = buildingsName;
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

	public void setBuildingServiceImpl(BuildingService buildingServiceImpl) {
		this.buildingServiceImpl = buildingServiceImpl;
	}

	public List<Buildings> getBuildingAdd() {
		return buildingAdd;
	}

	public void setBuildingAdd(List<Buildings> buildingAdd) {
		this.buildingAdd = buildingAdd;
	}

	public List<House> getRows() {
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
	public void setHouseServiceImpl(HouseService houseServiceImpl) {
		this.houseServiceImpl = houseServiceImpl;
	}
	public House getHouse() {
		return house;
	}
	public void setHouse(House house) {
		this.house = house;
	}
	public String houseAdd() throws Exception {
		// 保存文件的路径，必须是tomcat里面当前项目下的子路径 
        String filePath = request.getServletContext().getRealPath("/house");  
        File file =new File(filePath);
        if(!file.exists()){
        	file.mkdirs();
        }
        try {
			FileUtils.copyFile(logoFile, new File(file,logoFileFileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
        String pathe="/house";
        String path=pathe+"/"+logoFileFileName;
        house.setHouse_logo(path);
        house.setCreated_time(new Date().toLocaleString());
		houseServiceImpl.add(house);
		buildingAdd=buildingServiceImpl.List();
		
		prompt="新增成功！";
		
		return "houseList";
	}
	
	public String houseList(){
		buildingAdd=buildingServiceImpl.List();
		return "houseList";
	}
	
	public String list(){
		PageByEasyUi<House> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=houseServiceImpl.queryByPage(page);
		rows=page.getRows();
		total=page.getTotal();
		return "list";
	}
	
	public String House(){
		buildingAdd=buildingServiceImpl.List();
		request.setAttribute("hou", id);
		return "House";
	}
	
	public String houseFind() {
		buildingAdd=buildingServiceImpl.List();
		request.setAttribute("houseFind", houseFind);
		return "houseFind";
	}
	
	public String houselist(){
		PageByEasyUi<House> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		
		page=houseServiceImpl.queryByPage(page,id);
		rows=page.getRows();
		total=page.getTotal();
		
		return "housePage";
	}
	
	public String houseFindList() {
		PageByEasyUi<House> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		
		page=houseServiceImpl.queryByPageFind(page, houseFind);
		rows=page.getRows();
		total=page.getTotal();
		
		return "housefindjson";
	}
	
	
	public String houseUpdate(){
		 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
        String filePath = request.getServletContext().getRealPath("/house");  
         
        File file =new File(filePath);
        
        if(!file.exists()){
        	file.mkdirs();
        }
        
        
        if(logoFileFileName==null || logoFileFileName.equals("")){
        	
        	House logo=new House();
        	
        	logo=houseServiceImpl.queryById(house.getHouse_id());
        	
        	house.setHouse_logo(logo.getHouse_logo());
        	house.setCreated_time(new Date().toLocaleString());
        	houseServiceImpl.update(house);
        	
        	prompt="修改成功！";
        	
        	buildingAdd=buildingServiceImpl.List();
    		return "houseList";
    		
        }else{
        	
        	  try {
				FileUtils.copyFile(logoFile, new File(file,logoFileFileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
        	  
        	  String pathe="/house";
        	  String path=pathe+"/"+logoFileFileName;
	              
	           
	           house.setHouse_logo(path);
	           house.setCreated_time(new Date().toLocaleString());
	           houseServiceImpl.update(house);
	        	
	           prompt="修改成功！";
	           
	        	buildingAdd=buildingServiceImpl.List();
	    		return "houseList";
        }
		
        
		
	}
	
	
	public String active() {
		houseServiceImpl.valid(id, "激活");
		buildingAdd=buildingServiceImpl.List();
		return "list";
	}

	public String inactive() {
		
		houseServiceImpl.valid(id, "冻结");
		buildingAdd=buildingServiceImpl.List();
		return "list";
	}
	
	
	public String houseAdd2() throws Exception {
		
		// 保存文件的路径，必须是tomcat里面当前项目下的子路径 
        String filePath = request.getServletContext().getRealPath("/house");  
         
        File file =new File(filePath);
        
        if(!file.exists()){
        	file.mkdirs();
        }
        
        try {
			FileUtils.copyFile(logoFile, new File(file,logoFileFileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        String pathe="/house";
        String path=pathe+"/"+logoFileFileName;
        
        house.setHouse_logo(path);
        house.setCreated_time(new Date().toLocaleString());
        
		houseServiceImpl.add(house);
		
		
		prompt="新增成功！";
		
		buildingAdd=buildingServiceImpl.List();
		request.setAttribute("hou", id);
		return "House";
	}
	
	
	public String houseUpdate2(){
		 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
       String filePath = request.getServletContext().getRealPath("/house");  
        
       File file =new File(filePath);
       
       if(!file.exists()){
       	file.mkdirs();
       }
       
       
       if(logoFileFileName==null || logoFileFileName.equals("")){
       	
       	House logo=new House();
       	
       	logo=houseServiceImpl.queryById(house.getHouse_id());
       	
       	house.setHouse_logo(logo.getHouse_logo());
        house.setCreated_time(new Date().toLocaleString());
       	
       	houseServiceImpl.update(house);
       	
       	buildingAdd=buildingServiceImpl.List();
       	
       	prompt="修改成功！";
       	
		request.setAttribute("hou", house.getBuildings_id());
		return "House";
   		
       }else{
       	
       	  try {
				FileUtils.copyFile(logoFile, new File(file,logoFileFileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
       	  
       	  String pathe="/house";
       	  String path=pathe+"/"+logoFileFileName;
	              
	           
	           house.setHouse_logo(path);
	           house.setCreated_time(new Date().toLocaleString());
	           
	           houseServiceImpl.update(house);
	        	
	        	buildingAdd=buildingServiceImpl.List();
	        	prompt="修改成功！";
	        	request.setAttribute("hou", house.getBuildings_id());
	    		return "House";
       }
	
	}
	
	public String active2() {
		
		houseServiceImpl.valid(id, "激活");
		
		buildingAdd=buildingServiceImpl.List();
		
		request.setAttribute("hou", house.getBuildings_id());
		return "housePage";
	}

	public String inactive2() {
		
		houseServiceImpl.valid(id, "冻结");
		buildingAdd=buildingServiceImpl.List();
		request.setAttribute("hou", house.getBuildings_id());
		return "housePage";
	}
	
	
	public String houseDetailed(){
		house=houseServiceImpl.queryById(id);
		request.setAttribute("buildings", buildingsName);
		return "detailed";
	}
	
	public String HouseImg() throws Exception {
		houseImgs=houseServiceImpl.houseImgList(id);
		request.setAttribute("houseid", id);
		if(houseImgs.size()==0) {
			return "houseImgAdd";
		}else {
			return "houseImgList";
		}
	}
	
	public String houseImgAdd() throws IOException {
		String path = ServletActionContext.getRequest().getRealPath("/houseImg");
		File savefile = new File(path);
		
		 if(!savefile.exists()){
			 savefile.mkdirs();
	     }
		 
		 if(upload==null) {
			 	houseImgs=houseServiceImpl.houseImgList(houseImg.getHouse_id());
		        
		        request.setAttribute("houseid",houseImg.getHouse_id());
		        
				return "houseImgList";
			 
		 }else{
			 
			 for(int i = 0 ; i < upload.size() ; i++ ){  
		            OutputStream os = new FileOutputStream(new File(path,uploadFileName.get(i)));  
		            InputStream is = new FileInputStream(upload.get(i));  
		            byte[] buf = new byte[1024];  
		            int length = 0 ;  
		              
		            while(-1 != (length = is.read(buf) ) )  
		            {  
		                os.write(buf, 0, length) ;  
		            }  
		            
		            
		           String paths="/houseImg/"+uploadFileName.get(i);
		           
		           
		           
		           houseImg.setHouse_img(paths);
		           
		         
		           houseServiceImpl.HouseImgAdd(houseImg);
		          
		            is.close();  
		            os.close();  
		              
		        }
		        
		        houseImgs=houseServiceImpl.houseImgList(houseImg.getHouse_id());
		        
		        request.setAttribute("houseid",houseImg.getHouse_id());
		        return "houseImgList";
		 }
		
        
	}
	
	public String houseImgDelete() {
		houseServiceImpl.HouseImgDelete(houseImg);
		houseImgs=houseServiceImpl.houseImgList(houseImg.getHouse_id());
		request.setAttribute("houseid",houseImg.getHouse_id());
		 
		return "houseImgList";
	}	
}
