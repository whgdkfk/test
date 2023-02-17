package kr.co.baemin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.baemin.service.MypageService;

@Controller
public class MypageController {
	@Autowired
	@Qualifier("ms")
	private MypageService service;
	
	@RequestMapping("/mybaemin/wishview")
	public String wishview(HttpSession session, Model model) {
		return service.wishview(session, model);
	}
	
	@RequestMapping("/mybaemin/wishdel")
	public String wishdel(HttpServletRequest request) {
		return service.wishdel(request);
	}
}
