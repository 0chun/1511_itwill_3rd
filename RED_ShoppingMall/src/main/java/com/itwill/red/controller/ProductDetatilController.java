package com.itwill.red.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.StringTokenizer;

import org.apache.ibatis.binding.BindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.red.dto.Product;
import com.itwill.red.dto.Reviews;
import com.itwill.red.service.ProductService;
import com.itwill.red.service.ReviewService;

@Controller
public class ProductDetatilController {
	@Autowired
	ProductService productService;

	@Autowired
	ReviewService reviewService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	/*
	 * 2015년 11월 25일 추가 서주원 디테일 뷰에서 Product의 size와 color를 ArrayList로 만들기 위한 메소드
	 */
	private static ArrayList<String> stringTokenList(String token) {
		ArrayList<String> strList = new ArrayList<String>();
		StringTokenizer st = new StringTokenizer(token, "|");
		while (st.hasMoreTokens()) {
			strList.add(st.nextToken());
		}
		return strList;
	}

	/*
	 * 2015년 11월 25일 수정 서주원 연관 카테고리 리스트 특가 상품 리스트 만들어서 보내줘야 함
	 */

	/*
	 * 2015년 11월27일 수정 정상훈 주원이형 만든거 + reviewList 출력 추가
	 */
	@RequestMapping("product_detail")
	public String product_detatil(@RequestParam("p_no") String p_no, @ModelAttribute("review") Reviews review,
			Model model) {
		String forwardPath = "index";
		List<Reviews> reviewList = null;
		int resultReview = 0;
		ArrayList<Product> relationProductList = new ArrayList<Product>();
		List<HashMap<String, String>> pBestSellList = null;
		List<HashMap<String, String>> pUpSellList = null;
		try {
			pBestSellList = prdScoreSetter(productService.selectBestSell(4));
			pUpSellList = prdScoreSetter(productService.selectUpSell(4));

			Product product = productService.findByNo(Integer.parseInt(p_no));
			resultReview = reviewService.findAvgReview(Integer.parseInt(p_no));
			reviewList = reviewService.findReviewProductNo(Integer.parseInt(p_no));
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("code", product.getP_ccode());
			map.put("count", 5);
			relationProductList = productService.relationProduct(map);

			model.addAttribute("path", "product_detail.jsp");
			model.addAttribute("product", product);
			model.addAttribute("size", stringTokenList(product.getP_size()));
			model.addAttribute("color", stringTokenList(product.getP_color()));
			model.addAttribute("reviewList", reviewList);
			model.addAttribute("resultReview", resultReview);
			model.addAttribute("relationProductList", relationProductList);
			model.addAttribute("pBestSellList", pBestSellList);
			model.addAttribute("pUpSellList", pUpSellList);
			
		} catch (Exception e) {
			forwardPath = "redirect:404error";
		}
		return forwardPath;
	}

	/*
	 * 2015년 12월 1일 추가 - 서주원 퀵뷰에 정보 전달
	 */
	@RequestMapping(value = "quickView", method = RequestMethod.POST)
	public String quickViewPage(@RequestParam int p_no, Model model) {
		String forwardPath = "aJaxRequestPage";
		ArrayList<Product> relationProductList = new ArrayList<Product>();
		StringBuffer stringBuffer = new StringBuffer();
		try {
			Product product = productService.findByNo(p_no); // 클릭한 상품
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("code", product.getP_ccode());
			map.put("count", 8);

			relationProductList = productService.relationProduct(map); // 그와 관련된
																		// 5개 상품

			stringBuffer.append(addDelimiter(product.getP_image()));
			stringBuffer.append(addDelimiter(relationProductList.get(0).getP_image()));

			for (int i = 1; i < 8; i++) {
				stringBuffer.append(addDelimiter(relationProductList.get(i).getP_image()));
			}

			stringBuffer.append(addDelimiter(product.getP_name()));
			stringBuffer.append("￦" + addDelimiter(String.format("%,d", product.getP_price())));
			stringBuffer.append("￦" + addDelimiter(String.format("%,d", product.calculationPrice())));
			stringBuffer.append(addDelimiter(String.valueOf(product.getP_no())));
			stringBuffer.append(addDelimiter(product.getP_color()));
			stringBuffer.append(addDelimiter(product.getP_size()));
			model.addAttribute("idMsg", stringBuffer);
			model.addAttribute("product", product);
			model.addAttribute("relationProductList", relationProductList);
		} catch (Exception e) {
			forwardPath = "redirect:404error";
		}
		return forwardPath;
	}

	/*
	 * 2015년 12월 3일 추가 - 서주원 문자열 뒤에 구분자 추가
	 */
	private static String addDelimiter(String str) {
		return str + "|";
	}

	private List<HashMap<String, String>> prdScoreSetter(List<Product> prdList) throws BindingException, Exception {
		ArrayList<HashMap<String, String>> pList = new ArrayList<HashMap<String, String>>();
		HashMap<String, String> pMap = null;
		for (Product product : prdList) {
			pMap = new HashMap<String, String>();
			pMap.put("p_no", product.getP_no() + "");
			pMap.put("p_name", product.getP_name());
			pMap.put("p_price", product.getP_price() + "");
			pMap.put("p_detail", product.getP_detail());
			pMap.put("p_indate", product.getP_indate() + "");
			pMap.put("p_sell", product.getP_sell() + "");
			pMap.put("p_score", product.getP_score() + "");
			pMap.put("p_discount", product.getP_discount() + "");
			pMap.put("p_size", product.getP_size());
			pMap.put("p_color", product.getP_color());
			pMap.put("p_ccode", product.getP_ccode() + "");
			pMap.put("p_image", product.getP_image());
			pMap.put("p_compay", product.getP_compay() + "");
			int resultReview = reviewService.findAvgReview(product.getP_no());
			pMap.put("resultReview", resultReview + "");
			pMap.put("calculationPrice", product.calculationPrice() + "");
			pList.add(pMap);
		}
		return pList;
	}
}
