package kr.co.baemin.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.baemin.mapper.MypageMapper;
import kr.co.baemin.vo.CartVo;

@Service
@Qualifier("ms")
public class MypageServiceImpl implements MypageService{
	@Autowired
	private MypageMapper mapper;

	@Override
	public String wishview(HttpSession session, Model model) {
		
		if(session.getAttribute("userid") == null) {
			return "redirect:/login/login";
		}else {
			String userid = session.getAttribute("userid").toString();
			model.addAttribute("wlist", mapper.wishview(userid));
			return "/mybaemin/wishview";
		}
	}

	@Override
	public String wishdel(HttpServletRequest request) {
		String id = request.getParameter("id");
		mapper.wishdel(id);
		return "redirect:/mybaemin/wishview";
	}

	@Override
	public String cartadd(HttpServletRequest request, HttpSession session) {
		String fcode = request.getParameter("fcode");
		String userid = session.getAttribute("userid").toString();
		
		/*int cnt = mapper.cartcheck(fcode, userid);
		if(cnt == 1) {
			mapper.cartup(fcode, userid);
		}else {
			mapper.cartadd(fcode, userid);
		}*/
		
		mapper.cartadd(fcode, userid);
		return "redirect:/mybaemin.cartview";
	}

	@Override
	public String cartview(HttpSession session, Model model) {
		if(session.getAttribute("userid") == null) {
			return "redirect:/login/login";
		}else {
			String userid = session.getAttribute("userid").toString();
			ArrayList<CartVo> clist = mapper.cartview(userid);
			model.addAttribute("clist", clist);
			
			return "/mybaemin/cartview";
		}
	}
}
