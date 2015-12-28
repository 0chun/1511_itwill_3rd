package com.itwill.red.dto;

import java.sql.Date;

public class Product {
	private int 	p_no;
	private String 	p_name;
	private int 	p_price;
	private String 	p_detail; 	// 상품 설명
	private Date 	p_indate; 	// 입고일
	private int 	p_sell;
	private int 	p_score;
	private int 	p_discount;
	private String 	p_size;
	private String 	p_color;
	private int 	p_ccode; 	// 상품 분류 코드 
	private String 	p_image;
	private String 	p_compay;
	private int calculationPrice;
	
	public Product(){
	}
	
	public int getCalculationPrice() {
		return calculationPrice;
	}

	public void setCalculationPrice(int calculationPrice) {
		this.calculationPrice = calculationPrice;
	}

	public int getP_sell() {
		return p_sell;
	}

	public void setP_sell(int p_sell) {
		this.p_sell = p_sell;
	}

	public int getP_score() {
		return p_score;
	}

	public void setP_score(int p_score) {
		this.p_score = p_score;
	}
	
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_detail() {
		return p_detail;
	}
	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}
	public Date getP_indate() {
		return p_indate;
	}
	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}
	public int getP_discount() {
		return p_discount;
	}
	public void setP_discount(int p_discount) {
		this.p_discount = p_discount;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public String getP_color() {
		return p_color;
	}
	public void setP_color(String p_color) {
		this.p_color = p_color;
	}
	public int getP_ccode() {
		return p_ccode;
	}
	public void setP_ccode(int p_ccode) {
		this.p_ccode = p_ccode;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public String getP_compay() {
		return p_compay;
	}
	public void setP_compay(String p_compay) {
		this.p_compay = p_compay;
	}

	@Override
	public String toString() {
		return "Product [p_no=" + p_no + ", p_name=" + p_name + ", p_price=" + p_price + ", p_detail=" + p_detail
				+ ", p_indate=" + p_indate + ", p_sell=" + p_sell + ", p_score=" + p_score + ", p_discount="
				+ p_discount + ", p_size=" + p_size + ", p_color=" + p_color + ", p_ccode=" + p_ccode + ", p_image="
				+ p_image + ", p_compay=" + p_compay + "]";
	}
	
	public int calculationPrice() {
		calculationPrice = p_price - ((p_price * p_discount) / 100);
		return calculationPrice;
	}
}
