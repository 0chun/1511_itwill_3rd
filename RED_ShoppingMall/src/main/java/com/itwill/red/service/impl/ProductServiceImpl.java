package com.itwill.red.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Component;

import com.itwill.red.dao.ProductDao;
import com.itwill.red.dto.Product;
import com.itwill.red.service.ProductService;

@Component
public class ProductServiceImpl implements ProductService {
	ProductDao productDao;

	/* (non-Javadoc)
	 * @see com.itwill.red.service.impl.ProductService#setProductDao(com.itwill.red.dao.ProductDao)
	 */
	@Override
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.service.impl.ProductService#selectAll()
	 */
	@Override
	public ArrayList<Product> selectAll() throws Exception {
		ArrayList<Product> pList = null;
		pList = (ArrayList<Product>) productDao.selectAll();
		return pList;
	}

	@Override
	public Product findByNo(int p_no) throws Exception {
		return productDao.selectByProductNo(p_no);
	}

	@Override
	public ArrayList<Product> selectBestSell() throws Exception {
		return (ArrayList<Product>)productDao.selectBestSell();
	}

	@Override
	public ArrayList<Product> selectUpSell() throws Exception {
		return (ArrayList<Product>)productDao.upSellProduct();
	}

	@Override
	public ArrayList<Product> relationProduct(HashMap<String, Integer> map) throws Exception {
		return (ArrayList<Product>)productDao.relationProduct(map);
	}
	
	@Override
	public ArrayList<Product> relationsProductRandomList(){
		return (ArrayList<Product>) productDao.relationsProductRandomList();
	}

	@Override
	public List<Product> findProductByCode(int p_ccode) throws Exception {
		return (ArrayList<Product>) productDao.findProductByCode(p_ccode);
	}
	//충만
	@Override
	public List<Product> searchProductList(HashMap<String, Object> map) throws Exception {
		return productDao.searchProductList(map);
	}

	@Override
	public ArrayList<Product> selectBestSell(int i) throws Exception {
		return (ArrayList<Product>)productDao.selectBestSell(i);
	}

	@Override
	public ArrayList<Product> selectUpSell(int i) throws Exception {
		return (ArrayList<Product>)productDao.upSellProduct(i);
	}

	@Override
	public List<Product> selectNewSell() {
		return (ArrayList<Product>)productDao.selectNewSell();
	}

	@Override
	public List<Product> selectNewSell(int i) {
		return (ArrayList<Product>)productDao.selectNewSell(i);
	}

	@Override
	public List<Product> selectSaleSell() {
		return (ArrayList<Product>)productDao.selectSaleSell();
	}
}