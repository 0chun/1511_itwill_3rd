package com.itwill.red.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.binding.BindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.red.dto.Member;
import com.itwill.red.dto.Orders;
import com.itwill.red.dto.OrdersDetail;
import com.itwill.red.dto.Product;
import com.itwill.red.service.OrderDetailService;
import com.itwill.red.service.OrdersService;
import com.itwill.red.service.ProductService;
import com.itwill.red.service.ReviewService;

@Controller
public class OrderController {

	@Autowired
	OrderDetailService orderDService;

	@Autowired
	ProductService prdService;

	@Autowired
	ReviewService reviewService;

	@Autowired
	OrdersService ordService;

	public void setOrdService(OrdersService ordService) {
		this.ordService = ordService;
	}

	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	public void setOrderDService(OrderDetailService orderDService) {
		this.orderDService = orderDService;
	}

	public void setPrdService(ProductService prdService) {
		this.prdService = prdService;
	}

	@RequestMapping("/orderCart")
	public String orderCart(@RequestParam("p_no") String[] p_no, @RequestParam("p_count") String[] p_count,
			@RequestParam("p_key") String[] p_key, Model model) throws NumberFormatException, Exception {
		ArrayList<HashMap<String, String>> pList = new ArrayList<HashMap<String, String>>();
		int totPrice = 0;
		for (int i = 0; i < p_no.length; i++) {
			String[] strArr = p_key[i].split("[_]");
			Product prdDto = prdService.findByNo(Integer.parseInt(p_no[i]));
			HashMap<String, String> mMap = prdMapper(prdDto);
			mMap.put("p_count", p_count[i]);
			mMap.put("p_color", strArr[1]);
			mMap.put("p_size", strArr[2]);

			pList.add(mMap);
			totPrice += prdDto.calculationPrice() * Integer.parseInt(p_count[i]);
		}
		model.addAttribute("path", "order.jsp");
		model.addAttribute("p_list", pList);
		model.addAttribute("totPrice", totPrice);
		return "index";
	}

	@RequestMapping("/orderDetailView")
	public String orderDetailView(@RequestParam("o_no") String o_no, Model model) {
		// 주문번호 -> 주문상세 리스트 추출
		ArrayList<OrdersDetail> ordDList = orderDService.selectByO_no(Integer.parseInt(o_no));
		try {
			int totPrice = 0;
			for (OrdersDetail arr : ordDList) {
				Product pDto = prdService.findByNo(arr.getOd_p_no());
				pDto.calculationPrice();
				arr.setOd_prd(pDto);
				totPrice += pDto.getCalculationPrice() * arr.getOd_amount();
			}

			// 추천상품(인기,신상,세일) 리스트 추출
			ArrayList<Product> rList = new ArrayList<Product>();
			int listSize = prdService.relationsProductRandomList().size();
			Random rand = new Random();
			for (int i = 0; i < 4; i++) {
				Product prd = prdService.relationsProductRandomList().get(rand.nextInt(listSize));
				prd.calculationPrice();
				rList.add(prd);
			}
			model.addAttribute("rList", rList);
			model.addAttribute("ordDList", ordDList);
			model.addAttribute("path", "order_detail.jsp");
			model.addAttribute("o_no", o_no);
			model.addAttribute("totPrice", totPrice);
		} catch (Exception e) {
			return "redirect:404error";
		}
		return "index";
	}

	@RequestMapping("/orderDetatilListRemove")
	public String orderDetatilListRemove(@RequestParam("p_no") String p_no, @RequestParam("o_no") String o_no,
			Model model) throws Exception {
		orderDService.removeOrdDetail(o_no, p_no);
		model.addAttribute("o_no", o_no);
		return "redirect:orderDetailView";
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

	private HashMap<String, String> prdMapper(Product prdDto) throws Exception {
		HashMap<String, String> pMap = null;
		pMap = new HashMap<String, String>();
		pMap.put("p_no", prdDto.getP_no() + "");
		pMap.put("p_name", prdDto.getP_name());
		pMap.put("p_price", prdDto.getP_price() + "");
		pMap.put("p_detail", prdDto.getP_detail());
		pMap.put("p_indate", prdDto.getP_indate() + "");
		pMap.put("p_sell", prdDto.getP_sell() + "");
		pMap.put("p_score", prdDto.getP_score() + "");
		pMap.put("p_discount", prdDto.getP_discount() + "");
		pMap.put("p_size", prdDto.getP_size());
		pMap.put("p_color", prdDto.getP_color());
		pMap.put("p_ccode", prdDto.getP_ccode() + "");
		pMap.put("p_image", prdDto.getP_image());
		pMap.put("p_compay", prdDto.getP_compay() + "");
		int resultReview = reviewService.findAvgReview(prdDto.getP_no());
		pMap.put("resultReview", resultReview + "");
		pMap.put("calculationPrice", prdDto.calculationPrice() + "");
		return pMap;
	}

	@RequestMapping("/orderComplate")
	public String orderComplate(@RequestParam HashMap map, HttpSession session, Model model,
			HttpServletRequest request) {
		Orders ordDto = new Orders();
		Member member = (Member) session.getAttribute("sMember");
		String path = "";
		ArrayList<HashMap<String, String>> pList = null;
		try {
			if (member == null) {
				ordDto.setO_m_id(null);
				path = "redirect:indexPage";
			} else {
				ordDto.setO_m_id(member.getM_id());
				session.setAttribute("myCart", null);
				path = "redirect:myAccount";
			}
			ordDto.setO_name((String) map.get("firstname"));
			ordDto.setO_total(Integer.parseInt((String) map.get("totPrice")));
			ordDto.setO_dcharge(2500);
			String address = (String) map.get("billing");
			ordDto.setO_zipcode(address.substring(0, 7));
			ordDto.setO_address(address.substring(8));
			ordDto.setO_phone((String) map.get("company"));
			ordDto.setO_status("입금대기");
			String[] p_noArr = request.getParameterValues("p_no");
			String[] p_nameArr = request.getParameterValues("p_name");
			String[] p_optionArr = request.getParameterValues("p_option");
			String[] p_priceArr = request.getParameterValues("p_price");
			String[] p_count = request.getParameterValues("p_count");

			pList = new ArrayList<HashMap<String, String>>();

			for (int i = 0; i < p_noArr.length; i++) {
				HashMap<String, String> pMap = new HashMap<String, String>();
				pMap.put("p_no", p_noArr[i]);
				pMap.put("p_name", p_nameArr[i]);
				pMap.put("p_option", p_optionArr[i]);
				pMap.put("p_price", p_priceArr[i]);
				pMap.put("p_count", p_count[i]);
				pList.add(pMap);
			}
			ordService.insertOrders(ordDto);
			orderDService.insertOrdDetatil(pList);
		} catch (Exception e) {
			path = "redirect:indexPage";
		}
		return path;
	}
}
