package egovframework.example.sample.service;


import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.Dao.CalendarDao;
import egovframework.example.sample.Vo.CalendarVO;


@Service("CalendarService")
public class CalendarService {
	private final static Logger logger = LoggerFactory.getLogger(CalendarService.class);
	
	@Resource(name="CalendarDao")
	CalendarDao CalendarDao;
	
	public void DeleteCalendar(int id){
		CalendarDao.deleteCalendar(id);
	}
	
	
	public void addCalendar(Map map){
		CalendarDao.addCalendar(map);
	}
	
	public List<CalendarVO> getCalendar(Date startDate, Date endDate){
		List<CalendarVO> list = CalendarDao.getCalendar(startDate, endDate);
		
		/*DB에서 가져온거 출력*/
		/*for(CalendarVO item : list){
			logger.info("제목 : " + item.getMON_TITLE());
			logger.info("내용 : " + item.getMON_CONTENT());
			logger.info("시작일 : " + item.getMON_START_DATE());
			logger.info("종료일 : " + item.getMON_START_DATE());
			logger.info("##############################");
		}*/
		
		return list;
	}
	
}
