package com.itwill.red.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.binding.BindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.red.dto.Product;
import com.itwill.red.service.ProductService;
import com.itwill.red.service.ReviewService;

@Controller
public class SearchController {
	@Autowired
	ProductService productService;
	@Autowired
	ReviewService reviewService;

	public ReviewService getReviewService() {
		return reviewService;
	}

	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping("/searchProduct")
	public String searchProduct(@RequestParam("p_ccode") int p_ccode, @RequestParam("p_search") String p_search,
			Model model, String flag) throws Exception {
		String forwardPath = "index";
		List<HashMap<String, String>> pList = null;
		try {
			HashMap<String, Object> map = new HashMap<String, Object>();
			if (p_search.equals("") || p_search == null) {
				p_search = null;
			}
			map.put("p_ccode", p_ccode);
			map.put("p_search", p_search);
			pList = prdScoreSetter(productService.searchProductList(map));

		} catch (Exception e) {
			forwardPath="redirect:404error";
		}
		model.addAttribute("p_search", p_search);
		model.addAttribute("p_ccode", 5);
		model.addAttribute("msg2", ".");
		if (flag==null || flag.equals("1")) {
			model.addAttribute("path", "list.jsp");
		} else {
			model.addAttribute("path", "grid.jsp");
		}
		model.addAttribute("pList", pList);

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
			pMap.put("calculationPrice", product.calculationPrice() + "");
			pList.add(pMap);
		}
		return pList;
	}
}
