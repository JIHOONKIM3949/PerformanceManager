package egovframework.example.sample.Dao;



import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.Vo.MemberVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("MemberDao")
public class MemberDaoImpl extends EgovAbstractMapper implements MemberDao{

	
	
	@Override
	public MemberVO idCheck(String USER_ID) throws Exception {
		return selectOne("Member.idCheck", USER_ID);
	}
	
	@Override
	public void memberInsert() throws Exception {
	}
	
	@Override
	public void memberDelete(MemberVO vo) throws Exception {	
	}
	
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {	
	}
	
	
	public void CreateMember(MemberVO member){
		insert("Member.CreateMember", member);
	}	
	
	
	public int LoginUserCheck(MemberVO member){
		return selectOne("Member.LoginUserCheck", member);
	}
	
	public int addFaileCount(String USER_ID){
		return update("Member.addFaileCount",USER_ID);
	}
	
	public int UserIdCheck(String UserId){
		return selectOne("Member.UserIdCheck", UserId);
	}
	
	public MemberVO FindGoogleUser(String GoogleEmail){
		return selectOne("Member.FindGoogleUser", GoogleEmail);
	}
	
	public void addGoogleEmail(String USER_ID, String gmail){
		Map map = new HashMap();
		map.put("USER_ID", USER_ID);
		map.put("gmail", gmail);
		
		update("Member.addGoogleEmail", map);
	}
	
	public MemberVO selectUserInfo(int info_id){
		return selectOne("Member.selectUserInfo", info_id);
	}
	
	public void updateUserInfo(MemberVO member){
		update("Member.updateUserInfo",  member);
	}
	
}
