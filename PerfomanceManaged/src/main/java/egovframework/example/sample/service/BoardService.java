package egovframework.example.sample.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.Dao.BoarderDao;
import egovframework.example.sample.Vo.BoarderVO;


@Service("BoardService")
public class BoardService {
	private final static Logger logger = LoggerFactory.getLogger(BoardService.class);

	@Resource(name="BoarderDao")
	BoarderDao BoarderDao;
	
	public List<BoarderVO> BoardList(int num){
		return BoarderDao.BoardList(num);
	}
	
}
