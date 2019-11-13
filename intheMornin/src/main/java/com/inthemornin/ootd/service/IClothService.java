package com.inthemornin.ootd.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.inthemornin.ootd.model.ClothesVO;
import com.inthemornin.ootd.model.CustomerVO;

public interface IClothService {
	int getCount();
	int getCustClothCount(String custId);
	List<ClothesVO> getClothList();
	ClothesVO getClothInfo(String custId);
	List<Map<String, Object>> getAllCloth();
	List<Map<String, Object>> getCustCloth();
	void updateCloth(ClothesVO cloth);
	void insertCloth(ClothesVO cloth, HttpSession session);
	 void deleteCloth(int clothId, String custId);
}
