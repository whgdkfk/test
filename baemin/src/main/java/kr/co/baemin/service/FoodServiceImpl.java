package kr.co.baemin.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.baemin.mapper.FoodMapper;
import kr.co.baemin.vo.FoodVo;

@Service
@Qualifier("fs")
public class FoodServiceImpl implements FoodService{
	@Autowired
	private FoodMapper mapper;

	@Override
	public String food(Model model) {
		// 대분류 테이블을 읽어서 내용을 view에 전달
		model.addAttribute("dae", mapper.getDae());
		return "/food/food";
	}

	@Override
	public void getCode(HttpServletRequest request, PrintWriter out) {
		String fcode = request.getParameter("fcode");
		out.print(mapper.getCode(fcode));
	}

	@Override
	public String food_ok(HttpServletRequest request) throws IOException {
		String path = request.getRealPath("resources/food");
		int size = 1024 * 1024 * 10;
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
		
		String fcode = multi.getParameter("fcode");
		String fimg = multi.getFilesystemName("fimg");
		String shop = multi.getParameter("shop");
		int minorder = Integer.parseInt(multi.getParameter("minorder"));
		int baeprice = Integer.parseInt(multi.getParameter("baeprice"));
		String baetime = multi.getParameter("baetime");
		String juso = multi.getParameter("juso");
		String shop_sogae = multi.getParameter("shop_sogae");
		String hours = multi.getParameter("hours");
		String holiday = multi.getParameter("holiday");
		String phone = multi.getParameter("phone");
		String area = multi.getParameter("area");
		String boss = multi.getParameter("boss");
		String regi_number = multi.getParameter("regi_number");
		String benefit = multi.getParameter("benefit");
		int recent_orders = Integer.parseInt(multi.getParameter("recent_orders"));
		int total_orders = Integer.parseInt(multi.getParameter("total_orders"));
		int wish = Integer.parseInt(multi.getParameter("wish"));
		String boss_gongji = multi.getParameter("boss_gongji");
		String boss_one = multi.getParameter("boss_one");
		String m1 = multi.getParameter("m1");
		String m1_img = multi.getFilesystemName("m1_img");
		String m1_ex = multi.getParameter("m1_ex");
		int m1_price = Integer.parseInt(multi.getParameter("m1_price"));
		String m2 = multi.getParameter("m2");
		String m2_img = multi.getFilesystemName("m2_img");
		String m2_ex = multi.getParameter("m2_ex");
		int m2_price = Integer.parseInt(multi.getParameter("m2_price"));
		String m3 = multi.getParameter("m3");
		String m3_img = multi.getFilesystemName("m3_img");
		String m3_ex = multi.getParameter("m3_ex");
		int m3_price = Integer.parseInt(multi.getParameter("m3_price"));
		String m4 = multi.getParameter("m4");
		String m4_img = multi.getFilesystemName("m4_img");
		String m4_ex = multi.getParameter("m4_ex");
		int m4_price = Integer.parseInt(multi.getParameter("m4_price"));
		String m5 = multi.getParameter("m5");
		String m5_img = multi.getFilesystemName("m5_img");
		String m5_ex = multi.getParameter("m5_ex");
		int m5_price = Integer.parseInt(multi.getParameter("m5_price"));
		int m1_su = Integer.parseInt(multi.getParameter("m1_su"));
		int m2_su = Integer.parseInt(multi.getParameter("m2_su"));
		int m3_su = Integer.parseInt(multi.getParameter("m3_su"));
		int m4_su = Integer.parseInt(multi.getParameter("m4_su"));
		int m5_su = Integer.parseInt(multi.getParameter("m5_su"));
		// int state = Integer.parseInt(multi.getParameter("state"));
		
		int state;
		if(multi.getParameter("state") == null) {
			state = 0;
		}else {
			state = 1;
		}
		
		int fran;
		if(multi.getParameter("fran") == null) {
			fran = 0;
		}else {
			fran = 1;
		}
		
		
		FoodVo fvo = new FoodVo();
		fvo.setFcode(fcode);
		fvo.setFimg(fimg);
		fvo.setShop(shop);
		fvo.setBaeprice(baeprice);
		fvo.setBaetime(baetime);
		fvo.setMinorder(minorder);
		fvo.setJuso(juso);
		fvo.setShop_sogae(shop_sogae);
		fvo.setHours(hours);
		fvo.setHoliday(holiday);
		fvo.setPhone(phone);
		fvo.setArea(area);
		fvo.setBoss(boss);
		fvo.setRegi_number(regi_number);
		fvo.setBenefit(benefit);
		fvo.setRecent_orders(recent_orders);
		fvo.setTotal_orders(total_orders);
		fvo.setWish(wish);
		fvo.setBoss_gongji(boss_gongji);
		fvo.setBoss_one(boss_one);
		fvo.setM1(m1);
		fvo.setM1_img(m1_img);
		fvo.setM1_ex(m1_ex);
		fvo.setM1_price(m1_price);
		fvo.setM2(m2);
		fvo.setM2_img(m2_img);
		fvo.setM2_ex(m2_ex);
		fvo.setM2_price(m2_price);
		fvo.setM3(m3);
		fvo.setM3_img(m3_img);
		fvo.setM3_ex(m3_ex);
		fvo.setM3_price(m3_price);
		fvo.setM4(m4);
		fvo.setM4_img(m4_img);
		fvo.setM4_ex(m4_ex);
		fvo.setM4_price(m4_price);
		fvo.setM5(m5);
		fvo.setM5_img(m5_img);
		fvo.setM5_ex(m5_ex);
		fvo.setM5_price(m5_price);
		fvo.setM1_su(m1_su);
		fvo.setM2_su(m2_su);
		fvo.setM3_su(m3_su);
		fvo.setM4_su(m4_su);
		fvo.setM5_su(m5_su);
		fvo.setState(state);
		fvo.setFran(fran);
		
		mapper.food_ok(fvo);
		
		return "redirect:/food/food";
	}

