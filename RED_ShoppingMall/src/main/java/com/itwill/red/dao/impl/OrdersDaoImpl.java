package com.itwill.red.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.itwill.red.dao.OrdersDao;
import com.itwill.red.db.ConnectionPool;
import com.itwill.red.dto.Orders;
import com.itwill.red.sql.OrdersSQL;

import mybatis.mappers.OrdersMapper;

/*
	int o_no;
	String o_m_id;
	Date o_date;
	int o_total;
	int o_dcharge;
	String o_zipcode;
	String o_address;
	String o_phone;
 */

public class OrdersDaoImpl implements OrdersDao {
	// select all (같은 o_m_id(회원 아이디)를 가진 orders 전체 선택)
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#OrdersList(java.lang.String)
	 */
	SqlSession sqlSession;
	
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrdersDao#setSqlSession(org.apache.ibatis.session.SqlSession)
	 */
	@Override
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrdersDao#selectByO_M_Id(java.lang.String)
	 */
	@Override
	public ArrayList<Orders> selectByO_M_Id(String o_m_id) throws Exception {
		return sqlSession.getMapper(OrdersMapper.class).selectByOrderList(o_m_id);
	}

	// select one
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#selectByO_no(int)
	 */
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrdersDao#selectByO_no(int)
	 */
	@Override
	public Orders selectByO_no(int o_no) throws Exception {
		Orders findorders = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(OrdersSQL.SELECT_BY_O_NO);
			pstmt.setInt(1, o_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				findorders = new Orders(rs.getInt("o_no"), rs.getString("o_m_id"), rs.getDate("o_date"),
						rs.getInt("o_total"), rs.getInt("o_dcharge"), rs.getString("o_zipcode"),
						rs.getString("o_address"), rs.getString("o_phone"));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return findorders;
	}

	// create
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#insertOrders(com.itwill.red.dto.Orders)
	 */
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrdersDao#insertOrders(com.itwill.red.dto.Orders)
	 */
	@Override
	public void insertOrders(Orders insertOrders) throws Exception {
		sqlSession.getMapper(OrdersMapper.class).insertOrder(insertOrders);
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#updateOrders(com.itwill.red.dto.Orders)
	 */
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrdersDao#updateOrders(com.itwill.red.dto.Orders)
	 */
	@Override
	public int updateOrders(Orders updateOrders) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(OrdersSQL.UPDATE_ORDERS);
			pstmt.setString(1, updateOrders.getO_m_id());
			pstmt.setDate(2, updateOrders.getO_date());
			pstmt.setInt(3, updateOrders.getO_total());
			pstmt.setInt(4, updateOrders.getO_dcharge());
			pstmt.setString(5, updateOrders.getO_zipcode());
			pstmt.setString(6, updateOrders.getO_address());
			pstmt.setString(7, updateOrders.getO_phone());
			pstmt.setInt(8, updateOrders.getO_no());
			pstmt.executeUpdate();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();		
			}
		return row;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrderDao#deleteOrders(int)
	 */
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.OrdersDao#deleteOrders(int)
	 */
	@Override
	public int deleteOrders(int o_no) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(OrdersSQL.DELETE_ORDERS);
			pstmt.setInt(1, o_no);
			row = pstmt.executeUpdate();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();		
			}
		return row;
		}
	}
