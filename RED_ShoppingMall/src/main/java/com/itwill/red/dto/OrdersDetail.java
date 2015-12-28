package com.itwill.red.dto;

public class OrdersDetail {
	private int od_no;		// 주문 상세번호 
	private int od_o_no; 	// 주문디테일 - 주문번호
	private int od_p_no; 	// 주문디테일 - 상품번호
	private int od_amount; 	// 상품 주문 수량
	private int od_price;	// 상품 가격
	private Product od_prd;
	private String od_option; // 선택한 사이즈, 상품옵션 기술

	public String getOd_option() {
		return od_option;
	}

	public void setOd_option(String od_option) {
		this.od_option = od_option;
	}

	public Product getOd_prd() {
		return od_prd;
	}

	public void setOd_prd(Product od_prd) {
		this.od_prd = od_prd;
	}

	public OrdersDetail() {
		// TODO Auto-generated constructor stub
	}

	public OrdersDetail(int od_no, int od_o_no, int od_p_no, int od_amount, int od_price) {
		super();
		this.od_no = od_no;
		this.od_o_no = od_o_no;
		this.od_p_no = od_p_no;
		this.od_amount = od_amount;
		this.od_price = od_price;
	}

	public int getOd_no() {
		return od_no;
	}

	public void setOd_no(int od_no) {
		this.od_no = od_no;
	}

	public int getOd_o_no() {
		return od_o_no;
	}

	public void setOd_o_no(int od_o_no) {
		this.od_o_no = od_o_no;
	}

	public int getOd_p_no() {
		return od_p_no;
	}

	public void setOd_p_no(int od_p_no) {
		this.od_p_no = od_p_no;
	}

	public int getOd_amount() {
		return od_amount;
	}

	public void setOd_amount(int od_amount) {
		this.od_amount = od_amount;
	}

	public int getOd_price() {
		return od_price;
	}

	public void setOd_price(int od_price) {
		this.od_price = od_price;
	}

	@Override
	public String toString() {
		return "OrdersDetail [od_no=" + od_no + ", od_o_no=" + od_o_no + ", od_p_no=" + od_p_no + ", od_amount="
				+ od_amount + ", od_price=" + od_price + ", od_prd=" + od_prd + ", od_option=" + od_option + "]";
	}
}
