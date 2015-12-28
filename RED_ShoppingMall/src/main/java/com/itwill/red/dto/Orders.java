package com.itwill.red.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

public class Orders {
	private int o_no;
	private String o_m_id; // 주문-Member ID
	private Date o_date; // 주문날짜
	private int o_total; // 주문 총비용
	private int o_dcharge; // 배송비
	private String o_zipcode; // 우편번호
	private String o_address; // 주소
	private String o_phone; // 전화번호
	private String o_status;
	private ArrayList<OrdersDetail> o_d_list;
	private String o_name;
	private ArrayList<HashMap<String, String>> o_p_list;
	
	public ArrayList<HashMap<String, String>> getO_p_list() {
		return o_p_list;
	}

	public void setO_p_list(ArrayList<HashMap<String, String>> o_p_list) {
		this.o_p_list = o_p_list;
	}

	public String getO_name() {
		return o_name;
	}

	public void setO_name(String o_name) {
		this.o_name = o_name;
	}

	public String getO_status() {
		return o_status;
	}

	public void setO_status(String o_status) {
		this.o_status = o_status;
	}


	public Orders() {

	}

	public ArrayList<OrdersDetail> getO_d_list() {
		return o_d_list;
	}

	public void setO_d_list(ArrayList<OrdersDetail> o_d_list) {
		this.o_d_list = o_d_list;
	}

	public Orders(int o_no, String o_m_id, Date o_date, int o_total, int o_dcharge, String o_zipcode, String o_address,
			String o_phone) {
		super();
		this.o_no = o_no;
		this.o_m_id = o_m_id;
		this.o_date = o_date;
		this.o_total = o_total;
		this.o_dcharge = o_dcharge;
		this.o_zipcode = o_zipcode;
		this.o_address = o_address;
		this.o_phone = o_phone;
	}

	public int getO_no() {
		return o_no;
	}

	public void setO_no(int o_no) {
		this.o_no = o_no;
	}

	public String getO_m_id() {
		return o_m_id;
	}

	public void setO_m_id(String o_m_id) {
		this.o_m_id = o_m_id;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public int getO_total() {
		return o_total;
	}

	public void setO_total(int o_total) {
		this.o_total = o_total;
	}

	public int getO_dcharge() {
		return o_dcharge;
	}

	public void setO_dcharge(int o_dcharge) {
		this.o_dcharge = o_dcharge;
	}

	public String getO_zipcode() {
		return o_zipcode;
	}

	public void setO_zipcode(String o_zipcode) {
		this.o_zipcode = o_zipcode;
	}

	public String getO_address() {
		return o_address;
	}

	public void setO_address(String o_address) {
		this.o_address = o_address;
	}

	public String getO_phone() {
		return o_phone;
	}

	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}

	@Override
	public String toString() {
		return "Orders [o_no=" + o_no + ", o_m_id=" + o_m_id + ", o_date=" + o_date + ", o_total=" + o_total
				+ ", o_dcharge=" + o_dcharge + ", o_zipcode=" + o_zipcode + ", o_address=" + o_address + ", o_phone="
				+ o_phone + ", o_status=" + o_status + ", o_d_list=" + o_d_list + ", o_name=" + o_name + ", o_p_list="
				+ o_p_list + "]";
	}
}
