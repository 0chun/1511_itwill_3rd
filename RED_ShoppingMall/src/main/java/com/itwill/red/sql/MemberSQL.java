package com.itwill.red.sql;

public class MemberSQL {
	public static final String SELECT_MEMBER_LIST="select * from member";
	public static final String SELECT_MEMBER_ID="select * from member where m_id=?";
	public static final String INSERT_MEMBER="insert into member(m_id, m_password, m_name, m_sex, m_phone, m_zipcode, m_address, m_email) values(?, ?, ?, ?, ?, ?, ?, ?)";
	public static final String UPDATE_MEMBER="update member set m_password = ?, m_name = ?, m_sex = ?, m_phone = ?, m_zipcode = ?, m_address = ?, m_email = ? where m_id = ?";
	public static final String DELETE_MEMBER="delete from member where m_id=?";
	public final static String EXISTED_MEMBER="select count(*) as cnt from member where m_id=?";
}
