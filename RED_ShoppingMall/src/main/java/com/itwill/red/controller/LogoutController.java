package com.itwill.red.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	@RequestMapping("/logoutForm")
	public String logout(HttpSession session, Model model) {
		String forwardPath = "redirect:indexPage";
		session.setAttribute("sMember", null);
		/*session.invalidate();*/
		return forwardPath;
	}
}
