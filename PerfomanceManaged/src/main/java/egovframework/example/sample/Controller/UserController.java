


package egovframework.example.sample.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.cmmn.validator.MemberSingUpValidator;
import egovframework.example.sample.Auth.TokenVerifier;
import egovframework.example.sample.Util.BCryptImpl;
import egovframework.example.sample.Vo.CompanyVO;
import egovframework.example.sample.Vo.MemberVO;
import egovframework.example.sample.service.AdminService;
import egovframework.example.sample.service.MemberService;
import egovframework.example.sample.web.AesCbc;

@Controller
public class UserController {
	private final static Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private DefaultBeanValidator beanValidator;
	
	@Resource(name="TokenVerifier")
	TokenVerifier TokenVerifier;
	
	
	/*member 서비스 주입*/
	@Resource(name="MemberService")
	MemberService service;
	
	@Resource(name="AdminService")
	AdminService AdminService;
	
	/*암호화 객체*/
	@Resource(name="AES")
	AesCbc aes;
	
	@InitBinder("SingUpForm")
	public void SingUpForm(WebDataBinder binder){
		binder.setValidator(new MemberSingUpValidator());
	}

	@RequestMapping(value="/account")
	public String account(Model model, HttpServletRequest request) throws Exception{
		List<CompanyVO> companylist = AdminService.getCompanyList();
		model.addAttribute("companyList",companylist);
		String user_token = (String) request.getParameter("google");
		logger.info("account page token : " + user_token);
		if(user_token != null){
			TokenVerifier.getProfile(user_token);
			model.addAttribute("token", user_token);
		}
		return "views/account";
	}
	
	/*회원 가입 버튼 이벤트*/
	@RequestMapping(value="/Singup.do", method = RequestMethod.POST)
	public String CreateMember(@ModelAttribute("SingUpForm") @Valid MemberVO memberVo, BindingResult bindingResult, Model model, HttpServletRequest request) throws Exception{
		
		// 회원가입 Form Validation
		logger.info("===============회원 가입 유효성 검사 : 시작 =============");
		if(bindingResult.hasErrors()){
			logger.info("===============회원 가입 유효성 검사 : 에러 발생 =============");
			List<ObjectError> errors = bindingResult.getAllErrors();
			for(ObjectError error : errors){
				logger.info("error : {}", error.getDefaultMessage());
			}
			return "views/account";
		}
		logger.info("===============회원 가입 유효성 검사 : 정상 =============");
		MemberVO member = aes.encoder(memberVo);  // 암호화 테스트-
		//단방향 테스트//
		BCryptImpl bcry = new BCryptImpl();
		member.setUSER_PW(bcry.encrypt(member.getUSER_PW()));
		
		String googletoken = request.getParameter("google");
		logger.info("파라미터 토큰" + googletoken);
		
		String isToken = member.getUSER_TOKEN();
		if(isToken == null || isToken.equals("")){
			service.CreateMember(member, null);	
		}else{
			service.CreateMember(member, TokenVerifier.getEmail());	
		}
		return "redirect:/SingUpSuccess.do";
	}
	

	
	/*회원가입 성공페이지*/
	@RequestMapping(value="/SingUpSuccess")
	public String SingUpSuccess(){
		return "views/SingUpSuccess";
	}
	
	/*아이디 중복체크 구현*/
	@RequestMapping(value="CheckID")
	public String checkId(String id){
		//service.
		JSONObject jsonObject = new JSONObject();
		
		return "";
	}
	

}
