package com.itwill.red.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.itwill.red.dao.Orders_detatilDao;
import com.itwill.red.db.ConnectionPool;
import com.itwill.red.dto.OrdersDetail;
import com.itwill.red.sql.Orders_detailSQL;

import mybatis.mappers.OrdersDetailMapper;

/*
	int od_no;
	int od_o_no;
	int od_p_no;
	int od_amount;
	int od_price;
 */
@Component
public class OrdersDetailDaoImpl implements Orders_detatilDao {
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.itwill.red.dao.impl.Orders_detatilDao#OrdersList()
	 */
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<OrdersDetail> selectByOrderNo(int od_o_no) {
		/*
		 * sqlSession.getMapper(OrderDetailMapper.class).selectByOrderNo(
		 * od_o_no)
		 */
		List<OrdersDetail> list = sqlSession.getMapper(OrdersDetailMapper.class).selectByOrderNo(od_o_no);
		// sqlSession.selectList("mybatis.mappers.Orders_DetailMapper.selectByOrderNo",
		// od_o_no);
		return list;
	}

	@Override
	public List<OrdersDetail> selectByOrderNo_JoinProduct(int od_o_no) {
		List<OrdersDetail> list = sqlSession.selectList("mybatis.mappers.Orders_DetailMapper.selectByOrderNo", od_o_no);
		return list;
	}

	// select all
	@Override
	public ArrayList<OrdersDetail> OrdersList() throws Exception {
		ArrayList<OrdersDetail> orders_detailList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(Orders_detailSQL.SELECT_ORDERS_DETAIL_LIST);
			rs = pstmt.executeQuery();
			orders_detailList = new ArrayList<OrdersDetail>();
			OrdersDetail orders_detail = null;
			while (rs.next()) {
				orders_detail = new OrdersDetail();
				orders_detail.setOd_no(rs.getInt("od_no"));
				orders_detail.setOd_o_no(rs.getInt("od_o_no"));
				orders_detail.setOd_p_no(rs.getInt("od_p_no"));
				orders_detail.setOd_amount(rs.getInt("od_amount"));
				orders_detail.setOd_price(rs.getInt("od_price"));
				orders_detailList.add(orders_detail);
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return orders_detailList;
	}

	// select one
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.itwill.red.dao.impl.Orders_detatilDao#selectByOd_no(int)
	 */
	@Override
	public OrdersDetail selectByOd_no(int od_no) throws Exception {
		OrdersDetail findorders_detail = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(Orders_detailSQL.SELECT_BY_OD_NO);
			pstmt.setInt(1, od_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				findorders_detail = new OrdersDetail(rs.getInt("od_no"), rs.getInt("od_o_no"), rs.getInt("od_p_no"),
						rs.getInt("od_amount"), rs.getInt("od_price"));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return findorders_detail;
	}

	// insert
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.itwill.red.dao.impl.Orders_detatilDao#insertOrders_detail(com.itwill.
	 * red.dto.Orders_detail)
	 */
	@Override
	public int insertOrders_detail(OrdersDetail insertOrders_detail) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(Orders_detailSQL.INSERT_ORDERS_DETAIL);
			// parameter setting
			pstmt.setInt(1, insertOrders_detail.getOd_o_no());
			pstmt.setInt(2, insertOrders_detail.getOd_p_no());
			pstmt.setInt(3, insertOrders_detail.getOd_amount());
			pstmt.setInt(4, insertOrders_detail.getOd_price());
			row = pstmt.executeUpdate();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return row;
	}

	// update
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.itwill.red.dao.impl.Orders_detatilDao#updateOrders_detail(com.itwill.
	 * red.dto.Orders_detail)
	 */
	@Override
	public int updateOrders_detail(OrdersDetail updateOrders_detail) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(Orders_detailSQL.UPDATE_ORDERS_DETAIL);
			pstmt.setInt(1, updateOrders_detail.getOd_o_no());
			pstmt.setInt(2, updateOrders_detail.getOd_p_no());
			pstmt.setInt(3, updateOrders_detail.getOd_amount());
			pstmt.setInt(4, updateOrders_detail.getOd_price());
			pstmt.setInt(5, updateOrders_detail.getOd_no());
			row = pstmt.executeUpdate();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return row;
	}

	@Override
	public int deleteOrders_detail(int od_no) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(Orders_detailSQL.DELETE_ORDERS_DETAIL);
			pstmt.setInt(1, od_no);
			int deleteRow = pstmt.executeUpdate();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return row;
	}

	@Override
	public void removeOrdDetail(String o_no, String p_no) {
		HashMap<String, Integer> tMap = new HashMap<String, Integer>();
		tMap.put("od_o_no", Integer.parseInt(o_no));
		tMap.put("od_p_no", Integer.parseInt(p_no));
		sqlSession.getMapper(OrdersDetailMapper.class).removeOrdDetail(tMap);
	}

	@Override
	public void inserdOrdDetail(ArrayList<HashMap<String, String>> pList) {
		for (HashMap<String, String> arr : pList) {
			sqlSession.getMapper(OrdersDetailMapper.class).insertOrdDetatil(arr);
		}
	}
}