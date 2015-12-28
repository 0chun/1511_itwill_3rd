package com.itwill.red.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.itwill.red.dto.Reviews;

public interface ReviewsDao {

	Reviews findReviewNo(int r_no);

	List<Reviews> findReviewProductNo(int r_p_no);

	List<Reviews> findReviewNick(String nickName);

	List<Reviews> findAllReview();

	int findAvgReview(int r_p_no);//11월 27일 추가
	
	List<Integer> findAvgReviewList(int r_p_no);
	
	int findAllReviewCount();

	int findReviewProductCount(int r_p_no);

	int insertReview(Reviews insertReview);

	int updateReview(Reviews updateReview);

	int deleteReview(int r_no);
	
	List<Reviews> findReviewId(String r_m_id);
	
	List<Map<String, String>>findReviewIDResult(String r_m_id);
	
	//12월7일
	List<Map<String, String>> findReviewIdPaging(String r_m_id, int start, int last);
	
	int findReviewIdCount(String r_m_id);

}