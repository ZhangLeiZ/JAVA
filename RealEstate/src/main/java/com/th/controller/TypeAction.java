package com.th.controller;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Type;
import com.th.common.PageByEasyUi;
import com.th.service.TypeService;

public class TypeAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private Type type;
	private TypeService typeService;
	
	private int pageSize;
	private int pageNumber;	
	private int total;
	private List<Type> rows;
	private String id;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public void setTypeService(TypeService typeService) {
		this.typeService = typeService;
	}
	
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getTotal() {
		return total;
	}
	
	public List<Type> getRows() {
		return rows;
	}
	
	public String list(){
		
		return "list";
	}
	
	public String listPage(){		
		
		PageByEasyUi<Type> page = new PageByEasyUi<Type>();
		page.setPageSize(pageSize);     
		page.setPage(pageNumber);       
		page = typeService.page(page);
		rows = page.getRows();
		total = page.getTotal();
		return "listPage";		
	}
	public String add(){
		type.setType_status("激活");
		typeService.add(type);
		return "add";
	}
	public String update(){
		typeService.update(type);
		return "update";
	}
	
	public String active(){
		typeService.valid(id, "激活");
		return "list";
	}
	
	public String  inactive(){
		typeService.valid(id, "冻结");
		return "list";
	}

}
