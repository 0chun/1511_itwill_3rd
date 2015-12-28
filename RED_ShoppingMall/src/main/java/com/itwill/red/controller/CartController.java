package com.itwill.red.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import java.util.Map.Entry;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.itwill.red.dto.Product;
import com.itwill.red.service.ProductService;
import com.itwill.red.service.impl.MyCartInfo;
import com.itwill.red.service.impl.ProductInfo;

@Controller
@SessionAttributes("myCart")
public class CartController {
	@Autowired
	private ProductService productService;
	
	/*
	 * 2015년 11월 25일 추가 - 서주원
	 * 디테일 뷰에서 카트 담기를 눌렀을 경우
	 */
	@RequestMapping(value="/addCart", method=RequestMethod.POST)	// 옵션들도 들어와야 하는데
	public String addCartPage(
			@RequestParam int p_no,
			@RequestParam String p_size,
			@RequestParam String p_color,
			@RequestParam int p_qty,
			HttpSession session,
			Model model) {
		String forwardPath = "index";
		Product product = null;
		MyCartInfo myCartInfo = (MyCartInfo)session.getAttribute("myCart");
		try {
			product = productService.findByNo(p_no);	// 상품 번호로 검색
			product.setP_color(p_color);	// 선택한 컬러로 저장
			product.setP_size(p_size);		// 선택한 사이즈로 저장
		} catch (Exception e) {
			forwardPath = "redirect:404error";
		}
		
		if(myCartInfo == null) {	// 세션에 카트가 없다면
			myCartInfo = new MyCartInfo();
		}
		myCartInfo.addProduct(product, p_qty);
		model.addAttribute("path", "shopping_cart.jsp");
		model.addAttribute("myCart", myCartInfo);	// 세션에 저장
		return forwardPath;
	}
	
	/*
	 * 2015년 11월 25일 추가 - 서주원
	 * 메뉴에서 직접 카트를 눌렀을 경우
	 * 2015년 11월 28일 수정 - 서주원
	 * 2015년 11월 30일 수정 - 서주원
	 */
	@RequestMapping(value="quickCart", method=RequestMethod.POST)
	public String cartPage(
			@RequestParam int p_no,
			HttpSession session,
			Model model) {
		Product product = null;
		String forwardPath = "aJaxRequestPage";
		StringBuffer stringBuffer = null;
		MyCartInfo myCartInfo = (MyCartInfo)session.getAttribute("myCart");
		if(myCartInfo == null) {
			myCartInfo = new MyCartInfo();
		}
		try {
			product = productService.findByNo(p_no);	// 상품 번호로 검색
			StringTokenizer st = new StringTokenizer(product.getP_size(), "|");
			product.setP_size(st.nextToken());	// 맨 앞에 있는 옵션으로 저장
			st = new StringTokenizer(product.getP_color(), "|");
			product.setP_color(st.nextToken());	// 맨 앞에 있는 옵션으로 저장
			myCartInfo.addProduct(product, 1);	// 카트에 저장
			stringBuffer = new StringBuffer();
			stringBuffer.append(myCartInfo.getTotalCount() + " 개");
			stringBuffer.append("|");
			Iterator<Entry<String, ProductInfo>> entryIter	// 카트가 가지고 있는맵의 이터레이터
					= myCartInfo.getMyCartHashMap().entrySet().iterator();	// 가져와
			stringBuffer.append(headerCartList(entryIter));	// 헤드 카트 리스트
			stringBuffer.append("|");
			String tempString = String.format("%,d", myCartInfo.getTotalPrice());
			stringBuffer.append(tempString);
			model.addAttribute("myCart", myCartInfo);
			model.addAttribute("idMsg", stringBuffer);
		} catch (Exception e) {
			forwardPath = "redirect:404error";
		}	
		return forwardPath;
	}
	
	/*
	 * 2015년 11월 27일 추가 - 서주원
	 * 메인 화면이나 리스트에서 카트 보기
	 */
	@RequestMapping("cart")
	public String quickCartPage(
			Model model) {
		String forwardPath = "index";
		
		ArrayList<Product> rList = new ArrayList<Product>();
		int listSize = productService.relationsProductRandomList().size();
		Random rand = new Random();
		for (int i = 0; i < 4; i++) {
			Product prd = productService.relationsProductRandomList().get(rand.nextInt(listSize));
			prd.calculationPrice();
			rList.add(prd);
		}
		model.addAttribute("pList", rList);
		model.addAttribute("path", "shopping_cart.jsp");
		return forwardPath;
	}
	
	/*
	 * 2015년 11월 27일 추가 - 서주원
	 * 카트 비우기
	 */
	@RequestMapping("cleanCart")
	public String cleanCart(Model model, SessionStatus sessionStatus){
		String forwardPath = "aJaxRequestPage";
		sessionStatus.setComplete();
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("￦0");
		model.addAttribute("idMsg", stringBuffer);
		return forwardPath;
	}
	
