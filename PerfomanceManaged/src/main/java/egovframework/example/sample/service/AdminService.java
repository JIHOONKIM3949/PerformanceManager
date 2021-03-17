package egovframework.example.sample.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.Dao.AdminDao;
import egovframework.example.sample.Vo.CompanyVO;
import egovframework.example.sample.Vo.IndicatorVO;
import egovframework.example.sample.Vo.MemberVO;
import egovframework.example.sample.Vo.TypeVO;
import egovframework.example.sample.web.AesCbc;


@Service("AdminService")
public class AdminService {
	private final static Logger logger = LoggerFactory.getLogger(Advice.class);
	@Resource(name="AdminDao")
	AdminDao AdminDao;
	
	AesCbc aes = new AesCbc();
	/************/
	
	public CompanyVO getCompanyColor(int id){
		return AdminDao.getCompanyColor(id);
	}
	
	/*업체 리스트 조회*/
	public List<CompanyVO> getCompanyList(){		
		return AdminDao.selectCompanyList();
	}
	
	public void UnLockUser(int id){
		AdminDao.UnLockUser(id);
	}
	
	/*업체 리스트 목록 제거*/
	public int updateCompany(Integer comid){ 
		return AdminDao.updateCompany(comid);
	}
	
	/*업체 정보 등록*/
	public void InsertCompany(CompanyVO company){
		logger.info("색상 객체들어왔는지 확인 : " + company.getCOM_COLOR());
		AdminDao.InsertCompany(company);
	}
	
	/*업체 정보 수정*/
	public void EditCompany(CompanyVO company){
		AdminDao.EditCompany(company);
	}
	
	/*지표 정보 List*/
	public List<IndicatorVO> SelectListIndi(){
		List<IndicatorVO> indilist = AdminDao.SelectListIndi();
		logger.info(indilist.toString());
		return indilist;
	}
	
	public List<MemberVO> SelectListMember() throws Exception{
		List<MemberVO> memberlist = AdminDao.SelectListMember();
		for(MemberVO member : memberlist){
			aes.decoder(member);
		}
		return memberlist;
	}
	
	public List<MemberVO> GetDisapprovedMemberList(){
		return AdminDao.GetDisapprovedMemberList();
	}
	
	public int DeleteMember(int infoID){
		return AdminDao.DeleteMember(infoID);
	}
	
	public int ResetPassword(int InfoID){
		return AdminDao.ResetPassword(InfoID);
	}
	
	public List<TypeVO> SelectTypeList(){
		return AdminDao.SelectTypeList();
	}
	
	public int UserStatusSuccess(int infoid){
		return AdminDao.UserStatusSuccess(infoid);
	}
	
}
