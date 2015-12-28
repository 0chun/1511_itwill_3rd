package mybatis.mappers;

import java.util.ArrayList;

import com.itwill.red.dto.Orders;

public interface OrdersMapper {
	public ArrayList<Orders> selectByOrderList(String o_m_id);
	public void insertOrder(Orders ordDto);
}
