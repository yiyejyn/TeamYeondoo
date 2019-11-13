package com.inthemornin.ootd.repository;

import java.util.List;
import java.util.Map;

import com.inthemornin.ootd.model.ClothesVO;
import com.inthemornin.ootd.model.CustomerVO;


public interface IClothRepository {
	int getCount();
	int getCount(int deptid);
	int getCustClothCount(int deptid);
	List<ClothesVO> getClothList();
	List<Map<String, Object>> getAllCloth();
	List<Map<String, Object>> getCustCloth();
}