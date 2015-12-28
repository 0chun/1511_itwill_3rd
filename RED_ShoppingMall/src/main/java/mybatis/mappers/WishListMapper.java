package mybatis.mappers;

import java.util.HashMap;
import java.util.List;

import com.itwill.red.dto.WishList;

public interface WishListMapper {

	public WishList selectByMemberId(String w_m_id);  
	public List<WishList> selectAll(); 
	public int selectCount(String w_m_id);
	public int insertWish(HashMap<String, Object> insertMap);
	public int selectWnoByMemberId(String w_m_id);
	public int insertWishDetail(HashMap<String, Object> insertMap);
	public int removeProduct(HashMap<String, Object> insertMap);
}
