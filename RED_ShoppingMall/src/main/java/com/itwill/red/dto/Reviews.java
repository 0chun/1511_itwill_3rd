package com.itwill.red.dto;

import java.util.Date;

public class Reviews {
	private int 	r_no;
	private int 	r_p_no; 
	private int 	r_price; 
	private int 	r_design;
	private int 	r_quality;
	private String 	r_nickName;
	private String 	r_summary; 
	private String 	r_review;
	//11월27일 추가
	private Date r_date;
	//12월 2일 추가
	private String r_m_id;
	
	
	
	public Reviews() {
		
	}
	
	public Reviews(int r_no, int r_p_no, int r_price, int r_design, int r_quality, String r_nickName, String r_summary,
			String r_review, Date r_date, String r_m_id) {
		super();
		this.r_no = r_no;
		this.r_p_no = r_p_no;
		this.r_price = r_price;
		this.r_design = r_design;
		this.r_quality = r_quality;
		this.r_nickName = r_nickName;
		this.r_summary = r_summary;
		this.r_review = r_review;
		this.r_date = r_date;
		this.r_m_id = r_m_id;
	}



	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getR_p_no() {
		return r_p_no;
	}
	public void setR_p_no(int r_p_no) {
		this.r_p_no = r_p_no;
	}
	public int getR_price() {
		return r_price;
	}
	public void setR_price(int r_price) {
		this.r_price = r_price;
	}
	public int getR_design() {
		return r_design;
	}
	public void setR_design(int r_design) {
		this.r_design = r_design;
	}
	public int getR_quality() {
		return r_quality;
	}
	public void setR_quality(int r_quality) {
		this.r_quality = r_quality;
	}
	public String getR_nickName() {
		return r_nickName;
	}
	public void setR_nickName(String r_nickName) {
		this.r_nickName = r_nickName;
	}
	public String getR_summary() {
		return r_summary;
	}
	public void setR_summary(String r_summary) {
		this.r_summary = r_summary;
	}
	public String getR_review() {
		return r_review;
	}
	public void setR_review(String r_review) {
		this.r_review = r_review;
	}

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	

	public String getR_m_id() {
		return r_m_id;
	}

	public void setR_m_id(String r_m_id) {
		this.r_m_id = r_m_id;
	}
	
	@Override
	public String toString() {
		return "Reviews [r_no=" + r_no + ", r_p_no=" + r_p_no + ", r_price=" + r_price + ", r_design=" + r_design
				+ ", r_quality=" + r_quality + ", r_nickName=" + r_nickName + ", r_summary=" + r_summary + ", r_review="
				+ r_review + ",r_date="+r_date+",r_m_id="+r_m_id+"]";
	}
}
