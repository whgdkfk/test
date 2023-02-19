package kr.co.baemin.mapper;

import java.util.ArrayList;

import kr.co.baemin.vo.DaeVo;
import kr.co.baemin.vo.FoodVo;

public interface FoodMapper {
	public ArrayList<DaeVo> getDae();
	public int getCode(String fcode);
	public void food_ok(FoodVo fvo);
	public ArrayList<FoodVo> flist(String fcode);
	public FoodVo fcontent(String fcode);
	public void wish_add(String fcode, String userid);
	public void wish_del(String fcode, String userid);
	public int getWish(String fcode, String userid);
	public ArrayList<FoodVo> menu_put(String userid);
	public ArrayList<FoodVo> one(String state);
}
