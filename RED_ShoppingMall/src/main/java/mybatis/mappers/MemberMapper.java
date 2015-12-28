package mybatis.mappers;

import java.util.List;

import com.itwill.red.dto.Member;
import com.itwill.red.dto.Zip;

public interface MemberMapper {
	public Member findMember(String m_id);
	public List<Member> selectAllMember();
	public Member selectByMemberId(String m_id);
	public int insertMember(Member insertMember);
	public int updateMember(Member updateMember);
	public int deleteByMemberId(String m_id);
	public int existedMember(String m_id);
	public List<Zip> findZip(String dong);
}
