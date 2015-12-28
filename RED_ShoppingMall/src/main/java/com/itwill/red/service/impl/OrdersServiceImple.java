package com.itwill.red.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.itwill.red.dao.OrdersDao;
import com.itwill.red.dao.Orders_detatilDao;
import com.itwill.red.dto.Orders;
import com.itwill.red.dto.OrdersDetail;
import com.itwill.red.service.OrdersService;

@Component
public class OrdersServiceImple implements OrdersService {
	@Autowired
	OrdersDao ordersDao;
	
	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}
	/* (non-Javadoc)
	 * @see com.itwill.red.service.impl.OrdersService#selectByMemberId(java.lang.String)
	 */
	@Override
	public ArrayList<Orders> selectByMemberId(String m_id) throws Exception{
		ArrayList<Orders> ordList = ordersDao.selectByO_M_Id(m_id);
		return ordList;
	}
	
	@Override
	public void insertOrders(Orders ordDto) throws Exception{
		ordersDao.insertOrders(ordDto);
	}
}
