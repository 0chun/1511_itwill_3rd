package mybatis.mappers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.itwill.red.dto.OrdersDetail;

public interface OrdersDetailMapper {
	public ArrayList<OrdersDetail> selectByOrderNo(int od_o_no);
	public void removeOrdDetail(Map<String, Integer> tMap);
	public void insertOrdDetatil(HashMap<String, String> arr);
}
