package mybatis.mappers;

import java.util.List;
import java.util.Map;

import com.itwill.red.dto.Reviews;

public interface ReviewMappers {
	public Reviews findReviewNo(int r_no);
	public List<Reviews> findReviewProductNo(int r_p_no);
	public List<Reviews> findReviewNick(String nickName);
	public List<Reviews> findAllReview();
	public int findAllReviewCount();
	public int findReviewProductCount(int r_p_no);
	public int insertReview(Reviews insertReview);
	public int updateReview(Reviews updateReview);
	public int deleteReview(int r_no);
	public int findAvgReview(int r_p_no);
	public List<Integer> findAvgReviewList(int r_p_no);
	public List<Reviews> findReviewId(String r_m_id);
	public List<Map<String, String>>findReviewIDResult(String r_m_id);

	//12월7일
	public List<Map<String, String>> findReviewIdPaging(String r_m_id, int start, int last);
	public int findReviewIdCount(String r_m_id);
}
