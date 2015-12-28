package com.itwill.red.dto;

public class Member {
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_sex;
	private String m_phone;
	private String m_zipcode;
	private String m_address;
	private String m_email;
	
	public Member() {
	}

	public Member(String m_id, String m_password, String m_name, String m_sex, String m_phone, String m_zipcode,
			String m_address, String m_email) {
		super();
		this.m_id = m_id;
		this.m_password = m_password;
		this.m_name = m_name;
		this.m_sex = m_sex;
		this.m_phone = m_phone;
		this.m_zipcode = m_zipcode;
		this.m_address = m_address;
		this.m_email = m_email;
	}
	
	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_sex() {
		return m_sex;
	}

	public void setM_sex(String m_sex) {
		this.m_sex = m_sex;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_zipcode() {
		return m_zipcode;
	}

	public void setM_zipcode(String m_zipcode) {
		this.m_zipcode = m_zipcode;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	@Override
	public String toString() {
		return "Member [m_id=" + m_id + ", m_password=" + m_password + ", m_name=" + m_name + ", m_sex=" + m_sex
				+ ", m_phone=" + m_phone + ", m_zipcode=" + m_zipcode + ", m_address=" + m_address + ", m_email="
				+ m_email + "]";
	}
	
	/*
	 *패쓰워드 일치여부 검사 
	 */
	public boolean isMatchPassword(String m_password){
		boolean isMatch=false;
		if(this.m_password.equals(m_password)){
			isMatch=true;
		}
		return isMatch;
	}
	
}
