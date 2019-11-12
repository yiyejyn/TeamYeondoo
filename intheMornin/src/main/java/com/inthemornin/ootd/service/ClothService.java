package com.inthemornin.ootd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inthemornin.ootd.model.CustomerVO;
import com.inthemornin.ootd.repository.IClothRepository;

@Service
public class ClothService implements ICustomerService {

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
	public void insertCust(CustomerVO cust) {
		/// NO USING THIS METHOD IN THIS CLASS
	}
}
