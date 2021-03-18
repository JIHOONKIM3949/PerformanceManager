package egovframework.example.sample.Controller;


import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.Connection;
import org.springframework.social.google.api.Google;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.sample.Auth.TokenVerifier;
import egovframework.example.sample.Vo.GubunVO;
import egovframework.example.sample.Vo.IndicatorVO;
import egovframework.example.sample.Vo.MemberVO;
import egovframework.example.sample.service.HomeService;
import egovframework.example.sample.service.MemberService;
import egovframework.example.sample.web.AesCbc;


@Controller
public class HomeController {
	private final static Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Resource(name="MemberService")
	MemberService MemberService;
	
	@Resource(name="HomeService")
	HomeService HomeService;
	
	@Resource(name="TokenVerifier")
	TokenVerifier TokenVerifier;
	
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;
	
	AesCbc aes = new AesCbc();
	
	/*메인 페이지 이동*/
	@RequestMapping("/home")
	public String Login(HttpSession session, Model model){
		List<GubunVO> gubunList = HomeService.getGubunList();
		List<IndicatorVO> indiList = HomeService.getIndiList(); 
		
		//
		model.addAttribute("indiList", indiList);
	
		return "views/home";
	}
	
	@RequestMapping(value ="/GetToken", method=RequestMethod.POST)
	public void GetToken(String id_token, HttpSession session, HttpServletResponse response) throws Exception{
		logger.info("getToken post 실행");
		
		TokenVerifier tv = new TokenVerifier();
		tv.getProfile(id_token);
		
		logger.info(tv.getEmail());
		logger.info(tv.getName());
		
		//JSON 객체  Login.jsp 로 던져서 해당 페이지 이동 요청처리할꺼 // 
		JSONObject jsonObject = new JSONObject();
		
		
		// 이제 토큰으로 profile 을 가져왔으니까 DB정보에 해당 구글정보를 가진놈 조회
		MemberVO member = MemberService.FindGoogleUser(tv.getEmail());
		if(member != null){
			AesCbc aes = new AesCbc();
			logger.info("google가 등록되어있는 계정");
			session.setAttribute("user", aes.decAES((member.getUSER_NAME())));
			session.setAttribute("info_id", member.getINFO_ID());
			jsonObject.put("result", "success");
		}else{
			logger.info("google가 등록되지 않음");
			jsonObject.put("result", "failed");
		}
		String json = jsonObject.toString();

		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/LoginPage")
	public String MoveLoginPage(Model model, HttpSession session, HttpServletRequest request) throws Exception{
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
		String token = request.getParameter("google");
		/*****/
		/*Integer sessionId = (int)session.getAttribute("info_id");
		logger.info(sessionId.toString());
		model.addAttribute("sessionId", sessionId);*/
		/*****/
		
		/*String teststr = request.getParameter("result");*/
		/*logger.info("로그인 결과 : "+teststr);
		model.addAttribute("loginResult", teststr);*/
		model.addAttribute("googletoken", null);
		if( token != null){
			// 토큰이 있으면 로그인시 Gmail Token에 자동으로 들어갈 수 있게
			logger.info("토큰이 있음 -> 정보를 받아옴");
			TokenVerifier.getProfile(token);
			logger.info("이메일 : "+TokenVerifier.getEmail());
			model.addAttribute("googletoken", token);
		}else{
			logger.info("로그인 페이지 :: 토큰이 없음");
			model.addAttribute("googletoken", null);
		}
		
		session.invalidate();
		return "views/login";
	}
	
	/*로그인 체크 완성*/
	@RequestMapping(value="/Login", method=RequestMethod.POST)
	public String UserLogin(MemberVO member, Model model, HttpSession session, HttpServletRequest request) throws Exception{
		String result = MemberService.LoginUserCheck(member, session);
			if(result == "success"){
				logger.info("로그인 성공");
				// Add Gmail
				String mToken = member.getUSER_TOKEN();
				if(mToken== null || mToken.equals("")){
					logger.info("로그인 :: 토큰 없음");
					MemberService.addGoogleEmail(member.getUSER_ID(), null);
				}else{
					MemberService.addGoogleEmail(member.getUSER_ID(), TokenVerifier.getEmail());
					logger.info("로그인 :: 토큰 있음");
					member.setUSER_TOKEN(null);
				}
				return "redirect:/home.do";
			}else{
				switch(result){
				case "NotMatchPassword":
					logger.info("비밀번호 틀림");
					break;
				case "AccountLock":
					logger.info("계정 잠김");
					break;
				case "NotMatchId":
					logger.info("아이디 안맞음");
					break;
				}
				return "forward:/LoginPage.do?result="+result;
			}
	}
	@RequestMapping(value = "/GoogleLogin.do")
	public String googleCallback(Model model, @RequestParam String code) throws Exception{
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		AccessGrant accessGrant  = oauthOperations.exchangeForAccess(code, googleOAuth2Parameters.getRedirectUri(), null);
		String accessToken = accessGrant.getAccessToken();
		Long expireTime = accessGrant.getExpireTime();
		if(expireTime != null && expireTime < System.currentTimeMillis()){
			 accessToken = accessGrant.getRefreshToken();
	         System.out.printf("accessToken is expired. refresh token = {}", accessToken);
		}
		
		  Connection<Google> connection;
		  Google google;
		  
		/*  connection = googleConnectionFactory.createConnection(accessGrant);
		  google = connection == null ? new GoogleTemplate(accessToken) : connection.getApi();
	      PlusOperations plusOperations = google.plusOperations();
	      Person profile = plusOperations.getGoogleProfile();
	        logger.info("유저정보 출력 테스트 : " + profile.toString());*/
	        logger.info("accessToken : " + accessToken);
	        return "redirect:/home.do";
	}
	
	/*회원 정보수정*/
	@RequestMapping("MemberEdit.do")
	public String EditMember(Model model, HttpSession session) throws Exception{
		int info_id = (int) session.getAttribute("info_id");
		logger.info("info_id : " + info_id);
		MemberVO member = MemberService.selectUserInfo(info_id);
		aes.decoder(member);
		model.addAttribute("member", member);
		return "views/Member/profile";
	}
	
	@RequestMapping("EditMemberInfo.do")
	public String EditMemberInfo(MemberVO member, HttpSession session){
		int info_id = (int) session.getAttribute("info_id");
		if(member.getUSER_PW().equals(MemberService.selectUserInfo(info_id).getUSER_PW())){
			logger.info("개인정보 수정 비밀번호 일치!");
			MemberService.updateUserInfo(member);
		}
		return "redirect:/MemberEdit.do";
	}
	
	@RequestMapping("fullcalendar")
	public String FullCalendar(HttpSession session){

		return "views/fullCalendar_Example";
	}
	
	@RequestMapping("fullcalendar1")
	public String Example_FullCalendar(){
		return "views/fullCalendar_Example2";
	}
	
	
	
	@RequestMapping("DataSubmitBorder")
	public String DataSubmitBorderPage(){
		logger.info("DataSubmitBorder");
		return "views/Boarder";
	}
}