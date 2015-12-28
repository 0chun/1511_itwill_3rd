package com.itwill.red.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.binding.BindingException;
import org.apache.ibatis.session.SqlSession;

import com.itwill.red.dao.ReviewsDao;
import com.itwill.red.dto.Reviews;
import com.itwill.util.MyBatisSqlSessionFactory;

import mybatis.mappers.ReviewMappers;

public class ReviewsDaoImpl implements ReviewsDao {
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#findReviewNo(int)
	 */
	
	private SqlSession sqlSession;
	/*private ReviewMapper reviewMapper;
	
	
	public ReviewMapper getReviewMapper() {
		return reviewMapper;
	}
	public void setReviewMapper(ReviewMapper reviewMapper) {
		this.reviewMapper = reviewMapper;
	}*/
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	private static ReviewsDao _instance;
	public static ReviewsDao getInstance(){
		if(_instance==null){
			_instance = new ReviewsDaoImpl();
		}
		return _instance;
	}
	@Override
	public Reviews findReviewNo(int r_no){
		SqlSession sqlSession = null;
		Reviews findReview = null;
		
		try{
			sqlSession = MyBatisSqlSessionFactory.getSqlSession();
			//findReview = sqlSession.selectOne(namespace+"findReviewNo", r_no);
			findReview = sqlSession.getMapper(ReviewMappers.class).findReviewNo(r_no);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		return findReview;
	}
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#findReviewProductNo(int)
	 */
	@Override
	public List<Reviews> findReviewProductNo(int r_p_no){
		SqlSession sqlSession = null;
		List<Reviews> reviewList = null;
		
		try{
			sqlSession = MyBatisSqlSessionFactory.getSqlSession();
			//reviewList = sqlSession.selectList(namespace+"findReviewProductNo", r_p_no);
			reviewList = sqlSession.getMapper(ReviewMappers.class).findReviewProductNo(r_p_no);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
		return reviewList;
	}
	
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#findReviewNick(java.lang.String)
	 */
	@Override
	public List<Reviews> findReviewNick(String nickName){
		SqlSession sqlSession = null;
		List<Reviews> reviewList = null;
		
		try{
			sqlSession = MyBatisSqlSessionFactory.getSqlSession();
			//reviewList = sqlSession.selectList(namespace+"findReviewNick", nickName);
			reviewList = sqlSession.getMapper(ReviewMappers.class).findReviewNick(nickName);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
		return reviewList;
	}
	
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#findAllReview()
	 */
	@Override
	public List<Reviews> findAllReview(){
		SqlSession sqlSession = null;
		List<Reviews> reviewList = null;
		
		try{
			sqlSession = MyBatisSqlSessionFactory.getSqlSession();
			//reviewList = sqlSession.selectList(namespace+"findAllReview");
			reviewList = sqlSession.getMapper(ReviewMappers.class).findAllReview();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
		return reviewList;
	}
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#findAllReviewCount()
	 */
	@Override
	public int findAllReviewCount(){
		SqlSession sqlSession = null;
		int count=0;
		try{
			sqlSession=MyBatisSqlSessionFactory.getSqlSession();
			//count = sqlSession.selectOne(namespace+"findAllReviewCount");
			count = sqlSession.getMapper(ReviewMappers.class).findAllReviewCount();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
		return count;
	}
	
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#findReviewProductCount(int)
	 */
	@Override
	public int findReviewProductCount(int r_p_no){
		SqlSession sqlSession = null;
		int count=0;
		try{
			sqlSession=MyBatisSqlSessionFactory.getSqlSession();
			//count = sqlSession.selectOne(namespace+"findReviewProductCount", r_p_no);
			count = sqlSession.getMapper(ReviewMappers.class).findReviewProductCount(r_p_no);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
		return count;
	}
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#insertReview(com.itwill.red.dto.Reviews)
	 */
	@Override
	public int insertReview(Reviews insertReview){
		SqlSession sqlSession=null;
		int insertCount=-999;
		try{
			sqlSession=MyBatisSqlSessionFactory.getSqlSession();
			//insertCount=sqlSession.insert(namespace+"insertReview", insertReview);
			insertCount=sqlSession.getMapper(ReviewMappers.class).insertReview(insertReview);
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally{
			if(sqlSession!=null){
				sqlSession.commit();
				sqlSession.close();
			}
		}
		return insertCount;
	}
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#updateReview(com.itwill.red.dto.Reviews)
	 */
	@Override
	public int updateReview(Reviews updateReview){
		SqlSession sqlSession = null;
		int updateCount = -999;
		try{
			sqlSession=MyBatisSqlSessionFactory.getSqlSession();
			//updateCount=sqlSession.update(namespace+"updateReview", updateReview);
			updateCount=sqlSession.getMapper(ReviewMappers.class).updateReview(updateReview);
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			if(sqlSession!=null){
				sqlSession.commit();
				sqlSession.close();
			}
		}
		return updateCount;
	}
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.ReviewsDao#deleteReview(int)
	 */
	@Override
	public int deleteReview(int r_no){
		
		SqlSession sqlSession=null;
		int deleteCount=-999;
		try{
			sqlSession=MyBatisSqlSessionFactory.getSqlSession();
			//deleteCount=sqlSession.delete(namespace+"deleteReview",r_no);
			deleteCount=sqlSession.getMapper(ReviewMappers.class).deleteReview(r_no);
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			if(sqlSession!=null){
				sqlSession.commit();
				sqlSession.close();
			}
		}
		return deleteCount;
	
	}
	@Override
	public int findAvgReview(int r_p_no) {
		
			SqlSession sqlSession = null;
			int count=0;
			try{
				sqlSession=MyBatisSqlSessionFactory.getSqlSession();
				//count = sqlSession.selectOne(namespace+"findAllReviewCount");
				count = sqlSession.getMapper(ReviewMappers.class).findAvgReview(r_p_no);
			} catch(BindingException be){
				
			} catch(Exception e){
				e.printStackTrace();
			}finally{
				if(sqlSession!=null){
					sqlSession.close();
				}
			}
			
			return count;
		
	}
	@Override
	public List<Integer> findAvgReviewList(int r_p_no) {
		SqlSession sqlSession = null;
		List<Integer> count=null;
		try{
			sqlSession=MyBatisSqlSessionFactory.getSqlSession();
			//count = sqlSession.selectOne(namespace+"findAllReviewCount");
			count = sqlSession.getMapper(ReviewMappers.class).findAvgReviewList(r_p_no);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
		return count;
	}
	@Override
	public List<Reviews> findReviewId(String r_m_id) {
		SqlSession sqlSession = null;
		List<Reviews> reviewList = null;
		
		try{
			sqlSession = MyBatisSqlSessionFactory.getSqlSession();
			reviewList = sqlSession.getMapper(ReviewMappers.class).findReviewId(r_m_id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
		return reviewList;
	}
	@Override
	public List<Map<String, String>> findReviewIDResult(String r_m_id) {
		SqlSession sqlsession=null;
		List<Map<String, String>> reviewList = null;
		try{
			sqlSession = MyBatisSqlSessionFactory.getSqlSession();
			reviewList = sqlSession.getMapper(ReviewMappers.class).findReviewIDResult(r_m_id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlsession!=null){
				sqlsession.close();
			}
		}
		
		return reviewList;
	}
	//12월7일 페이징
	@Override
	public List<Map<String, String>> findReviewIdPaging(String r_m_id, int start, int last) {
		SqlSession sqlsession = null;
		List<Map<String, String>> rList = new ArrayList<Map<String, String>>();
		Map<String, String> rMap = null;
		Reviews review = new Reviews();
		review.setR_m_id(r_m_id);
		rMap.put("startRowNum", start+"");
		rMap.put("endRowNum", last+"");
		rMap.put("r_m_id", review+"");
		
		
		
		sqlSession = MyBatisSqlSessionFactory.getSqlSession();
		rList=sqlSession.getMapper(ReviewMappers.class).findReviewIdPaging(r_m_id, start, last);
		rList.add(rMap);
			
		
		return rList;
	}
	
	@Override
	public int findReviewIdCount(String r_m_id) {
		SqlSession sqlSession = null;
		int count=0;
		try{
			sqlSession=MyBatisSqlSessionFactory.getSqlSession();
			//count = sqlSession.selectOne(namespace+"findReviewProductCount", r_p_no);
			count = sqlSession.getMapper(ReviewMappers.class).findReviewIdCount(r_m_id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
		return count;
	}
	

	
}












