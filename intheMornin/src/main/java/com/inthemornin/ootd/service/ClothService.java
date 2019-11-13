package com.inthemornin.ootd.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
	public int getCustClothCount(String custId) {
		return clothRepository.getCustClothCount(custId);
	}
	
	@Override
	public List<ClothesVO> getClothList() {
		return clothRepository.getClothList();
	}
	
	@Override
	public ClothesVO getClothInfo(String custId) {
		return clothRepository.getClothInfo(custId);
	}
	
	@Override
	public List<Map<String, Object>> getAllCloth() {
		return clothRepository.getAllCloth();
	}
	
	@Override
	public List<Map<String, Object>> getCustCloth() {
		return clothRepository.getCustCloth();
	}
	
	@Override
	public void updateCloth(ClothesVO cloth) {
		clothRepository.updateCloth(cloth);
	}
	
	@Override
	public void insertCloth(ClothesVO cloth, HttpSession session) {
		clothRepository.insertCloth(cloth, session);
	}

	@Override
	public void deleteCloth(int clothId, String custId) {
		clothRepository.deleteCloth(clothId, custId);
	}
	
}
