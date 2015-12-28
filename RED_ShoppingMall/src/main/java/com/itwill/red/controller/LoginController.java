package com.itwill.red.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.red.dto.Member;
import com.itwill.red.exception.MemberNotFoundException;
import com.itwill.red.exception.PasswordMismatchException;
import com.itwill.red.service.MemberService;

@Controller
public class LoginController {
	@Autowired
	MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@RequestMapping("loginForm")
	public String loginForm(Model model) {
		String forwardPath = "";
		model.addAttribute("path", "login.jsp");
		forwardPath = "index";
		return forwardPath;
	}

	@RequestMapping("login")
	public String login(@RequestParam("login[username]") String username,
			@RequestParam("login[password]") String password, HttpSession session, Model model) {
		String forwardPath = "index";
		try {
			Member sMember = memberService.login(username, password);
			session.setAttribute("sMember", sMember);
			model.addAttribute("path", "main.jsp");
			forwardPath = "redirect:indexPage";
		} catch (MemberNotFoundException e) {
			e.printStackTrace();
			Member tempMember = new Member();
			tempMember.setM_id(username);
			tempMember.setM_password(password);
			model.addAttribute("path", "login.jsp");
			model.addAttribute("MSG1", e.getMessage());
			model.addAttribute("fMember", tempMember);
		} catch (PasswordMismatchException e) {
			e.printStackTrace();
			Member tempMember = new Member();
			tempMember.setM_id(username);
			tempMember.setM_password(password);
			model.addAttribute("path", "login.jsp");
			model.addAttribute("MSG2", e.getMessage());
			model.addAttribute("fMember", tempMember);
		} catch (Exception e) {
			forwardPath = "redirect:404error";
		}
		return forwardPath;
	}
}
