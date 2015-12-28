package com.itwill.red.sql;

public class OrdersSQL {
	public static final String SELECT_BY_O_M_ID = "SELECT * FROM ORDERS WHERE O_M_ID = ?";

	public static final String SELECT_BY_O_NO = "SELECT * FROM ORDERS WHERE O_NO = ?";

	public static final String INSERT_ORDERS = "INSERT INTO ORDERS(o_no, o_m_id, o_date, o_total, o_dcharge, o_zipcode, o_address, o_phone)"
			+ "VALUES (o_no_seq.NEXTVAL, ? , sysdate, ?, ?, ?, ?, ?)";

	public static final String UPDATE_ORDERS = "update orders set o_m_id = ?, o_date = ?, o_total = ?, o_dcharge = ?, o_zipcode = ?, o_address = ?, o_phone = ? where o_no = ?";

	public static final String DELETE_ORDERS = "delete from orders where o_no = ?";
}
