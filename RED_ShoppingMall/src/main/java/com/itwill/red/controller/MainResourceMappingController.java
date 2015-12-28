package com.itwill.red.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.binding.BindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.red.dto.Product;
import com.itwill.red.service.ProductService;
import com.itwill.red.service.ReviewService;

@Controller
public class MainResourceMappingController {
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

	@RequestMapping("/indexPage")
	public String mainResourceMapping(Model model) {
		String forwardPath = "";
		List<HashMap<String, String>> pBestSellList = null;
		List<HashMap<String, String>> pUpSellList = null;
		try {
			pBestSellList = prdScoreSetter(productService.selectBestSell(9));
			pUpSellList = prdScoreSetter(productService.selectUpSell(9));

			forwardPath = "index";

		} catch (Exception e) {
			forwardPath = "redirect:404error";
		}
		model.addAttribute("path", "main.jsp");
		model.addAttribute("pList", pBestSellList);
		model.addAttribute("pUpSellList", pUpSellList);

		return forwardPath;
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
			pMap.put("calculationPrice", product.calculationPrice()+"");
			pList.add(pMap);
		}
		return pList;
	}
}
