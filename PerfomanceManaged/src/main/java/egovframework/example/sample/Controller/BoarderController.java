package egovframework.example.sample.Controller;


import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.sample.Vo.CompanyVO;
import egovframework.example.sample.service.AdminService;
import egovframework.example.sample.service.MemberService;


@Controller
public class BoarderController {
	private final static Logger logger = LoggerFactory.getLogger(BoarderController.class);
	
	@Resource(name="MemberService")
	MemberService MemberService;
	
	@Resource(name="AdminService")
	AdminService AdminService;
	
	@RequestMapping("boardWrite")
	public String loadBoardWritePage(Model model){
		logger.info("loadBoardWirtePage Controller");
		List<CompanyVO> list = AdminService.getCompanyList();
		model.addAttribute("companylist", list);
		
		return "views/BoardWrite";
	}
	
	@RequestMapping("SaveContent")
	public String saveController(){
		
		return "";
	}
	
}