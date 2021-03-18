package egovframework.example.sample.service;


import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.Dao.HomeDao;
import egovframework.example.sample.Vo.GubunVO;
import egovframework.example.sample.Vo.IndicatorVO;


@Service("HomeService")
public class HomeService {
	private final static Logger logger = LoggerFactory.getLogger(HomeService.class);
	
	@Resource(name="HomeDao")
	HomeDao HomeDao;
	
	public List<GubunVO> getGubunList(){
		return HomeDao.selectList();
	}
	
	public List<IndicatorVO> getIndiList(){
		return HomeDao.selectListIndi();
	}
}
