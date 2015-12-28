package com.itwill.red.service.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.itwill.red.dao.ProductDao;
import com.itwill.red.dao.ReviewsDao;
import com.itwill.red.dao.impl.ProductDaoImpl;
import com.itwill.red.dao.impl.ReviewsDaoImpl;
import com.itwill.red.dto.Product;
import com.itwill.red.dto.Reviews;
import com.itwill.red.exception.ReviewException;
import com.itwill.red.service.ReviewService;
import com.itwill.util.ListPageConfigBean;
import com.itwill.util.ListResultBean;
import com.itwill.util.PageCounter;


@Component
public class ReviewServiceImpl implements ReviewService {

	private static ReviewService _instance;
	
	
	private ReviewsDao reviewsDao;
	private ProductDao productDao;
	
	
	public ReviewsDao getReviewsDao() {
		return reviewsDao;
	}

	public void setReviewsDao(ReviewsDao reviewsDao) {
		this.reviewsDao = reviewsDao;
	}

	private ReviewServiceImpl(){
		reviewsDao = new ReviewsDaoImpl();
		productDao = new ProductDaoImpl();
	}
	
	public static ReviewService getInstance(){
		if(_instance==null){
			_instance=new ReviewServiceImpl();
		}
		return _instance;
	}

	private ReviewsDao getReviewDao(){
		return ReviewsDaoImpl.getInstance();
	}
	
	@Override
	public HashMap<String, HashMap<String, String>> getReviewDetail(int r_no) throws Exception {
		Product product = new Product();
		Reviews find = reviewsDao.findReviewNo(r_no);
		
		HashMap<String, HashMap<String, String>> hMap = new HashMap<String, HashMap<String, String>>();
		int row=0;
		HashMap<String, String> sMap = new HashMap<String, String>();
	
	
		product = productDao.selectByProductNo(find.getR_p_no());
		
		sMap.put("r_no", String.valueOf(find.getR_no()));
		sMap.put("r_p_no", String.valueOf(product.getP_no()));
		
		sMap.put("r_price", String.valueOf(find.getR_price()));
		sMap.put("r_design", String.valueOf(find.getR_design()));
		sMap.put("r_quality", String.valueOf(find.getR_quality()));
		sMap.put("r_nickname",find.getR_nickName());
		sMap.put("r_summary", find.getR_summary());
		sMap.put("r_review", find.getR_review());
		
		hMap.put(row+++"", sMap);
		
		return hMap;
	}

	@Override
	public Reviews findReviewNo(int r_no) throws Exception {
		return getReviewDao().findReviewNo(r_no);
	}

	@Override
	public List<Reviews> findReviewProductNo(int r_p_no) throws Exception {
		return getReviewDao().findReviewProductNo(r_p_no);
	}

	@Override
	public List<Reviews> findReviewNick(String nickName) throws Exception {
		return getReviewDao().findReviewNick(nickName);
	}

	@Override
	public List<Reviews> findAllReview() throws Exception {
		return getReviewDao().findAllReview();
	}

	@Override
	public int insertReview(Reviews insertReview) throws Exception {
		
		return getReviewDao().insertReview(insertReview);
	}

	@Override
	public int updateReview(Reviews updateReview) throws Exception {
		return getReviewDao().updateReview(updateReview);
	}

	@Override
	public int deleteReview(int r_no) throws Exception {
		return getReviewDao().deleteReview(r_no);
	}

	@Override
	public int findAllReviewCount() throws Exception {
		return getReviewDao().findAllReviewCount();
	}

	@Override
	public int findReviewProductCount(int r_p_no) throws Exception {
		return getReviewDao().findReviewProductCount(r_p_no);
	}

	@Override
	public int findAvgReview(int r_p_no) throws Exception { //11월 27일 추가
		return getReviewDao().findAvgReview(r_p_no);
	}

	@Override
	public List<Integer> findAvgReviewList(int r_p_no) throws Exception {
		return getReviewDao().findAvgReviewList(r_p_no);
	}

	@Override
	public List<Reviews> findReviewId(String r_m_id) throws Exception {
		return getReviewDao().findReviewId(r_m_id);
	}

	@Override
	public List<Map<String, String>> findReviewIDResult(String r_m_id) throws Exception {
		return getReviewDao().findReviewIDResult(r_m_id);
	}

	@Override
	public List<Map<String, String>> findReviewIdPaging(String r_m_id, int start, int last) throws Exception {
		
		return getReviewDao().findReviewIdPaging(r_m_id, start, last);
	}
	
	//12월7일
	
	public ListResultBean findIdListPaging(ListPageConfigBean pageConfig, String r_m_id) throws Exception{
	
		int totalRecordCount = findReviewIdCount(r_m_id);
		
		ListResultBean resultBean=
				PageCounter.getPagingInfo(
								Integer.parseInt(pageConfig.getSelectPage()),
								pageConfig.getRowCountPerPage(),
								pageConfig.getPageCountPerPage(),
								totalRecordCount);
		/*List<QnADto> boardList=
				qnaDao.findCodeList(pdt_code, resultBean.getStartRowNum(), resultBean.getEndRowNum());*/
		List<Map<String, String>> reviewList = getReviewDao().findReviewIdPaging(r_m_id, resultBean.getStartRowNum(), resultBean.getEndRowNum());
					
		resultBean.setList(reviewList);
		return resultBean;
								
	}

	@Override
	public int findReviewIdCount(String r_m_id) throws Exception {
		
		return getReviewDao().findReviewIdCount(r_m_id);
	}
}
