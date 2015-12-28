package com.itwill.red.dto;

import java.util.List;


public class WishList {
	private int 	w_no; 	// 위시리스트 번호
	private String 	w_m_id; // 회원 ID
	private List<WishList_Detail> wishList_Detail;
	
	public WishList() {
		// 초기화 생성자는 용도에 맞게 생성후 공유 부탁해요
	}
	
	public int getW_no() {
		return w_no;
	}
	public void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public String getW_m_id() {
		return w_m_id;
	}
	public void setW_m_id(String w_m_id) {
		this.w_m_id = w_m_id;
	}
	public List<WishList_Detail> getWishList_Detail() {
		return wishList_Detail;
	}
	public void setWishList_Detail(List<WishList_Detail> wishList_Detail) {
		this.wishList_Detail = wishList_Detail;
	}

	@Override
	public String toString() {
		return "WishList [w_no=" + w_no + ", w_m_id=" + w_m_id + ", wishList_Detail=" + wishList_Detail + "]";
	}
}
