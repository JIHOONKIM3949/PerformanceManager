package egovframework.example.sample.service;


import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.Dao.MemberDaoImpl;
import egovframework.example.sample.Util.BCryptImpl;
import egovframework.example.sample.Vo.CompanyVO;
import egovframework.example.sample.Vo.MemberVO;
import egovframework.example.sample.web.AesCbc;


@Service("MemberService")
public class MemberService {
	private final static Logger logger = LoggerFactory.getLogger(MemberService.class);
	@Resource(name="MemberDao")
	MemberDaoImpl memberDao;
	
	@Resource(name="AdminService")
	AdminService AdminService;
	
	/** 임시로 때려박음 ** 나중에 수정하자 **/
	AesCbc aes = new AesCbc();
	BCryptImpl bcry = new BCryptImpl();
	/******************************/

	public void CreateMember(MemberVO member, String googleEmail){
		if(googleEmail != null){
			member.setUSER_TOKEN(googleEmail);
		}
		memberDao.CreateMember(member);
	}
	
	public void updateUserInfo(MemberVO member){
		memberDao.updateUserInfo(member);
	}
	
	public String LoginUserCheck(MemberVO member, HttpSession session) throws Exception{
		//return memberDao.LoginUserCheck(member);
		MemberVO result = memberDao.idCheck(member.getUSER_ID());
		
			if(result != null){
				if(result.getUSER_FAILE_COUNT() < 5){
					logger.info("아이디 일치");
					/*if(member.getUSER_PW().equals(result.getUSER_PW())){*/
					if(bcry.isMatch(member.getUSER_PW(), result.getUSER_PW())){
						logger.info("[[로그인 성공]] LOGIN USER ::: ID = " + result.getUSER_ID());
						session.setAttribute("user", aes.decAES(result.getUSER_NAME()));
						session.setAttribute("info_id", result.getINFO_ID());
						/*회사정보도 같이 조회*/
/*						String id = (String)session.getAttribute("info_id");
						CompanyVO com =	AdminService.getCompanyColor(id);
						session.setAttribute("com_color", com.getCOM_COLOR());*/
						
						
						
						
						logger.info("세션에 저장된 값 확인 ==>> user : " + session.getAttribute("user"));
						logger.info("세션에 저장된 값 확인 ==>> info_id : " + session.getAttribute("info_id"));
						return "success";
					}else{
						logger.info("비밀번호가 일치하지 않습니다. 카운트 1 증가");
						memberDao.addFaileCount(member.getUSER_ID());
						return "NotMatchPassword";
					}
				}else{
					logger.info("잠긴 계정입니다");
					return "AccountLock";
				}
			}else{
				logger.info("일치하는 아이디가 없습니다.");
				return "NotMatchId";
			}
		
	}
	
	public int UserIdCheck(String UserId){
		return memberDao.UserIdCheck(UserId);
	}
	
	public MemberVO FindGoogleUser(String GoogleEmail){
		return memberDao.FindGoogleUser(GoogleEmail);
	}
	
	public void addGoogleEmail(String USER_ID, String gmail){
		memberDao.addGoogleEmail(USER_ID, gmail);
	}
	
	public MemberVO selectUserInfo(int info_id){
		return memberDao.selectUserInfo(info_id);
	}
	
}
