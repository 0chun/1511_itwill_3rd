package com.itwill.red.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.red.dto.Zip;
import com.itwill.red.service.MemberService;

@Controller
public class ZipcodeSearchController {
	@Autowired
	MemberService memberService;

	@RequestMapping("/zipcode")
	public String zipcode(@RequestParam("dong") String dong, Model model, @RequestParam("flag") String flag)
			throws Exception {
		System.err.println(dong);
		String forwardPath = "zipcode";
		List<Zip> zList = memberService.findZip(dong);
		System.out.println(zList.indexOf(1));
		model.addAttribute("zList", zList);
		model.addAttribute("flag", flag);
		model.addAttribute("keyword", dong);
		return forwardPath;
	}

	@RequestMapping("/zipcodeForm")
	public String zipcodeForm(@RequestParam("flag") String flag, Model model) {
		String forwardPath = "zipcode";
		model.addAttribute("flag", flag);
		return forwardPath;
	}

	@RequestMapping("/zipcode_view_order")
	public String zipcode_UseOrder() {
		String forwardPath = "";

		return forwardPath;
	}
}
