package com.th.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Sale;
import com.th.common.HChart;
import com.th.common.PageByEasyUi;
import com.th.service.SaleService;

public class SaleAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private Sale sale;
	private SaleService saleService;
	private int pageNumber;
	private int pageSize;
	private  int total;
	private List<Sale> rows;
	private HttpServletResponse response=ServletActionContext.getResponse();
	List<HChart<Integer>> temps;
	
	public List<HChart<Integer>> getTemps() {
		return temps;
	}
	public void setTemps(List<HChart<Integer>> temps) {
		this.temps = temps;
	}
	public int getTotal() {
		return total;
	}
	public List<Sale> getRows() {
		return rows;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public Sale getSale() {
		return sale;
	}
	public void setSale(Sale sale) {
		this.sale = sale;
	}
	public SaleService getSaleService() {
		return saleService;
	}
	public void setSaleService(SaleService saleService) {
		this.saleService = saleService;
	}
	
	public String saleList(){
		
		return "saleList";
	}
	
	public String list(){
		PageByEasyUi<Sale> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=saleService.queryByPage(page);
		rows=page.getRows();
		total=page.getTotal();
		return "list";
	}
	
	
	
	
	public String count(){
		return "saleCount";
	}
	
	public String count1(){
		return "saleCount1";
	}
	
	public void saleCount() throws IOException{
		
		response.setContentType("text/json;charset=utf-8");
//		List<HChart<Integer>> temps=new ArrayList<HChart<Integer>>();
		temps=new ArrayList<HChart<Integer>>();
		
		HChart<Integer> temp=new HChart<Integer>();
		
		temp.setName("销售数量");
		
		Integer[] data=new Integer[12];
		
		data[0]=saleService.sale1();
		data[1]=saleService.sale2();
		data[2]=saleService.sale3();
		data[3]=saleService.sale4();
		data[4]=saleService.sale5();
		data[5]=saleService.sale6();
		data[6]=saleService.sale7();
		data[7]=saleService.sale8();
		data[8]=saleService.sale9();
		data[9]=saleService.sale10();
		data[10]=saleService.sale11();
		data[11]=saleService.sale12();
		temp.setData(data);
		temps.add(temp);
		PrintWriter out=response.getWriter();
		
		out.println(JSON.toJSONString(temps));
//		System.out.println(JSON.toJSONString(temps));
	}
	
	
}
