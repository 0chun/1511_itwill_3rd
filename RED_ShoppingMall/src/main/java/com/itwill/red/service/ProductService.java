package com.itwill.red.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.itwill.red.dao.ProductDao;
import com.itwill.red.dto.Product;

public interface ProductService {
	void setProductDao(ProductDao productDao);
	public ArrayList<Product> selectAll() throws Exception;
	public Product findByNo(int p_no) throws Exception;
	public List<Product> selectBestSell() throws Exception;
	public List<Product> selectUpSell() throws Exception;
	public ArrayList<Product> relationProduct(HashMap<String, Integer> map) throws Exception;
	ArrayList<Product> relationsProductRandomList();
	public List<Product> findProductByCode(int p_ccode) throws Exception;
	//충만
	public List<Product> searchProductList(HashMap<String, Object> map)throws Exception;
	ArrayList<Product> selectBestSell(int i) throws Exception;
	ArrayList<Product> selectUpSell(int i) throws Exception;
	List<Product> selectNewSell();
	List<Product> selectNewSell(int i);
	List<Product> selectSaleSell();
}