	@Override
	public String flist(HttpServletRequest request, Model model) {
		String fcode = request.getParameter("fcode");
		ArrayList<FoodVo> flist = mapper.flist(fcode);
		model.addAttribute("flist", flist);
		return "/food/flist";
	}

	@Override
	public String fcontent(HttpServletRequest request, Model model, HttpSession session) {
		String fcode = request.getParameter("fcode");
		FoodVo fvo = mapper.fcontent(fcode);
		model.addAttribute("fvo", fvo);
		System.out.println(fvo.getFimg());
		// 현재 사용자의 아이디로 현재 상품이 wish 테이블에 존재여부를 확인
		if(session.getAttribute("userid") != null) {
			String userid = session.getAttribute("userid").toString();
			int wcnt = mapper.getWish(fcode, userid);
			model.addAttribute("wcnt", wcnt);
		}
		return "/food/fcontent";
	}

	@Override
	public void wish_add(HttpServletRequest request, HttpSession session, PrintWriter out) {
		String fcode = request.getParameter("fcode");
		String userid = session.getAttribute("userid").toString();
		int ck = Integer.parseInt(request.getParameter("ck"));
		
		if(ck == 1) { // 삭제
			try {
				mapper.wish_del(fcode, userid);
				out.print("0");
			}catch(Exception e) {
				out.print("1");
			}
		}else { // 추가
			try {
				mapper.wish_add(fcode, userid);
				out.print("0");
			}catch(Exception e) {
				out.print("1");
			}
		}
	}

	@Override
	public String menu_put(HttpSession session, Model model) {
		String userid = session.getAttribute("userid").toString();
		model.addAttribute("flist", mapper.menu_put(userid));
		return "/excludes/menu_put";
	}
}
