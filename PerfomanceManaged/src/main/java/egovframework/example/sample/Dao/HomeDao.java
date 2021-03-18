package egovframework.example.sample.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.Vo.GubunVO;
import egovframework.example.sample.Vo.IndicatorVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("HomeDao")
public class HomeDao extends EgovAbstractMapper{
	public List<GubunVO> selectList(){
		return selectList("Gubun.SelectList");
	}
	
	public List<IndicatorVO> selectListIndi(){
		return selectList("Indicator.SelectListIndicator");
	}
}
