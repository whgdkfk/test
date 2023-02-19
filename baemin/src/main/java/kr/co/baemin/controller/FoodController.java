package kr.co.baemin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.baemin.service.FoodService;

@Controller
public class FoodController {
	@Autowired
	@Qualifier("fs")
	private FoodService service;
	
	@RequestMapping("/food/food")
	public String food(Model model) {
		return service.food(model);
	}
	
	@RequestMapping("/food/getcode")
	public void getCode(HttpServletRequest request, PrintWriter out) {
		service.getCode(request, out);
	}
	
	@RequestMapping("/food/food_ok")
	public String food_ok(HttpServletRequest request) throws IOException {
		return service.food_ok(request);
	}
	
	@RequestMapping("/food/flist")
	public String flist(HttpServletRequest request, Model model) {
		return service.flist(request, model);
	}
	
	@RequestMapping("/food/fcontent")
	public String fcontent(HttpServletRequest request, Model model, HttpSession session) {
		return service.fcontent(request, model, session);
	}
	
	@RequestMapping("/food/wish_add")
	public void wish_add(HttpSession session, HttpServletRequest request,
			PrintWriter out) {
		service.wish_add(request, session, out);
	}
	
	@RequestMapping("/excludes/menu_put")
	public String menu_put(HttpSession session, Model model) {
		return service.menu_put(session, model);
	}
	
	@RequestMapping("/food/one")
	public String one(HttpServletRequest request, Model model) {
		return service.one(request, model);
	}
}
