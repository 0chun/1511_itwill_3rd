package com.itwill.red.dao.impl;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.red.dao.ReviewsDao;
import com.itwill.red.dto.Reviews;


public class MyBatisReviewServiceMain {

	public static void main(String[] args) {
		System.out.println("-------------context 초기화전-------------");
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("spring/business-config.xml");
		System.out.println("-------------context 초기화후-------------");
		ReviewsDao rd = (ReviewsDao) applicationContext.getBean("reviewsDao");
		
		
		
		/*System.out.println("1:"+rd.findReviewNo(41));
		System.out.println("2:"+rd.findReviewProductNo(24));
		System.out.println("3:"+rd.findReviewNick("jsh"));
		System.out.println("4:"+rd.findAllReview());
		System.out.println("5:"+rd.findAllReviewCount());
		System.out.println("6:"+rd.findReviewProductCount(24));*/
		//System.out.println("####"+rd.insertReview(new Reviews(88, 24, 5, 5, 5, "테스트", "insert test", "좋아요",null)));
		/*System.out.println("7:"+rd.updateReview(new Reviews(42, 24, 4, 3, 5, "jsh2", "so so", "좋아요",null)));
		System.out.println("8:"+rd.deleteReview(42));*/
	}
}
