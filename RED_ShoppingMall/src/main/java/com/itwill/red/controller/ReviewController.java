package com.itwill.red.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.itwill.red.dto.Member;
import com.itwill.red.dto.Reviews;
import com.itwill.red.service.ReviewService;
import com.itwill.red.service.impl.ReviewServiceImpl;
import com.itwill.util.ListPageConfigBean;
import com.itwill.util.ListResultBean;

@Controller
public class ReviewController {
	@Autowired
	ReviewService reviewService;

	public ReviewService getReviewService() {
		return reviewService;
	}

	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}
	
	//추가
	@RequestMapping(value="/review")
	public String review_test(@RequestParam(value="p_no") int p_no,
						@RequestParam(value="r_price") int r_price,
						@RequestParam(value="r_design") int r_design,
						@RequestParam(value="r_quality") int r_quality,
						@RequestParam(value="r_nickName") String r_nickName,
						@RequestParam(value="r_summary") String r_summary,
						@RequestParam(value="r_review") String r_review,
						@RequestParam(value="r_m_id") String r_m_id,Model model) throws SQLException{
		
		String forwardPath = "forward:product_detail";				
	
		
		Reviews insertReview=new Reviews(0, p_no, r_price, r_design, r_quality, r_nickName, r_summary, r_review, null, r_m_id);
		//System.err.println("####### review insertReview:"+insertReview);
		//System.err.println("^^^^^^^^^^^r_m_id:"+r_m_id);
		try {
				reviewService.insertReview(insertReview);
			
		}catch(SQLException e){
			model.addAttribute("eReview",insertReview);
			model.addAttribute("idMsg", insertReview.getR_nickName() + e.getMessage());
			forwardPath ="aJaxRequestPage";
		}catch (Exception e) {
			forwardPath = "redirect:404error";
		}
		model.addAttribute("path", "product_detail?p_no="+p_no);
		
		return forwardPath;
		
	}
	
	
	//유효성 검사
	@RequestMapping("reviewCheck")
	public String reviewCheck(@RequestParam(value="id") String id, Model model, SessionStatus sessionStatus){
		String forwardPath = "aJaxRequestPage";
		sessionStatus.setComplete();
		StringBuffer stringBuffer = new StringBuffer();
		//System.out.println("%%%%%%:"+id);
		
		if(id.length() >6){
			stringBuffer.append("<li>6글자 이내로 작성해주세요</li>");
			model.addAttribute("idMsg", stringBuffer);
		}
		return forwardPath;
	}
	
	//삭제
	@RequestMapping("removeReview")
	public String removeReview(@RequestParam("r_no") int r_no, Model model, HttpSession session){
		String forwardPath="";
		Member member = (Member) session.getAttribute("sMember");
		List<Map<String, String>> reviewList = new ArrayList<Map<String,String>>();
		try {
			reviewService.deleteReview(r_no);
			reviewList = reviewService.findReviewIDResult(member.getM_id());
			
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath="redirect:404error";
		} 
		
		forwardPath="index";
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("path", "review.jsp");
		return forwardPath;
		
	}

	//수정
	@RequestMapping("updateReview")
	public String updateReview(@RequestParam("r_no") int r_no, @ModelAttribute("review") Reviews review, Model model, HttpSession session) throws Exception{
		Member member = (Member) session.getAttribute("sMember");
		review = reviewService.findReviewNo(r_no);
		model.addAttribute("review", review);
		return "updateReview";
	}
	
	//수정결과
	@RequestMapping(value="/updateReviewResult")
	public String updateReview(
			@ModelAttribute("review") Reviews review,Model model) throws SQLException{
	
		String forwardPath = "index";				
		List<Map<String, String>> reviewList = new ArrayList<Map<String,String>>();
		System.err.println("^^^^^^^^^^^review updateRevie r_m_id:"+review);
		try {
				int result = reviewService.updateReview(review);
				System.err.println("###### review update:"+result);
				reviewList = reviewService.findReviewIDResult(review.getR_m_id());
				
			
		}catch(Exception e){
			//model.addAttribute("eReview",updateReview);
			//model.addAttribute("idMsg", updateReview.getR_nickName() + e.getMessage());
			forwardPath ="aJaxRequestPage";
		}
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("path", "review.jsp");
		
		return forwardPath;
		
	}
	
	//아이디로 리뷰리스트 찾기
		@RequestMapping("myReview")
		public String myReviewForm(Model model, HttpSession session) throws Exception{
			String forwardPath="index";
			Member member = (Member) session.getAttribute("sMember");
			//List<Reviews> reviewList=reviewService.findReviewId(member.getM_id());
			if(member == null){		// 로그인 안된 경우
				forwardPath = "redirect:loginForm";
			}else{
				List<Map<String, String>> reviewList = reviewService.findReviewIDResult(member.getM_id());
				System.err.println("@@@@@@:"+reviewList);
				model.addAttribute("sidemenu_pointer","6");
				model.addAttribute("reviewList", reviewList);
				model.addAttribute("path", "review.jsp");
			}
			return forwardPath;
		}

	
}
