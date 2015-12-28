package com.itwill.red.dto;

public class WishList_Detail {
	private int wd_no;		// 위시리스트 상세번호 
	private int wd_w_no; 	// 위시리스트 번호
	private int wd_p_no; 	// 상품번호
	private int wd_amount; 	// 상품수량
	private int wd_price;
	
	public WishList_Detail() {
		// 초기화 생성자는 용도에 맞게 생성후 공유 부탁해요
	}
	
	public int getWd_no() {
		return wd_no;
	}
	public void setWd_no(int wd_no) {
		this.wd_no = wd_no;
	}
	public int getWd_c_no() {
		return wd_w_no;
	}
	public void setWd_c_no(int wd_c_no) {
		this.wd_w_no = wd_c_no;
	}
	public int getWd_p_no() {
		return wd_p_no;
	}
	public void setWd_p_no(int wd_p_no) {
		this.wd_p_no = wd_p_no;
	}
	public int getWd_amount() {
		return wd_amount;
	}
	public void setWd_amount(int wd_amount) {
		this.wd_amount = wd_amount;
	}
	public int getWd_private() {
		return wd_price;
	}
	public void setWd_private(int wd_private) {
		this.wd_price = wd_private;
	}

	@Override
	public String toString() {
		return "WishList_Detail [wd_no=" + wd_no + ", wd_c_no=" + wd_w_no + ", wd_p_no=" + wd_p_no + ", wd_amount="
				+ wd_amount + ", wd_price=" + wd_price + "]";
	}
}
