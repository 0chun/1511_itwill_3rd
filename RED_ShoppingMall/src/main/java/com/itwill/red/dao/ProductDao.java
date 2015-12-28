package com.itwill.red.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.itwill.red.dto.Product;

public interface ProductDao {

	Product selectByProductNo(int p_no) throws Exception;

	Product selectByProductName(String p_name) throws Exception;

	List<Product> selectByProductPrice(int start_price, int end_price) throws Exception;

	List<Product> selectByCompany(String p_company) throws Exception;

	List<Product> selectAll() throws Exception;
	int create(Product pDto) throws Exception;

	int update(Product pDto) throws Exception;

	int delete(int p_no) throws Exception;

	public List<Product> selectBestSell() throws Exception;

	public List<Product> upSellProduct() throws Exception;

	public List<Product> relationProduct(HashMap<String, Integer> map) throws Exception;

	List<Product> relationsProductRandomList();
	
	public List<Product> findProductByCode(int p_ccode) throws Exception;
	//충만
	public List<Product> searchProductList(HashMap<String, Object> map) throws Exception;

	ArrayList<Product> selectBestSell(int i);

	ArrayList<Product> upSellProduct(int i);

	ArrayList<Product> selectNewSell();

	ArrayList<Product> selectNewSell(int i);

	ArrayList<Product> selectSaleSell();

}
