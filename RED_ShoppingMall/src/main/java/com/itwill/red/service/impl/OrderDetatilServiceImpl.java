package com.itwill.red.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.itwill.red.dao.Orders_detatilDao;
import com.itwill.red.dto.OrdersDetail;
import com.itwill.red.service.OrderDetailService;

@Component
public class OrderDetatilServiceImpl implements OrderDetailService {
	
	@Autowired
	Orders_detatilDao orderDetatilDao;
	
	/* (non-Javadoc)
	 * @see com.itwill.red.service.impl.OrderDetailService#setOrderDetatilDao(com.itwill.red.dao.Orders_detatilDao)
	 */
	@Override
	public void setOrderDetatilDao(Orders_detatilDao orderDetatilDao) {
		this.orderDetatilDao = orderDetatilDao;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.service.impl.OrderDetailService#selectByO_no(int)
	 */
	@Override
	public ArrayList<OrdersDetail> selectByO_no(int o_no){
		ArrayList<OrdersDetail> ordDList = (ArrayList<OrdersDetail>) orderDetatilDao.selectByOrderNo(o_no);
		return ordDList;
	}
	
	@Override
	public void removeOrdDetail(String o_no, String p_no){
		orderDetatilDao.removeOrdDetail(o_no, p_no);
	}

	@Override
	public void insertOrdDetatil(ArrayList<HashMap<String, String>> pList) {
		orderDetatilDao.inserdOrdDetail(pList);
	}
}
