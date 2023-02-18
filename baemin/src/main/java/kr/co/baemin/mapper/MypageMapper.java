package kr.co.baemin.mapper;

import java.util.ArrayList;

import kr.co.baemin.vo.CartVo;
import kr.co.baemin.vo.WishVo;

public interface MypageMapper {
	public ArrayList<WishVo> wishview(String userid);
	public void wishdel(String id);
	public void cartadd(String fcode, String userid);
	public ArrayList<CartVo> cartview(String userid);
}
