package com.inthemornin.ootd.service;

import java.util.List;
import java.util.Map;

import com.inthemornin.ootd.model.ClothesVO;

public interface IClothService {
	int getCount();
	int getCount(int deptid);
	List<ClothesVO> getClothList();
	List<Map<String, Object>> getAllCloth();
	List<Map<String, Object>> getCustCloth();
}
