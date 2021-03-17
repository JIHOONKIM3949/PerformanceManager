


package egovframework.example.sample.Controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.sample.Vo.CalendarVO;
import egovframework.example.sample.Vo.CompanyVO;
import egovframework.example.sample.service.AdminService;
import egovframework.example.sample.service.CalendarService;

@Controller
public class CalendarController {
	private final static Logger logger = LoggerFactory.getLogger(CalendarController.class);
	
	/*member 서비스 주입*/
	@Resource(name="CalendarService")
	CalendarService CalendarService;
	@Resource(name="AdminService")
	AdminService AdminService;
	
	@RequestMapping(value="Delete_Calendar")
	public String DeleteCalendar(String id){
		
		logger.info("### Calendar Data Delete Event Run ###");
		logger.info("Event ID : " + id);
		/*CalendarService.DeleteCalendar(id);*/
		return "";
	}
	
	@RequestMapping(value="add_Modal_Content.do")
	public String addModalInfo(String cid,String ctitle, String cstart, String cend, String ccontent, String ctype, boolean allDay, HttpSession session)throws Exception{
		logger.info("### Modal Save Event Run ###");
		CompanyVO com = AdminService.getCompanyColor((int)session.getAttribute("info_id"));
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date MON_START_DATE = fm.parse(cstart);
		Date MON_END_DATE = fm.parse(cend);
		
		logger.info("Map 생성");
		Map map = new HashMap();
		map.put("MON_START_DATE", MON_START_DATE);
		map.put("MON_END_DATE", MON_END_DATE);
		map.put("MON_TITLE", ctitle);
		map.put("MON_CONTENT", ccontent);
		map.put("COLOR", com.getCOM_COLOR());
		map.put("allDay", allDay);
		
		CalendarService.addCalendar(map);
		
		//logger.info(jsonParam); 나중에서 한방에 받아서 처리하자 
		//JSONObject jsonObject = new JSONObject();
		
		return "redirect:/fullcalendar.do";
	}
	
	@RequestMapping(value="editDateCalendar.do")
	public void editDateCalendar(Date startDate, Date endDate){
		logger.info(" editDateCalendar 실행");
		logger.info("수정 날짜 : " + startDate);
		logger.info("끝나는 날짜 : " + endDate);
	}
	
	@RequestMapping(value="get_Calendar.do")
	public void getCalendar(Date startDate, Date endDate, HttpServletResponse response) throws Exception{
		logger.info("### Get Calendar Event Run ###");
		 response.setCharacterEncoding("UTF-8");
		List<CalendarVO> list = CalendarService.getCalendar(startDate, endDate);	
		JSONArray jsonAry = new JSONArray();
		SimpleDateFormat simpleDataFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		for(int i=0; i<list.size(); i++){
			JSONObject jsonObject = new JSONObject();
		
			jsonObject.put("id", list.get(i).getMON_ID());
			jsonObject.put("title", list.get(i).getMON_TITLE());
			jsonObject.put("description", list.get(i).getMON_CONTENT());
			jsonObject.put("start", list.get(i).getMON_START_DATE());
			jsonObject.put("end", list.get(i).getMON_END_DATE());
			jsonObject.put("start", simpleDataFormat.format(list.get(i).getMON_START_DATE()));
			jsonObject.put("end", simpleDataFormat.format(list.get(i).getMON_END_DATE()));	
			
			// 테스트용 때려박기
			jsonObject.put("type", "카테고리1"); // 지표
			jsonObject.put("username", "나연"); // 컴퍼니이름
			jsonObject.put( "backgroundColor",list.get(i).getCOLOR()); // 이벤트 색깔
			jsonObject.put("textColor", "#FFFFFF");
			jsonObject.put( "allDay", true);
			
			
			jsonAry.put(jsonObject);
		}
		String json = jsonAry.toString();
		logger.info(json);
		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}
	

}
