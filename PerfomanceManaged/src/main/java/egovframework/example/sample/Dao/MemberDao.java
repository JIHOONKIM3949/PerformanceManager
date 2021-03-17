package egovframework.example.sample.Dao;

import egovframework.example.sample.Vo.MemberVO;

public interface MemberDao {
	public void memberUpdate(MemberVO vo) throws Exception;
	
	public void memberDelete(MemberVO vo) throws Exception;
	
	public void memberInsert() throws Exception;
	
	
	public MemberVO idCheck(String str) throws Exception;
	
}
