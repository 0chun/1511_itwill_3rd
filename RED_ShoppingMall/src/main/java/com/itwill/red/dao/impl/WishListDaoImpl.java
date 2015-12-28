package com.itwill.red.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itwill.red.dao.WishListDao;
import com.itwill.red.db.ConnectionPool;
import com.itwill.red.dto.WishList;

import mybatis.mappers.WishListMapper;


public class WishListDaoImpl implements WishListDao {
	private WishListMapper wishListMapper;
	
	public void setWishListMapper(WishListMapper wishListMapper) {
		this.wishListMapper = wishListMapper;
	}

	// Read
	@Override
	public WishList selectByMemberId(String w_m_id) throws Exception {
		return wishListMapper.selectByMemberId(w_m_id);
	}

	@Override
	public List<WishList> selectAll() throws Exception {
		return wishListMapper.selectAll();
	}

	@Override
	public int selectCount(String w_m_id) {
		return wishListMapper.selectCount(w_m_id);
	}
	
	@Override
	public int insertWish(HashMap<String, Object> insertMap) throws Exception {
		return wishListMapper.insertWish(insertMap);
	}

	@Override
	public int selectWnoByMemberId(String w_m_id) {
		return wishListMapper.selectWnoByMemberId(w_m_id);
	}

	@Override
	public int insertWishDetail(HashMap<String, Object> insertMap) {
		return wishListMapper.insertWishDetail(insertMap);
	}

	@Override
	public int removeProduct(HashMap<String, Object> insertMap) {
		return wishListMapper.removeProduct(insertMap);
	}

	
	
	
//	public WishList selectByMemberId(String w_m_id) throws Exception {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		WishList wDto = null;
//		String sql = "SELECT * FROM WISHLIST WHERE w_m_id = ?";
//		try {
//			conn = ConnectionPool.getInstance().getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, w_m_id);
//			rs = pstmt.executeQuery();
//			if (rs.next()) {
//				wDto = setWishList(rs);
//			}
//		} finally {
//			if (rs != null)
//				rs.close();
//			if (pstmt != null)
//				pstmt.close();
//			if (conn != null)
//				conn.close();
//		}
//		return wDto;
//	}
//
//	public List selectAll() throws Exception {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		WishList wDto = null;
//		List<WishList> list = new ArrayList<WishList>();
//		String sql = "SELECT * FROM WISHLIST";
//		try {
//			conn = ConnectionPool.getInstance().getConnection();
//			pstmt = conn.prepareStatement(sql);
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				wDto = setWishList(rs);
//				list.add(wDto);
//			}
//		} finally {
//			if (rs != null)
//				rs.close();
//			if (pstmt != null)
//				pstmt.close();
//			if (conn != null)
//				conn.close();
//		}
//		return list;
//	}
//	//
//
//	public int create(WishListDao wDto) throws Exception {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		String sql = "INSERT INTO WISHLIST (w_no,w_m_id) VALUES(w_no_seq.NEXTVAL, ?)";
//		int row = -99;
//
//		try {
//			conn = ConnectionPool.getInstance().getConnection();
//			pstmt = conn.prepareStatement(sql);
//		} finally {
//			if (pstmt != null)
//				pstmt.close();
//			if (conn != null)
//				conn.close();
//		}
//		return row;
//	}
//
//	/*
//	 * private int update(WishListDao wDto) throws Exception{ Connection conn =
//	 * null; PreparedStatement pstmt = null; String sql = "UPDATE WISHLIST  ";
//	 * int row = -99;
//	 * 
//	 * try{ conn= ConnectionPool.getInstance().getConnection();
//	 * pstmt=conn.prepareStatement(sql); }finally{ if (pstmt != null)
//	 * pstmt.close(); if (conn != null) conn.close(); } return row; }
//	 */
//	public int delete(int w_no) throws Exception {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		String sql = "DELETE FROM WISHLIST WHERE w_no=?";
//		int row = -99;
//
//		try {
//			conn = ConnectionPool.getInstance().getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, w_no);
//			row = pstmt.executeUpdate();
//		} finally {
//			if (pstmt != null)
//				pstmt.close();
//			if (conn != null)
//				conn.close();
//		}
//		return row;
//	}
//
////	private WishList setWishList(ResultSet rs) throws Exception {
//		WishList wDto = new WishList();
//		wDto.setW_no(rs.getInt("w_no"));
//		wDto.setW_m_id(rs.getString("w_m_id"));
//		return wDto;
//	}
}
