package kr.co.baemin.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface MypageService {
	public String wishview(HttpSession session, Model model);
	public String wishdel(HttpServletRequest request);
	public String cartadd(HttpServletRequest request, HttpSession session);
	public String cartview(HttpSession session, Model model);
}
