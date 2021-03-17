package egovframework.example.sample.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.Vo.CompanyVO;
import egovframework.example.sample.Vo.IndicatorVO;
import egovframework.example.sample.Vo.MemberVO;
import egovframework.example.sample.Vo.TypeVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("AdminDao")
public class AdminDao extends EgovAbstractMapper{
	
	
	public CompanyVO getCompanyColor(int id){
		return selectOne("Company.getCompanyColor", id);
	}
	
	/*업체 정보 리스트 출력*/
	public List<CompanyVO> selectCompanyList(){
		return selectList("Company.getCompanyList");
	}

	/*업체 정보 삭제(Status=0)*/
	public int updateCompany(Integer comid){
		return update("Company.updateCompany", comid);
	}
	
	/*업체 정보 등록*/
	public void InsertCompany(CompanyVO com){
		insert("Company.insertCompany", com);
	}
	
	public void UnLockUser(int id){
		update("Member.UnLockUser", id);
	}
	
	/*업체 정보 수정*/
	public void EditCompany(CompanyVO com){
		update("Company.editCompany", com);
	}
	
	public List<IndicatorVO> SelectListIndi(){
		return selectList("Indicator.SelectListIndicator");
	}
	
	public List<MemberVO> SelectListMember(){
		return selectList("Member.SelectListMember");
	}
	
	public List<MemberVO> GetDisapprovedMemberList(){
		return selectList("Member.GetDisapprovedMemberList");
	}
	
	public int DeleteMember(int infoID){
		return delete("Member.DeleteMember", infoID);
	}
	
	public int ResetPassword(int infoID){
		return update("Member.ResetPassword", infoID);
	}
	
	public List<TypeVO> SelectTypeList(){
		return selectList("Type.SelectTypeList");
	}
	
	public int UserStatusSuccess(int infoid){
		return update("Member.UserStatusSuccess", infoid);
	}
}
