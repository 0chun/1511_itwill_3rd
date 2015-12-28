package com.itwill.red.service.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.itwill.red.dao.MemberDao;
import com.itwill.red.dto.Member;
import com.itwill.red.dto.Zip;
import com.itwill.red.exception.ExistedMemberException;
import com.itwill.red.exception.MemberNotFoundException;
import com.itwill.red.exception.PasswordMismatchException;
import com.itwill.red.service.MemberService;
@Component
public class MemberServiceImpl implements MemberService {
	private MemberDao memberDao;

	public MemberServiceImpl() {
	}

	@Override
	public MemberDao getMemberDao() {
		return memberDao;
	}

	@Override
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	// create
	@Override
	public int insertMember(Member member) throws ExistedMemberException,Exception {
		
		// 1.아이디존재여부
		if (getMemberDao().existedMember(member.getM_id())) {
			throw new ExistedMemberException("존재하는 아이디 입니다.");
		}
		// 2.가입
		return getMemberDao().insertMember(member);
	}
	@Override
	public void existedMember(String m_id) throws ExistedMemberException ,Exception{
		if(getMemberDao().existedMember(m_id)){
			throw new ExistedMemberException(" 는 존재하는 아이디 입니다.");
		}else{
			throw new ExistedMemberException(" 는 사용가능한 아이디 입니다.");
		}
	}
	// 자기정보
	@Override
	public Member selectByMemberId(String m_id) throws Exception {
		Member findMemeber = getMemberDao().selectByMemberId(m_id);
		if (findMemeber == null) {
			throw new Exception("아이디가 존재하지않습니다.");
		}
		return findMemeber;
	}

	@Override
	public Member login(String m_id, String m_password) throws Exception {
		// id 존재여부
		Member findMember = memberDao.findMember(m_id);
		// password 일치
		// 1.아이디 존재여부(입력되는 아이디로 User객체 찾기)
		if (findMember == null) {
			throw new MemberNotFoundException(m_id + " 는 존재하지않는 아이디입니다.");
		}
		// 2.패쓰워드 일치여부
		if (!findMember.isMatchPassword(m_password)) {
			throw new PasswordMismatchException("패쓰워드가 일치하지않습니다.");
		}
		return findMember;
	}

	@Override
	public int update(Member member) throws Exception {
		return getMemberDao().updateMember(member);
	}

	@Override
	public int delete(String m_id) throws Exception {
		return getMemberDao().deleteByMemberId(m_id);
	}

	@Override
	public List<Member> selectAllMember() throws Exception {
		return getMemberDao().selectAllMember();
	}
	@Override
	public List<Zip> findZip(String dong) throws Exception {
		return getMemberDao().findZip(dong);
	}
}
