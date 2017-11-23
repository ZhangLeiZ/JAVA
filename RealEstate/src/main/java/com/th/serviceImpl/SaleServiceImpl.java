package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Sale;
import com.th.common.PageByEasyUi;
import com.th.dao.SaleDAO;
import com.th.service.SaleService;

public class SaleServiceImpl implements SaleService {

	private SaleDAO saleDAO;
	

	public void setSaleDAO(SaleDAO saleDAO) {
		this.saleDAO = saleDAO;
	}

	@Override
	public Sale queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Sale t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Sale t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void add(Sale t) {
		saleDAO.add(t);
		
	}

	@Override
	public void valid(String id, String valid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int count() {
		
		return saleDAO.count();
	}

	@Override
	public List<Sale> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageByEasyUi<Sale> queryByPage(PageByEasyUi<Sale> page) {
		
		return saleDAO.queryByPage(page);
	}

	@Override
	public int sale1() {
		return saleDAO.sale1();
	}

	@Override
	public int sale2() {
		return saleDAO.sale2();
	}

	@Override
	public int sale3() {
		return saleDAO.sale3();
	}

	@Override
	public int sale4() {
		
		return saleDAO.sale4();
	}

	@Override
	public int sale5() {
		return saleDAO.sale5();
	}

	@Override
	public int sale6() {
		return saleDAO.sale6();
	}

	@Override
	public int sale7() {
		
		return saleDAO.sale7();
	}

	@Override
	public int sale8() {
		
		return saleDAO.sale8();
	}

	@Override
	public int sale9() {
		
		return saleDAO.sale9();
	}

	@Override
	public int sale10() {
	
		return saleDAO.sale10();
	}

	@Override
	public int sale11() {
		
		return saleDAO.sale11();
	}

	@Override
	public int sale12() {
		return saleDAO.sale12();
	}

}
