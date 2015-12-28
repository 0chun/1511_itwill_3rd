package com.itwill.red.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.itwill.red.dto.Orders;

public interface OrdersDao {

	void setSqlSession(SqlSession sqlSession);

	ArrayList<Orders> selectByO_M_Id(String o_m_id) throws Exception;

	// select one
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#selectByO_no(int)
	 */
	Orders selectByO_no(int o_no) throws Exception;

	// create
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#insertOrders(com.itwill.red.dto.Orders)
	 */
	void insertOrders(Orders insertOrders) throws Exception;

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#updateOrders(com.itwill.red.dto.Orders)
	 */
	int updateOrders(Orders updateOrders) throws Exception;

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#deleteOrders(int)
	 */
	int deleteOrders(int o_no) throws Exception;

}