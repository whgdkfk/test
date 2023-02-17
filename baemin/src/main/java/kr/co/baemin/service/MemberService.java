package kr.co.baemin.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.baemin.vo.MemberVo;

public interface MemberService {
	public void userid_check(HttpServletRequest request, 
			PrintWriter out);
	public String member_input_ok(MemberVo mvo);
	public String member_mybaemin(HttpSession session, Model model);
	public String member_edit(HttpSession session, Model model);
	public String member_edit_ok(MemberVo mvo, HttpSession session);
}
