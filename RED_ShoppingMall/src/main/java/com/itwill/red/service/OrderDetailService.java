package com.itwill.red.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.itwill.red.dao.Orders_detatilDao;
import com.itwill.red.dto.OrdersDetail;

public interface OrderDetailService {

	void setOrderDetatilDao(Orders_detatilDao orderDetatilDao);

	ArrayList<OrdersDetail> selectByO_no(int o_no);

	void removeOrdDetail(String o_no, String p_no);

	void insertOrdDetatil(ArrayList<HashMap<String, String>> plist);

}