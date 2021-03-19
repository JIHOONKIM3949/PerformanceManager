package egovframework.example.sample.Controller;


import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.example.sample.Vo.BoarderVO;
import egovframework.example.sample.Vo.CompanyVO;
import egovframework.example.sample.service.AdminService;
import egovframework.example.sample.service.BoardService;
import egovframework.example.sample.service.MemberService;


@Controller
public class BoarderController {
	private final static Logger logger = LoggerFactory.getLogger(BoarderController.class);
	
	@Resource(name="MemberService")
	MemberService MemberService;
	
	@Resource(name="AdminService")
	AdminService AdminService;
	
	@Resource(name="BoardService")
	BoardService BoardService;
	
	@RequestMapping("boardWrite")
	public String loadBoardWritePage(Model model){
		logger.info("loadBoardWirtePage Controller");
		List<CompanyVO> list = AdminService.getCompanyList();
		model.addAttribute("companylist", list);
		
		return "views/BoardWrite";
	}
	
	@RequestMapping(value="/SaveContent", method=RequestMethod.POST)
	public String saveController(BoarderVO boarder){
		logger.info(boarder.getBOR_TITLE());
		logger.info(boarder.getBOR_Content());
		return "";
	}
	
	@RequestMapping("getBoardList")
	public String getBoardList(int num){
		List<BoarderVO> list = BoardService.BoardList(num);
		return "";
	}
	
}