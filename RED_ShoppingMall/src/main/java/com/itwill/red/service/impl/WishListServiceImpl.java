package com.itwill.red.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.itwill.red.dao.WishListDao;
import com.itwill.red.dto.Product;
import com.itwill.red.dto.WishList;
import com.itwill.red.service.ProductService;
import com.itwill.red.service.WishListService;

public class WishListServiceImpl implements WishListService {
	WishListDao wishListDao;
	ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public void setWishListDao(WishListDao wishListDao) {
		this.wishListDao = wishListDao;
	}

	@Override
	public WishList selectByMemberId(String w_m_id) throws Exception {
		return wishListDao.selectByMemberId(w_m_id);
	}

	@Override
	public List<WishList> selectAll() throws Exception {
		return wishListDao.selectAll();
	}

	@Override
	public int selectCount(String w_m_id) {
		return wishListDao.selectCount(w_m_id);
	}
	
	@Override
	public int insertWish(HashMap<String, Object> insertMap) throws Exception {
		return wishListDao.insertWish(insertMap);
	}


	@Override
	public int insertWishDetail(HashMap<String, Object> insertMap) {
		return wishListDao.insertWishDetail(insertMap);
	}
	
	@Override
	public List<Product> findProductList(String w_m_id){	// 아이디로 위시리스트에 상품가져오기
		WishList wishList = null;
		List<Product> productList = new ArrayList<Product>();
		int p_no = 0;
		try {
			wishList = wishListDao.selectByMemberId(w_m_id);	// 아이디로 wishlist + wishlist_detail 찾기 
			for (int i = 0; i < wishList.getWishList_Detail().size(); i++) {
				p_no = wishList.getWishList_Detail().get(i).getWd_p_no();	// 아이디가 가진 상품번호 찾기
				productList.add(productService.findByNo(p_no));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}

	@Override
	public int removeProduct(HashMap<String, Object> insertMap) {
		return wishListDao.removeProduct(insertMap);
	}

	@Override
	public int selectWnoByMemberId(String w_m_id) {
		return wishListDao.selectWnoByMemberId(w_m_id);
	}
	
}
