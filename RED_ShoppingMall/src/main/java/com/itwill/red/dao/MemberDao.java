package com.itwill.red.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.itwill.red.dto.Member;
import com.itwill.red.dto.Zip;
import com.itwill.red.exception.ExistedMemberException;

public interface MemberDao {

	JdbcTemplate getJdbcTemplate();

	void setJdbcTemplate(JdbcTemplate jdbcTemplate);

	List<Member> selectAllMember() throws Exception;

	Member selectByMemberId(String m_id) throws Exception;

	int insertMember(Member insertMember) throws Exception;

	int updateMember(Member updateMember) throws Exception;

	int deleteByMemberId(String m_Id) throws Exception;

	boolean existedMember(String m_id) throws ExistedMemberException ,Exception;

	Member findMember(String m_id) throws Exception;
	
	List<Zip> findZip(String dong)throws Exception;
}