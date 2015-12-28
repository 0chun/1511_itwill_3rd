package com.itwill.red.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.itwill.red.dto.Product;
import com.itwill.red.dto.Reviews;
import com.itwill.red.dto.WishList;

public interface WishListService {

	
	WishList selectByMemberId(String w_m_id) throws Exception;	//아이디로 위리시스트 전체 컬럼 검색
	List<WishList> selectAll() throws Exception; 	//전체 검색
	int selectCount(String w_m_id);	//위시리스트 존재여부 확인
	int insertWish(HashMap<String, Object> insertMap) throws Exception;	//위시리스트 처음만들 때 삽입
	int selectWnoByMemberId(String w_m_id);	//아이디로 위시리스트 번호 검색 
	int insertWishDetail(HashMap<String, Object> insertMap);	//위시리스트 디테일에만 삽입
	List<Product> findProductList(String w_m_id); // 아이디로 위시리스트에 상품가져오기
	int removeProduct(HashMap<String, Object> insertMap); //상품삭제
}