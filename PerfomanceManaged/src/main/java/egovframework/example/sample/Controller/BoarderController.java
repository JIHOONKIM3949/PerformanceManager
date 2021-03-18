package egovframework.example.sample.Controller;


import java.io.PrintWriter;

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
import egovframework.example.sample.Vo.MemberVO;
import egovframework.example.sample.service.MemberService;
import egovframework.example.sample.web.AesCbc;


@Controller
public class BoarderController {
	private final static Logger logger = LoggerFactory.getLogger(BoarderController.class);
	
	@Resource(name="MemberService")
	MemberService MemberService;
	
	@RequestMapping("boardWrite")
	public String loadBoardWritePage(){
		logger.info("loadBoardWirtePage Controller");
		return "views/BoardDetail";
	}
}