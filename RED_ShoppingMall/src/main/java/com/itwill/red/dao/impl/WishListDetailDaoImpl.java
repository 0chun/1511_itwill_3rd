package com.itwill.red.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.itwill.red.dao.WishListDetailDao;
import com.itwill.red.db.ConnectionPool;
import com.itwill.red.dto.WishList_Detail;

public class WishListDetailDaoImpl implements WishListDetailDao {

	// Read
	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.WishListDetailDao#selectByWDNo(int)
	 */
	@Override
	public WishList_Detail selectByWDNo(int wd_no) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		WishList_Detail wdDto = null;

		String sql = "SELECT * FROM WISHLIST_DETAIL WHERE wd_no = ?";

		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, wd_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				wdDto = setWishList_Detail(rs);
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return wdDto;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.WishListDetailDao#selectByWishNo(int)
	 */
	@Override
	public ArrayList<WishList_Detail> selectByWishNo(int wd_w_no) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<WishList_Detail> list = new ArrayList<WishList_Detail>();
		WishList_Detail wdDto = null;
		String sql = "SELECT * FROM WISHLIST_DETAIL WHERE wd_w_no=?";
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, wd_w_no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				wdDto = setWishList_Detail(rs);
				list.add(wdDto);
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}

		return list;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.WishListDetailDao#selectByProductNo(int)
	 */
	@Override
	public ArrayList<WishList_Detail> selectByProductNo(int wd_p_no) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<WishList_Detail> list = new ArrayList<WishList_Detail>();
		WishList_Detail wdDto = null;
		String sql = "SELECT * FROM WISHLIST_DETAIL WHERE wd_p_no=?";
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, wd_p_no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				wdDto = setWishList_Detail(rs);
				list.add(wdDto);
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return list;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.WishListDetailDao#selectAll()
	 */
	@Override
	public ArrayList<WishList_Detail> selectAll() throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<WishList_Detail> list = new ArrayList<WishList_Detail>();
		WishList_Detail wdDto = null;
		String sql = "SELECT * FROM WISHLIST_DETAIL";
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				wdDto = setWishList_Detail(rs);
				list.add(wdDto);
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return list;
	}
	//

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.WishListDetailDao#create(com.itwill.red.dto.WishList_Detail)
	 */
	@Override
	public int create(WishList_Detail wdDto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		StringBuffer sql = new StringBuffer();
		sql.append("INSET INTO WISHLIST_DETAIL VALUES (WD_NO_SEQ.NEXTVAL, ?, ?, ?, ?)");
		// c_no, p_no, amount, price

		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, wdDto.getWd_c_no());
			pstmt.setInt(2, wdDto.getWd_p_no());
			pstmt.setInt(3, wdDto.getWd_amount());
			pstmt.setInt(4, wdDto.getWd_private());
			row = pstmt.executeUpdate();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return row;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.WishListDetailDao#update(com.itwill.red.dto.WishList_Detail)
	 */
	@Override
	public int update(WishList_Detail wdDto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE WISHLIST_DETAIL SET wd_w_no=?, wd_p_no=?, ");
		sql.append("wd_amount=?, wd_price WHERE wd_no=?");
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.itwill.red.dao.impl.WishListDetailDao#delete(int)
	 */
	@Override
	public int delete(int wd_no) {
		return 0;
	}

	private WishList_Detail setWishList_Detail(ResultSet rs) throws Exception {
		WishList_Detail wdDto = new WishList_Detail();
		wdDto.setWd_no(rs.getInt("wd_no"));
		wdDto.setWd_c_no(rs.getInt("wd_c_no"));
		wdDto.setWd_p_no(rs.getInt("wd_p_no"));
		wdDto.setWd_amount(rs.getInt("wd_amount"));
		wdDto.setWd_private(rs.getInt("wd_price"));
		return null;
	}
}
