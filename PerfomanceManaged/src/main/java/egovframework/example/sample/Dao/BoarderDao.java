package egovframework.example.sample.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.Vo.BoarderVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("BoarderDao")
public class BoarderDao extends EgovAbstractMapper{

	public List<BoarderVO> BoardList(int num){
		return selectList("Boarder", num);
	}
	
}
