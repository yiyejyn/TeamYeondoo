package com.inthemornin.ootd.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inthemornin.ootd.model.ClothesVO;
import com.inthemornin.ootd.model.CustomerVO;
import com.inthemornin.ootd.repository.IClothRepository;

@Service
public class ClothService implements IClothService {

	@Autowired
	IClothRepository clothRepository;
	
	@Override
	public int getCount() {
		return clothRepository.getCount();
	}

	@Override
	public int getCount(int deptid) {
		return clothRepository.getCount(deptid);
	}
	
	@Override
	public List<ClothesVO> getClothList() {
		return clothRepository.getClothList();
	}
	
	@Override
	public List<Map<String, Object>> getAllCloth() {
		return clothRepository.getAllCloth();
	}
	
	@Override
	public List<Map<String, Object>> getCustCloth() {
		return clothRepository.getCustCloth();
	}
	
}
