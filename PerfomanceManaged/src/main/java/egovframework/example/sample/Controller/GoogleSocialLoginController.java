package egovframework.example.sample.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


public class GoogleSocialLoginController {
	private final static Logger logger = LoggerFactory.getLogger(GoogleSocialLoginController.class);
	
	@Autowired
	private GoogleConnectionFactory googleConeectionFactory;
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;
	
	@RequestMapping(value ="GoogleLogin.do")
	public String initLogin(Model model){
		OAuth2Operations oauthOperations = googleConeectionFactory.getOAuthOperations();
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
		model.addAttribute("google_url", url);
		return "";
	}
	

	//Google Collback 호출 메소드
	/*@RequestMapping(value = "oauth2callback.do")*/
}
