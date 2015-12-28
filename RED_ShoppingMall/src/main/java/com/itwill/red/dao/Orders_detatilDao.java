package com.itwill.red.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.itwill.red.dto.OrdersDetail;

public interface Orders_detatilDao {

	/******* singleton ********/

	// select all
	ArrayList<OrdersDetail> OrdersList() throws Exception;

	// select one
	OrdersDetail selectByOd_no(int od_no) throws Exception;

	// insert
	int insertOrders_detail(OrdersDetail insertOrders_detail) throws Exception;

	// update
	int updateOrders_detail(OrdersDetail updateOrders_detail) throws Exception;

	// delete
	int deleteOrders_detail(int od_no) throws Exception;

	void removeOrdDetail(String m_no, String p_no);

	List<OrdersDetail> selectByOrderNo(int od_o_no);

	List<OrdersDetail> selectByOrderNo_JoinProduct(int od_o_no);

	void inserdOrdDetail(ArrayList<HashMap<String, String>> pList);

}