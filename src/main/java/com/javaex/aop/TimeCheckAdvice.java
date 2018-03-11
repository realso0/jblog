package com.javaex.aop;

import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory; //import에 주의

@Service
@Aspect
public class TimeCheckAdvice {
	
	private static final Logger logger = LoggerFactory.getLogger(TimeCheckAdvice.class);
	
	// @Around("execution(* kr.co.smh.service..*(..))")
	@Around("within(com.javaex.service..*)")
	public Object timeLog(ProceedingJoinPoint pjp) throws Throwable {
		//String method=pjp.getSignature().getName();
		String signature = pjp.getSignature().toShortString();
		logger.info(signature + " is start");
		StopWatch stopWatch=new StopWatch();
		stopWatch.start();

		try {
			logger.info(signature + " Running");
			Object obj = pjp.proceed();
			return obj;
		} finally {
			stopWatch.stop();
			logger.info(signature + " is finished");
			logger.info(signature + "() 메소드 수행에 걸린 시간 : "+ stopWatch.getTotalTimeMillis() + "(ms)초");
		}
	}
}
