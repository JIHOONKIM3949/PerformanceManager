package egovframework.example.sample.service;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Advice {
	private final static Logger logger = LoggerFactory.getLogger(Advice.class);
	public void beforeLogic(JoinPoint jp){
		logger.info("==========================================================================");
		
		
		/* 어떤 종류의 JoinPoint인지 반환 */
		logger.info("------->> JoinPoint : " + jp.getKind());
		
		/* 대상 객체의 메소드에 대한 정보를 출력 */
		logger.info("------->> 실행 메소드 : " + jp.getSignature().getName());
		
		/* 모든 파라미터를 Object 배열로 가져오기*/
		logger.info("------->> 입력된 파라메터 : " + Arrays.toString(jp.getArgs()));
		
		/* 해당 객체를 알아낸다.*/
		logger.info("------->> 객체: " + jp.getTarget().toString());
		
		
		
	}
	
	public void afterLogic(){
		
	}
	
	public Object timeLog(ProceedingJoinPoint pjp) throws Throwable{
		double startTime = System.currentTimeMillis();
		Object result = pjp.proceed();
		double endTime = System.currentTimeMillis();
		logger.info("------->> 실행시간: "+pjp.getSignature().getName() + " : " + ( endTime - startTime) / 1000 + "초 걸림");
		
		logger.info("==========================================================================");
		return result;
	}
}
