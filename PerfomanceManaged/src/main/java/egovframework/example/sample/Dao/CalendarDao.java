package egovframework.example.sample.Dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.Vo.CalendarVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("CalendarDao")
public class CalendarDao extends EgovAbstractMapper{
	public void addCalendar(Map map){
		insert("Calendar.addCalendar", map);
	}
	
	public List<CalendarVO> getCalendar(Date startDate, Date endDate){
		Map map = new HashMap();
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		return selectList("Calendar.getCalendarList", map);
	}
	
	public void deleteCalendar(int id){
		delete("Calendar.DeleteCalendar", id);
	}
}
