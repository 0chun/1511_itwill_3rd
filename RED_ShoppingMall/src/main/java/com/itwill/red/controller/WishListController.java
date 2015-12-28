package com.itwill.red.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.red.dto.Member;
import com.itwill.red.dto.Product;
import com.itwill.red.dto.WishList;
import com.itwill.red.service.ProductService;
import com.itwill.red.service.WishListService;

@Controller
public class WishListController {
	
	@Autowired
	WishListService wishListService;
	@Autowired
	ProductService productService;
	
	//전체 출력 (안씀)
	@RequestMapping(value="/wishlist_all") 
	public String selectAll(Model model) {
		String forwardPath = "";
		List<WishList> wishListList = null;
		try {
			wishListList = wishListService.selectAll();
			forwardPath = "index";
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "redirect:404error";
		}
		
		model.addAttribute("path", "wishlist.jsp");
		model.addAttribute("wList", wishListList);
		return forwardPath;
	}
	
	//개인별 위시리스트 확인
	@RequestMapping(value="/wishlistById") 
	public String selectByMemberId(Model model, HttpSession session){ 
		String forwardPath = "";
		Member member = (Member) session.getAttribute("sMember");	
		List<Product> productList = new ArrayList<Product>();
		WishList wishList = null;
		if(member == null){		// 로그인 안된 경우
			forwardPath = "redirect:loginForm";
		} else {
			int count = wishListService.selectCount(member.getM_id());	// 아이디로 wishlist가 존재하는지 확인 
			if( count != 0){	// wishlist가 있는 경우
				try {
					wishList = wishListService.selectByMemberId(member.getM_id()); 
					wishList.getWishList_Detail().get(1).getWd_amount();
					productList = wishListService.findProductList(member.getM_id());	// 아이디로 위시리스트 상품리스트 반환 
					for(Product arr : productList){
						arr.calculationPrice();
					}
				} catch (Exception e) {
					forwardPath = "redirect:404error";
				}
			}
			forwardPath = "index";
			model.addAttribute("path", "wishlist.jsp");
			model.addAttribute("sidemenu_pointer", "8");
			model.addAttribute("pList", productList);		// wishlist가 없으면 null로 세팅 
		}
		return forwardPath;
	}
	
	// 상품 디테일에서 위시리스트 추가
	@RequestMapping(value = "/insert_wish", method = RequestMethod.POST)
	public String insertWish(
			@RequestParam int p_no,		//상품번호
			@RequestParam int p_qty,	//상품 수량
			Model model,
			HttpSession session){	//로그인 회원 받아오기 위한 세션
		String forwardPath = "";
		Member member = (Member) session.getAttribute("sMember");	
		List<Product> productList = new ArrayList<Product>();
		
		if(member == null){	// 로그인 안된 경우
			forwardPath = "redirect:loginForm";
		} else {			// 로그인 된 경우
			try {
				HashMap<String, Object> insertMap=new HashMap<String,Object>();	//mapper로 넘기는 param
				int w_no = 0 ; 	// 위시리스트 번호 
				insertMap.put("wd_price", p_qty * productService.findByNo(p_no).getP_price());	//총액
				insertMap.put("wd_amount", p_qty);
				insertMap.put("wd_p_no", p_no);
				insertMap.put("w_m_id", member.getM_id());
		
				int count = wishListService.selectCount(member.getM_id());	// 아이디로 wishlist가 존재하는지 확인 
				if(count == 0){			// wishlist가 없는 경우
					wishListService.insertWish(insertMap);					// wishlist와 wishlist_detail 모두 insert
				} else {				// wishlist가 있는 경우
					w_no = wishListService.selectWnoByMemberId(member.getM_id());	//wishlist 번호 
					insertMap.put("wd_w_no", w_no);											// hashmap에 wishlist 번호 추가
					wishListService.insertWishDetail(insertMap);							// wishlist_detail 만 insert
				}
				productList = wishListService.findProductList(member.getM_id());	// 아이디로 위시리스트 상품리스트 반환 
				forwardPath = "index";
				model.addAttribute("pList", productList);
				model.addAttribute("path", "wishlist.jsp");
			} catch (Exception e) {
				forwardPath = "redirect:404error";
			}
		}
		return forwardPath;
	}
	
	// 메인 화면에서 위시리스트 추가
	@RequestMapping(value="/quickWish")
	public String insertQuickWish(
			@RequestParam int p_no,	//상품번호
			Model model,
			HttpSession session){
		String forwardPath = "";
		Member member = (Member) session.getAttribute("sMember");	
		List<Product> productList = new ArrayList<Product>();
		
		if(member == null){	// 로그인 안된 경우
			forwardPath = "redirect:loginForm";
		} else {			// 로그인 된 경우
			HashMap<String, Object> insertMap=new HashMap<String,Object>();	//mapper로 넘기는 param
			int w_no = 0 ; 	// 위시리스트 번호 
			try {
				insertMap.put("wd_price", 1 * productService.findByNo(p_no).getP_price());	// 총액
				insertMap.put("wd_amount", 1);				// 수량은 1로 고정
				insertMap.put("wd_p_no", p_no);
				insertMap.put("w_m_id", member.getM_id());
		
				int count = wishListService.selectCount(member.getM_id());	// 아이디로 wishlist가 존재하는지 확인
				if(count == 0){			// wishlist가 없는 경우
					wishListService.insertWish(insertMap);					// wishlist와 wishlist_detail 모두 insert
				} else {				// wishlist가 있는 경우
					w_no = wishListService.selectWnoByMemberId(member.getM_id());	// 아이디가 가진 wishlist 번호 반환 
					insertMap.put("wd_w_no", w_no);											// hashmap에 wishlist 번호 추가
					wishListService.insertWishDetail(insertMap);							// wishlist_detail 에만 insert
				}
				productList = wishListService.findProductList(member.getM_id());	// 아이디로 위시리스트 상품리스트 반환
				forwardPath = "index";
				model.addAttribute("pList", productList);
				model.addAttribute("path", "wishlist.jsp");
			} catch (Exception e) {
				forwardPath = "redirect:404error";
			}
		}
		return forwardPath;
	}
	
	// 위시리스트 상품 삭제
	@RequestMapping(value = "removeItem")
	public String removeProduct(
			@RequestParam("p_no") int wd_p_no,	// 상품번호
			Model model,
			HttpSession session){
		String forwardPath = "";
		Member member = (Member) session.getAttribute("sMember");
		List<Product> productList = new ArrayList<Product>();
		
		if(member == null){	// 로그인 안된 경우
			forwardPath = "redirect:loginForm";
		} else {
			HashMap<String, Object> insertMap=new HashMap<String,Object>();	// mapper로 넘기는 param
			try {
				int w_no = wishListService.selectByMemberId(member.getM_id()).getW_no(); //wishlist 번호
				insertMap.put("wd_w_no", w_no);
				insertMap.put("wd_p_no", wd_p_no);
				wishListService.removeProduct(insertMap); // 상품삭제
				productList = wishListService.findProductList(member.getM_id());	// 아이디로 위시리스트 상품리스트 반환
			} catch (Exception e) {
				forwardPath = "redirect:404error";
			}	
		}
		forwardPath = "index";
		model.addAttribute("pList", productList);
		model.addAttribute("path", "wishlist.jsp");
		
		return forwardPath;
	}
	
	
	
}
