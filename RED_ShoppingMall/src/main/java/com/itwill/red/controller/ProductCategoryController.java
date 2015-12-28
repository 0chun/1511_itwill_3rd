package com.itwill.red.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.binding.BindingException;
import org.hibernate.mapping.Value;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.red.dto.Product;
import com.itwill.red.service.ProductService;
import com.itwill.red.service.ReviewService;

@Controller
public class ProductCategoryController {
	@Autowired
	ProductService productService;
	@Autowired
	ReviewService reviewService;

	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping(value = "/productList")
	public String list(@RequestParam int p_ccode, Model model) throws Exception {
		int temp_code = 0;
		String forwardPath = "";
		String msg1 = ""; // 카테고리 표시용
		String msg2 = ""; // 카테고리 표시용
		List<Product> productList = new ArrayList<Product>();
		if (p_ccode == 5 || p_ccode == 6 || p_ccode == 7 || p_ccode == 8) {
			switch (p_ccode) {
			case 5:
				msg1 = "Proudct";
				msg2 = "All Product";
				productList = productService.selectAll();
				break;
			case 6:
				msg1 = "Best Seller";
				msg2 = "Best Seller";
				productList = productService.selectBestSell();
				break;
			case 7:
				msg1 = "New Item";
				msg2 = "New Item";
				productList = productService.selectNewSell();
				break;
			case 8:
				msg1 = "Featured Product";
				msg2 = "Featured Product";
				productList = productService.selectSaleSell();
				break;
			}
		} else {
			temp_code = p_ccode / 10;
			if (temp_code == 1) {
				msg1 = "Women";
				if (p_ccode == 11) {
					msg2 = "Jacket";
				} else if (p_ccode == 12) {
					msg2 = "Tops";
				} else if (p_ccode == 13) {
					msg2 = "Pants";
				} else if (p_ccode == 14) {
					msg2 = "Accesories";
				}
			} else if (temp_code == 2) {
				msg1 = "Men";
				if (p_ccode == 21) {
					msg2 = "Jacket";
				} else if (p_ccode == 22) {
					msg2 = "Tops";
				} else if (p_ccode == 23) {
					msg2 = "Pants";
				} else if (p_ccode == 24) {
					msg2 = "Accesories";
				}
			} else if (temp_code == 3) {
				msg1 = "Jewellery";
				if (p_ccode == 31) {
					msg2 = "Earrings";
				} else if (p_ccode == 32) {
					msg2 = "Rings";
				} else if (p_ccode == 33) {
					msg2 = "Pendants";
				}
			} else if (temp_code == 4) {
				msg1 = "Electronics";
				if (p_ccode == 41) {
					msg2 = "Smartphones";
				} else if (p_ccode == 42) {
					msg2 = "Cameras";
				} else if (p_ccode == 43) {
					msg2 = "Accesories";
				}
			}
			try {
				if ((p_ccode % 10) != 0) {
					productList = productService.findProductByCode(p_ccode);
				} else {
					productList = productService.findProductByCode(temp_code);
				}

			} catch (Exception e) {
				forwardPath = "redirect:404error";
			}
		}
		
		List<HashMap<String, String>> mapList = prdScoreSetter(productList);
		
		forwardPath = "index";
		model.addAttribute("path", "list.jsp");
		model.addAttribute("p_ccode", p_ccode);
		model.addAttribute("temp_code", temp_code);
		model.addAttribute("pList", mapList);
		model.addAttribute("msg1", msg1);
		model.addAttribute("msg2", msg2);
		return forwardPath;
	}

	@RequestMapping(value = "/productGrid")
	public String grid(@RequestParam int p_ccode, Model model) throws Exception {
		String forwardPath = "";
		String msg1 = ""; // 카테고리 표시용
		String msg2 = ""; // 카테고리 표시용
		List<Product> productList = new ArrayList<Product>();
		int temp_code = 0;
		if (p_ccode == 5 || p_ccode == 6 || p_ccode == 7 || p_ccode == 8) {
			switch (p_ccode) {
			case 5:
				msg1 = "Proudct";
				msg2 = "All Product";
				productList = productService.selectAll();
				break;
			case 6:
				msg1 = "Best Seller";
				msg2 = "Best Seller";
				productList = productService.selectBestSell();
				break;
			case 7:
				msg1 = "New Item";
				msg2 = "New Item";
				productList = productService.selectNewSell();
				break;
			case 8:
				msg1 = "Featured Product";
				msg2 = "Featured Product";
				productList = productService.selectSaleSell();
				break;
			}
		} else {
			temp_code = p_ccode / 10;
			if (temp_code == 1) {
				msg1 = "Women";
				if (p_ccode == 11) {
					msg2 = "Jacket";
				} else if (p_ccode == 12) {
					msg2 = "Tops";
				} else if (p_ccode == 13) {
					msg2 = "Pants";
				} else if (p_ccode == 14) {
					msg2 = "Accesories";
				}
			} else if (temp_code == 2) {
				msg1 = "Men";
				if (p_ccode == 21) {
					msg2 = "Jacket";
				} else if (p_ccode == 22) {
					msg2 = "Tops";
				} else if (p_ccode == 23) {
					msg2 = "Pants";
				} else if (p_ccode == 24) {
					msg2 = "Accesories";
				}
			} else if (temp_code == 3) {
				msg1 = "Jewellery";
				if (p_ccode == 31) {
					msg2 = "Earrings";
				} else if (p_ccode == 32) {
					msg2 = "Rings";
				} else if (p_ccode == 33) {
					msg2 = "Pendants";
				}
			} else if (temp_code == 4) {
				msg1 = "Electronics";
				if (p_ccode == 41) {
					msg2 = "Smartphones";
				} else if (p_ccode == 42) {
					msg2 = "Cameras";
				} else if (p_ccode == 43) {
					msg2 = "Accesories";
				}
			}
			try {
				if ((p_ccode % 10) != 0) {
					productList = productService.findProductByCode(p_ccode);
				} else {
					productList = productService.findProductByCode(temp_code);
				}
			} catch (Exception e) {
				forwardPath = "redirect:404error";
			}
		}
		forwardPath = "index";
		
		List<HashMap<String, String>> mapList = prdScoreSetter(productList);
		
		model.addAttribute("path", "grid.jsp");
		model.addAttribute("p_ccode", p_ccode);
		model.addAttribute("temp_code", temp_code);
		model.addAttribute("pList", mapList);
		model.addAttribute("msg1", msg1);
		model.addAttribute("msg2", msg2);
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
