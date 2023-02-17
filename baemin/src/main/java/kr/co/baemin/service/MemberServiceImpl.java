package kr.co.baemin.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.baemin.mapper.MemberMapper;
import kr.co.baemin.vo.MemberVo;

@Service
@Qualifier("ms")
public class MemberServiceImpl implements MemberService{
	@Autowired MemberMapper mapper;

	@Override
	public void userid_check(HttpServletRequest request, PrintWriter out) {
		String userid = request.getParameter("userid");
		out.print(mapper.userid_check(userid));
	}

	@Override
	public String member_input_ok(MemberVo mvo) {
		mapper.member_input_ok(mvo);
		return "redirect:/login/login?chk=2";
	}
	
	@Override
	public String member_mybaemin(HttpSession session, Model model) {
		String userid = session.getAttribute("userid").toString();
		model.addAttribute("mvo", mapper.member_mybaemin(userid));
		return "/member/member_mybaemin";
	}
	
	@Override
	public String member_edit(HttpSession session, Model model) {
		String userid = session.getAttribute("userid").toString();
		model.addAttribute("mvo", mapper.member_edit(userid));
		return "/member/member_edit";
	}

	@Override
	public String member_edit_ok(MemberVo mvo, HttpSession session) {
		String userid = session.getAttribute("userid").toString();
		mvo.setUserid(userid);
		mapper.member_edit_ok(mvo);
		return "redirect:/member/member_mybaemin";
	}

	

}
