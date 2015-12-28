package com.itwill.red.service;

import java.util.List;

import com.itwill.red.dao.MemberDao;
import com.itwill.red.dto.Member;
import com.itwill.red.dto.Zip;
import com.itwill.red.exception.ExistedMemberException;

public interface MemberService {

	MemberDao getMemberDao();

	void setMemberDao(MemberDao memberDao);

	//create
	int insertMember(Member member) throws ExistedMemberException, Exception;

	//자기정보
	Member selectByMemberId(String m_id) throws Exception;

	Member login(String m_id, String m_password) throws Exception;

	int update(Member member) throws Exception;

	int delete(String m_id) throws Exception;

	List<Member> selectAllMember() throws Exception;

	void existedMember(String m_id) throws ExistedMemberException, Exception;
	
	List<Zip> findZip(String dong)throws Exception;
}