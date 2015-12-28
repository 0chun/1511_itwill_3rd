package com.itwill.red.sql;

public class Orders_detailSQL {
	public static final String SELECT_ORDERS_DETAIL_LIST="select * from orders_detail";
	public static final String SELECT_BY_OD_NO="select * from orders_detail where od_no=?";
	public static final String INSERT_ORDERS_DETAIL="INSERT INTO ORDERS_DETAIL(od_no, od_o_no, od_p_no, od_amount, od_price) VALUES(od_no_seq.NEXTVAL, ?, ?, ?, ?)";
	public static final String UPDATE_ORDERS_DETAIL="update orders_detail set od_o_no = ?, od_p_no = ?, od_amount = ?, od_price = ? where od_no = ?";
	public static final String DELETE_ORDERS_DETAIL="delete from orders_detail where od_no=?";
}
