package com.itwill.red.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwill.red.dto.Reviews;
import com.itwill.red.exception.ReviewException;
import com.itwill.util.ListPageConfigBean;
import com.itwill.util.ListResultBean;

public interface ReviewService {

	//review 한개 상세정보
	HashMap<String, HashMap<String, String>> getReviewDetail(int r_no) throws Exception;

	Reviews findReviewNo(int r_no) throws Exception;

	List<Reviews> findAllReview() throws Exception;

	List<Reviews> findReviewProductNo(int r_p_no) throws Exception;

	List<Reviews> findReviewNick(String nickName) throws Exception;
	
	int findAvgReview(int r_p_no) throws Exception; //11월 27일 추가
	
	List<Integer> findAvgReviewList(int r_p_no) throws Exception;

	int insertReview(Reviews insertReview) throws Exception;

	int updateReview(Reviews updateReview) throws Exception;

	int deleteReview(int r_no) throws Exception;

	int findAllReviewCount() throws Exception;

	int findReviewProductCount(int r_p_no) throws Exception;
	
	List<Reviews> findReviewId(String r_m_id) throws Exception;
	
	List<Map<String, String>>findReviewIDResult(String r_m_id) throws Exception;
	
	//12월7일
	List<Map<String, String>> findReviewIdPaging(String r_m_id, int start, int last) throws Exception; //12월7일
	int findReviewIdCount(String r_m_id) throws Exception;
	ListResultBean findIdListPaging(ListPageConfigBean pageConfig, String r_m_id) throws Exception;

}