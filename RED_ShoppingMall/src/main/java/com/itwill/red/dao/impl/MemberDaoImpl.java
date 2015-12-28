package com.itwill.red.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
/*
	String m_id;
	String m_password;
	String m_name;
	String m_sex;
	String m_phone;
	String m_zipcode;
	String m_address;
	String m_email;
 */
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.itwill.red.dao.MemberDao;
import com.itwill.red.dto.Member;
import com.itwill.red.dto.Zip;
import com.itwill.red.exception.ExistedMemberException;
import com.itwill.util.MyBatisSqlSessionFactory;

import mybatis.mappers.MemberMapper;

public class MemberDaoImpl implements MemberDao {
	public static final String NAMESPACE = "mybatis.mappers.MemberMapper.";
	// 전체불러오기
	JdbcTemplate jdbcTemplate;
	private MemberMapper memberMapper;
	

	public MemberMapper getMemberMapper() {
		return memberMapper;
	}

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}

	public MemberDaoImpl() {
	}
	
	@Override
	public Member findMember(String m_id) {
		Member member = null;
		SqlSession sqlSession = null;
		try {
			sqlSession = MyBatisSqlSessionFactory.getSqlSession();
			member = sqlSession.selectOne(NAMESPACE+"selectByMemberId",m_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.commit();
				sqlSession.close();
			}
		}
		return member;
	}

	@Override
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	@Override
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<Member> selectAllMember() throws Exception {
		List<Member> memberList = memberMapper.selectAllMember();
		return memberList;
	}

	@Override
	public Member selectByMemberId(String m_id) throws Exception {
		Member findMember = memberMapper.selectByMemberId(m_id);
		return findMember;
	}

	@Override
	public int insertMember(Member insertMember) throws Exception {
		return memberMapper.insertMember(insertMember);
	}

	@Override
	public int updateMember(Member updateMember) throws Exception {
		return memberMapper.updateMember(updateMember);
	}

	@Override
	public int deleteByMemberId(String m_id) throws Exception {
		return memberMapper.deleteByMemberId(m_id);
	}

	@Override
	public boolean existedMember(String m_id) throws ExistedMemberException, Exception {
		System.out.println("dao:"+m_id);
		Integer countInt = memberMapper.existedMember(m_id);
		if(countInt.intValue()==1){
			return true;
		}else{
			return false;
		}
	}
	@Override
	public List<Zip> findZip(String dong) throws Exception {
		return memberMapper.findZip(dong);
	}
	public class MemberRowMapper implements RowMapper<Member> {
		@Override
		public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
			String m_id = rs.getString("m_id");
			String m_password = rs.getString("m_password");
			String m_name = rs.getString("m_name");
			String m_sex = rs.getString("m_sex");
			String m_phone = rs.getString("m_phone");
			String m_zipcode = rs.getString("m_zipcode");
			String m_address = rs.getString("m_address");
			String m_email = rs.getString("m_email");
			Member member = new Member(m_id, m_password, m_name, m_sex, m_phone, m_zipcode, m_address, m_email);
			return member;
		}
	}
}
