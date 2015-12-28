package com.itwill.red.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.red.dto.Member;
import com.itwill.red.dto.Orders;
import com.itwill.red.service.OrdersService;

@Controller
public class MyAccountBuddleController {
	@Autowired
	OrdersService orderService;

	public void setOrderService(OrdersService orderService) {
		this.orderService = orderService;
	}

	@RequestMapping("/myAccount")
	public String myAccountForm(Model model, HttpSession session) {
		String forwardPath = "index";
		try {
			Member member = (Member) session.getAttribute("sMember");
			ArrayList<Orders> ordList = orderService.selectByMemberId(member.getM_id());
			model.addAttribute("sidemenu_pointer", "1");
			model.addAttribute("ordList", ordList);
			model.addAttribute("path", "dashboard.jsp");
		} catch (Exception e) {
			forwardPath = "redirect:404error";
		}
		return forwardPath;
	}
}