	/*
	 * 2015년 11월 28일 추가 - 서주원
	 * 카트 상품 제거
	 */
	@RequestMapping("removeCartProduct")
	public String removeCartProduct(@RequestParam String p_name,
			HttpSession session,
			Model model,SessionStatus sessionStatus) {
		String forwardPath = "aJaxRequestPage";
		StringBuffer stringBuffer = new StringBuffer();
		MyCartInfo myCart = (MyCartInfo)session.getAttribute("myCart");
		myCart.removeProduct(p_name);
		
		if(myCart.getMyCartHashMap().isEmpty()) {	// 카트에 물건이 없으면
			sessionStatus.setComplete();
			stringBuffer.append("￦0");
			model.addAttribute("idMsg", stringBuffer);
			return forwardPath;	// 카트가 비었으므로 더 이상 작업할 필요 없음 0
		}
		model.addAttribute("myCart", myCart);	// 카트에 상품이 있다면 세션에 저장
		
		// 항목이 지워지면 가격도 변경
		String tempString = String.format("%,d", myCart.getTotalPrice());
		stringBuffer.append("￦" + tempString);	// 가격
		stringBuffer.append("|");	// 구분자
		tempString = String.format("%,d", (myCart.getTotalPrice() + 2500));
		stringBuffer.append("￦" + tempString);	// 가격
		stringBuffer.append("|");	// 구분자
		stringBuffer.append(myCart.getTotalCount() + " 개");
		
		model.addAttribute("idMsg", stringBuffer);	// 2
		return forwardPath;
	}
	
	/*
	 * 2015년 11월 30일 추가 - 서주원
	 * 헤드 카트에서 삭제 버튼 눌렀을 경우
	 * 2015년 12월 1일 수정
	 */
	@RequestMapping(value = "quickRemove", method = RequestMethod.POST)
	public String quickRemove(@RequestParam String p_name,
			HttpSession session,
			Model model,SessionStatus sessionStatus) {
		String forwardPath = "aJaxRequestPage";
		MyCartInfo myCart = (MyCartInfo)session.getAttribute("myCart");
		myCart.removeProduct(p_name); 	// 카트에서 삭제
		StringBuffer stringBuffer = new StringBuffer();
		if(myCart.getTotalCount() == 0) {	// 카트에 상품이 없다면
			stringBuffer.append("<li>카트에 담은 상품이 없습니다.</li>");	// 헤드 카트 리스트 부분
			model.addAttribute("idMsg", stringBuffer);
			sessionStatus.setComplete();
			return forwardPath;	// 상품이 없다면 리턴
		}
		// 카트에 상품이 남았다면
		Iterator<Entry<String, ProductInfo>> iter = myCart.getMyCartHashMap().entrySet().iterator();
		stringBuffer.append(headerCartList(iter));	// 헤드 카트 리스트 출력
		stringBuffer.append("|"); // 구분자
		String tempStr = String.format("%,d", myCart.getTotalPrice());
		stringBuffer.append(tempStr);	// 총 가격
		model.addAttribute("idMsg", stringBuffer);
		return forwardPath;
	}
	
	/*
	 * 2015년 11월 30일 추가
	 * 헤트 카트 리스트 출력 메소드
	 */
	private String headerCartList(Iterator<Entry<String, ProductInfo>> iter) {
		StringBuffer cartListHtml = new StringBuffer();
		while(iter.hasNext()) {	// 반복문 돌면서 전체를 다시 뿌림
			Entry<String, ProductInfo> tempEntry = iter.next();
			Product tempP = tempEntry.getValue().getProduct();
			cartListHtml.append("<li class='item even' id='" + tempEntry.getKey() + "'>");
			cartListHtml.append("<a class='product-image' href='#' title='"
							+ tempP.getP_name() + "'>");
			cartListHtml.append("<img alt='" + tempP.getP_name()
							+ "' src='" + tempP.getP_image() + "' width='80'></a>");
			cartListHtml.append("<div class='detail-item'>");
			cartListHtml.append("<div class='product-details'>");
			cartListHtml.append("<a href='#' title='Remove This Item' onClick='javascript:removeCartProduct('"
			+ tempEntry.getKey() + "');' class='glyphicon glyphicon-remove'>&nbsp;</a>");
			cartListHtml.append("<a	class='glyphicon glyphicon-pencil' title='Edit item'"
					+ " href='#'>&nbsp;</a>");
			cartListHtml.append("<p class='product-name'>");
			cartListHtml.append("<a href='product_detail?p_no=" + tempP.getP_no()
								+ "' title='Downloadable Product'>");
			cartListHtml.append(tempP.getP_name() + "</a></p></div>");
			cartListHtml.append("<div class='product-details-bottom'>");
			String tempPrice = String.format("%,d", tempEntry.getValue().getProductTotalPrice());
			cartListHtml.append("<span class='price'> ￦"
						+ tempPrice	+ "</span> <span class='title-desc'>Qty:</span>");
			cartListHtml.append("<strong>" + tempEntry.getValue().getCount() +"</strong>");
			cartListHtml.append("</div></div></li>");
		}
		return cartListHtml.toString();
	}
}