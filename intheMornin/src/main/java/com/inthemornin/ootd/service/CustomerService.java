package com.inthemornin.ootd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inthemornin.ootd.model.CustomerVO;
import com.inthemornin.ootd.repository.ICustomerRepository;

@Service
public class CustomerService implements ICustomerService{
	
	@Autowired
	ICustomerRepository customerRepository;
	
	@Override
	public int getCount() {
		return customerRepository.getCount();
	}

	@Override
	public int getCount(int deptid) {
		return customerRepository.getCount(deptid);
	}
	
	@Override
	public void insertCust(CustomerVO cust) {
		customerRepository.insertCust(cust);
	}
	
}
