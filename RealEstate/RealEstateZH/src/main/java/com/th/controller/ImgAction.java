package com.th.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.javafx.iio.ImageLoadListener;
import com.th.bean.Img;
import com.th.service.ImgService;

public class ImgAction extends ActionSupport implements ServletRequestAware{
	private Img img;
	private ImgService imgServiceImpl;
	private HttpServletRequest request;
	private List<String> uploadFileName;
	private List<File> upload;
	private String id;
	private List<Img> list;
	
	public List<Img> getList() {
		return list;
	}
	public void setList(List<Img> list) {
		this.list = list;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public void setImgServiceImpl(ImgService imgServiceImpl) {
		this.imgServiceImpl = imgServiceImpl;
	}
	public Img getImg() {
		return img;
	}
	public void setImg(Img img) {
		this.img = img;
	}
	
	
	public String add(){
		
		return "imgAdd";
	}
	
	
	public String Imgadd() throws Exception {
		
		String path = ServletActionContext.getRequest().getRealPath("/upload");
		File savefile = new File(path);
		
		 if(!savefile.exists()){
			 savefile.mkdirs();
	     }
		
        for(int i = 0 ; i < upload.size() ; i++ ){  
            OutputStream os = new FileOutputStream(new File(path,uploadFileName.get(i)));  
            InputStream is = new FileInputStream(upload.get(i));  
            byte[] buf = new byte[1024];  
            int length = 0 ;  
              
            while(-1 != (length = is.read(buf) ) )  
            {  
                os.write(buf, 0, length) ;  
            }  
            
            
           String paths="/upload/"+uploadFileName.get(i);
            
            img.setImg_path(paths);
            
            img.setImg_des(img.getImg_des());
            
            imgServiceImpl.add(img);
            
            System.out.println(uploadFileName.get(i));
            is.close();  
            os.close();  
              
        }
        list=imgServiceImpl.queryByIdImg(img.getBuildings_id());
		
		return "imgList";
	}
	
	public String imageList(){
		
		
		list=imgServiceImpl.queryByIdImg(id);
		
		if(list.size()==0){
			return "imgAdd";
			
		}else{
			
			return "imgList";
			
		}
		
	}
	
	public String delete(){
		imgServiceImpl.delete(img);
		
		list=imgServiceImpl.queryByIdImg(img.getBuildings_id());
		return "imgList";
	}
	
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}
	
}
