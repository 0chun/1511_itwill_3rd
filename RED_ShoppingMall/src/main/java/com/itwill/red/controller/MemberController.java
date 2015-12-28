package com.itwill.red.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.red.dto.Member;
import com.itwill.red.exception.ExistedMemberException;
import com.itwill.red.service.MemberService;
import com.itwill.red.service.OrdersService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	@Autowired
	OrdersService ordersService;

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@RequestMapping(value = "/joinForm")
	public String joinForm(Model model) {
		String forwardPath = "index";
		model.addAttribute("path", "join.jsp");
		return forwardPath;
	}

	@RequestMapping(value = "/join")
	public String join(@ModelAttribute("jMember") Member member, Model model) throws ExistedMemberException, Exception {
		try {
			memberService.insertMember(member);
			return "redirect:loginForm";
		} catch (ExistedMemberException e) {
			model.addAttribute("jMember", member);
			model.addAttribute("MSG", e.getMessage());
			return "forward:joinForm";
		}
	}

	@RequestMapping(value = "/joinExist")
	public String existedMember(@ModelAttribute("jMember") Member member, Model model) {
		try {
			memberService.existedMember(member.getM_id());
		} catch (ExistedMemberException e) {
			model.addAttribute("jMember", member);
			model.addAttribute("path", "joinForm.jsp");
			model.addAttribute("idMsg", member.getM_id() + e.getMessage());
		} catch (Exception e){
			return "redirect:404error";
		}
		return "aJaxRequestPage";
	}

	@RequestMapping("/myinfo")
public String myinfo(@ModelAttribute("sMember")Member member, Model model,HttpSession hs){
		String forwardPath = "index";
		member=(Member) hs.getAttribute("sMember");
		model.addAttribute("sMember",member);
		model.addAttribute("path", "myinfo.jsp");
		model.addAttribute("sidemenu_pointer", "2");
		return forwardPath;
	}
	@RequestMapping("/updateMyinfo")
	public String updateMyinfo(@ModelAttribute("sMember")Member member, Model model,HttpSession hs){
		String forwardPath = "redirect:indexPage";
		try{
			memberService.update(member);
			hs.removeAttribute("sMember");
			hs.setAttribute("sMember", member);
			model.addAttribute("sMember",member);
		}catch(Exception e){
			forwardPath = "redirect:404error";
		}
		return forwardPath;
	}
	@RequestMapping("/withdrawal")
	public String withdrawal(@RequestParam("m_id")String m_id,HttpSession hs){
		String forwardPath = "redirect:indexPage";
		try{
			memberService.delete(m_id);
			hs.removeAttribute("sMember");
		}catch(Exception e){
			forwardPath = "redirect:404error";
		}
		return forwardPath;
	}
	@RequestMapping("/withdrawalForm")
	public String withdrawalForm(@ModelAttribute("sMember")Member member, Model model,HttpSession hs){
		String forwardPath = "index";
		model.addAttribute("path", "withdrawal.jsp");
		model.addAttribute("sidemenu_pointer", "9");
		member=(Member) hs.getAttribute("sMember");
		model.addAttribute("sMember",member);
		return forwardPath;
	}
}
