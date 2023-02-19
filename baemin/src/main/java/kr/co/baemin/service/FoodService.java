package kr.co.baemin.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface FoodService {
	public String food(Model model);
	public void getCode(HttpServletRequest request, PrintWriter out);
	public String food_ok(HttpServletRequest request) throws IOException;
	public String flist(HttpServletRequest request, Model model);
	public String fcontent(HttpServletRequest request, Model model, HttpSession session);
	public void wish_add(HttpServletRequest request, HttpSession session, PrintWriter out);
	public String menu_put(HttpSession session, Model model); // fcontent에서 메뉴 클릭했을 때
	public String one(HttpServletRequest request, Model model);
}
