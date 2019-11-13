package com.inthemornin.ootd.repository;

import java.util.List;
import java.util.Map;

import com.inthemornin.ootd.model.ClothesVO;
import com.inthemornin.ootd.model.CustomerVO;


public interface IClothRepository {
	int getCount();
	int getCustClothCount(String custId);
	List<ClothesVO> getClothList();
	ClothesVO getClothInfo(String custId);
	List<Map<String, Object>> getAllCloth();
	List<Map<String, Object>> getCustCloth();
	void updateCloth(ClothesVO cloth);
	void insertCloth(ClothesVO cloth, CustomerVO cust);
	void deleteCloth(int cloth_id, String custId);
}