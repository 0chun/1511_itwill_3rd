package com.itwill.red.service;

import java.util.ArrayList;
import java.util.Map;

import com.itwill.red.dto.Orders;

public interface OrdersService {

	ArrayList<Orders> selectByMemberId(String m_id) throws Exception;

	void insertOrders(Orders ordDto) throws Exception;

}