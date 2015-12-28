package com.itwill.red.dao;

import java.util.ArrayList;

import com.itwill.red.dto.WishList_Detail;

public interface WishListDetailDao {

	// Read
	WishList_Detail selectByWDNo(int wd_no) throws Exception;

	ArrayList<WishList_Detail> selectByWishNo(int wd_w_no) throws Exception;

	ArrayList<WishList_Detail> selectByProductNo(int wd_p_no) throws Exception;

	ArrayList<WishList_Detail> selectAll() throws Exception;
	//

	int create(WishList_Detail wdDto) throws Exception;

	int update(WishList_Detail wdDto);

	int delete(int wd_no);

}