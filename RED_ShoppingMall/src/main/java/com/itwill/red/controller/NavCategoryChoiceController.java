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
public class NavCategoryChoiceController {
	@Autowired
	ProductService prdService;
	@Autowired
	ReviewService reviewService;

	public ReviewService getReviewService() {
		return reviewService;
	}

	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	public ProductService getPrdService() {
		return prdService;
	}

	public void setPrdService(ProductService prdService) {
		this.prdService = prdService;
	}

	@RequestMapping("/page_list")
	public String list(@RequestParam("p_ccode") String p_ccode, Model model) {
		String forwardPath = "index";
		String msg1 = ""; // 카테고리 표시용
		String msg2 = "";
		List<HashMap<String, String>> productList = new ArrayList();
		List<Product> tempList = null;
		try {
			switch (p_ccode) {
			case "5":
				msg1 = "Proudct";
				msg2 = "All Product";
				tempList = prdService.selectAll();
				break;
			case "6":
				msg1 = "Best Seller";
				msg2 = "Best Seller";
				tempList = prdService.selectBestSell();
				break;
			case "7":
				msg1 = "New Item";
				msg2 = "New Item";
				tempList = prdService.selectNewSell();
				break;
			case "8":
				msg1 = "Featured Product";
				msg2 = "Featured Product";
				tempList = prdService.selectSaleSell();
				break;
			}
			productList = prdScoreSetter(tempList);
			
			model.addAttribute("p_ccode", p_ccode);
			model.addAttribute("msg1", msg1);
			model.addAttribute("msg2", msg2);
			model.addAttribute("pList", productList);
			model.addAttribute("path", "list.jsp");
		} catch (Exception e) {
			forwardPath = "redirect:404error";
		}
		return forwardPath;
	}

	@RequestMapping("/page_grid")
	public String grid(Model model, @RequestParam("p_ccode") String p_ccode) {
		String forwardPath = "index";
		String msg1 = ""; // 카테고리 표시용
		String msg2 = "";
		List<Product> productList = new ArrayList<Product>();
		try {
			switch (p_ccode) {
			case "5":
				msg1 = "Proudct";
				msg2 = "All Product";
				productList = prdService.selectAll();
				break;
			case "6":
				msg1 = "Best Seller";
				msg2 = "Best Seller";
				productList = prdService.selectBestSell();
				break;
			case "7":
				msg1 = "New Item";
				msg2 = "New Item";
				productList = prdService.selectNewSell();
				break;
			case "8":
				msg1 = "Featured Product";
				msg2 = "Featured Product";
				break;
			}
			model.addAttribute("p_ccode", p_ccode);
			model.addAttribute("msg1", msg1);
			model.addAttribute("msg2", msg2);
			model.addAttribute("pList", productList);
			model.addAttribute("path", "grid.jsp");
		} catch (Exception e) {
			model.addAttribute("path", "404error.jsp");
		}
		return forwardPath;
	}

	@RequestMapping("/page_product_detail")
	public String productDetatil(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "product_detail.jsp");
		return forwardPath;
	}

	@RequestMapping("/shopping_cart")
	public String shopping_cart(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "shopping_cart.jsp");
		return forwardPath;
	}

	@RequestMapping("/checkout")
	public String checkout(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "checkout.jsp");
		return forwardPath;
	}

	@RequestMapping("/wishlist")
	public String wishlist(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "wishlist.jsp");
		return forwardPath;
	}

	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "dashboard.jsp");
		return forwardPath;
	}

	@RequestMapping("/multiple_addresses")
	public String multiple_addresses(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "multiple_addresses.jsp");
		return forwardPath;
	}

	@RequestMapping("/about_us")
	public String about_us(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "about_us.jsp");
		return forwardPath;
	}

	@RequestMapping("/compare")
	public String compare(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "compare.jsp");
		return forwardPath;
	}

	@RequestMapping("/faq")
	public String faq(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "faq.jsp");
		return forwardPath;
	}

	@RequestMapping("/quick_view")
	public String quick_view(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "quick_view.jsp");
		return forwardPath;
	}

	@RequestMapping("/blog")
	public String blog(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "blog.jsp");
		return forwardPath;
	}

	@RequestMapping("/404error")
	public String error404(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "404error.jsp");
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
