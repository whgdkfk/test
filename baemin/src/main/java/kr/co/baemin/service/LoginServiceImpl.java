package kr.co.baemin.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.baemin.mapper.LoginMapper;
import kr.co.baemin.vo.MemberVo;

@Service
@Qualifier("ls")
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginMapper mapper;
	
	@Override
	public String login(HttpServletRequest request, Model model) {
		String chk = request.getParameter("chk");
		model.addAttribute("chk", chk);
		return "/login/login";
	}
	
	@Override
	public String login_ok(MemberVo mvo, HttpSession session) {
		MemberVo mvo2 = mapper.login_ok(mvo);
		// 회원이 맞으면 세션변수를 할당
		if(mvo2 == null) { // 회원이 아니라면
			return "redirect:/login/login?chk=1";
		}else { // 회원이라면
			// 세션변수
			session.setAttribute("userid", mvo2.getUserid());
			session.setAttribute("name", mvo2.getName());
			return "redirect:/main/main";
		}
	}

	@Override
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main/main";
	}

	@Override
	public void userid_search(HttpServletRequest request, PrintWriter out) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userid = mapper.userid_search(name, email);
		if(userid == null) {
			out.print("1");
		}else {
			out.print(userid);
		}
	}

	@Override
	public void pwd_search(HttpServletRequest request, PrintWriter out) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userid = request.getParameter("userid");
		String pwd = mapper.pwd_search(name, email, userid);
		if(pwd == null) {
			out.print("1");
		}else {
			out.print(pwd);
		}
	}
}
