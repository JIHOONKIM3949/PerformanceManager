package egovframework.example.sample.Controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.example.sample.Vo.CompanyVO;
import egovframework.example.sample.Vo.IndicatorVO;
import egovframework.example.sample.Vo.MemberVO;
import egovframework.example.sample.Vo.TypeVO;
import egovframework.example.sample.service.AdminService;

@RequestMapping("/Admin")
@Controller
public class AdminController {
	private final static Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Resource(name="AdminService")
	AdminService AdminService;
	
	/*업체 정보관리*/
	@RequestMapping("/Company")
	public String CompanyMange(Model model){
		List<CompanyVO> companylist = AdminService.getCompanyList();
		model.addAttribute("companylist", companylist);
		return  "views/Admin/Company";
	}
	
	/*업체 정보등록*/
	@RequestMapping(value="/addCompany", method=RequestMethod.POST)
	public String addCom(CompanyVO company){
		logger.info("색상 : " + company.getCOM_COLOR());
		AdminService.InsertCompany(company);
		return "redirect:/Admin/Company.do";
	}
	
	/*업체 정보삭제(업데이트)*/
	@RequestMapping("/DeleteCompany")
	public String updateCompany(int comid){
		logger.info("업체정보 삭제로그 테스트");
		AdminService.updateCompany(comid);
		return "redirect:/Admin/Company.do";
	}
	
	/*업체 정보수정*/
	@RequestMapping(value="/editCompany", method=RequestMethod.POST)
	public String EditCompany(CompanyVO company){
		AdminService.EditCompany(company);
		return "redirect:/Admin/Company.do";
	}
	
	/*지표 정보관리*/
	@RequestMapping("/Indicator")
	public String IndiManage(IndicatorVO indicator, Model model){
		return "views/Admin/Indicator";
	}
	
	/*지표 리스트 Ajax*/
	@RequestMapping("/GetIndicatorList")
	public String IndiListView(Model model){
		List<IndicatorVO> IndicatorList = AdminService.SelectListIndi();
		List<TypeVO> TypeList = AdminService.SelectTypeList();
		model.addAttribute("IndicatorList", IndicatorList);
		model.addAttribute("TypeList", TypeList);
		return "views/Admin/IndicatorList";
	}
	
	/*회원 정보관리(관리자)*/
	@RequestMapping("/Member.do")
	public String memberManage(Model model) throws Exception{
		List<MemberVO> MemberList = AdminService.SelectListMember();
		
		model.addAttribute("UserList", MemberList);
		return "views/Admin/Member";
	}
	
	/*유형정보 관리*/
	@RequestMapping("/Type")
	public String TypeManage(){
		return "views/Admin/Type";
	}
	
	/*회원정보 삭제*/
	@RequestMapping("/DeleteMember")
	public String DeleteMember(int infoID){
		int result = AdminService.DeleteMember(infoID);
		return "redirect:/Admin/Member.do";
	}
	
	/*회원 비밀번호 초기화*/
	@RequestMapping("/ResetPw")
	public String ResetPassword(int infoID){
		int result = AdminService.ResetPassword(infoID);
		return "redirect:/Admin/Member.do";
	}
	
	/*회원 비밀번호 초기화*/
	@RequestMapping("/UnLockUser")
	public String UnLockUser(int infoID){
		AdminService.UnLockUser(infoID);
		return "redirect:/Admin/Member.do";
	}
	
	/*회원승인 관리*/
	@RequestMapping("/Success")
	public String SuccessManage(Model model){
		List<MemberVO> DisapprovedMemberList = AdminService.GetDisapprovedMemberList();
		model.addAttribute("DisapprovedMembers", DisapprovedMemberList);
		return "views/Admin/Success";
	}
	
	@RequestMapping("/DisapprovedMemberDelete")
	public String DisapprovedMemberDelete(int infoID){
		int result = AdminService.DeleteMember(infoID);
		return "redirect:/Admin/Success.do";
	}
	
	@RequestMapping("UserSuccess")
	public String UserSuccess(int infoid){
		int result = AdminService.UserStatusSuccess(infoid);
		return "redirect:/Admin/Success.do";
	}
	
	@RequestMapping("/Add_Indicator")
	public String AddIndicator(){
		
		return "";
	}
	
	/*회원권한 관리*/
	@RequestMapping("/Auth")
	public String AuthManage(){
		return "views/Admin/Auth";
	}
	
	/*회원기록 관리*/
	@RequestMapping("/UserLog")
	public String UserLogManage(){
		return "views/Admin/UserLog";
	}
	
	/*게시물 이력관리*/
	@RequestMapping("/BoardLog")
	public String BoardLogManage(){
		return "views/Admin/BoardLog";
	}
	
	/*댓글 이력관리*/
	@RequestMapping("CommentLog")
	public String CommentLogManage(){
		return "views/Admin/CommentLog";
	}
	
	
}
