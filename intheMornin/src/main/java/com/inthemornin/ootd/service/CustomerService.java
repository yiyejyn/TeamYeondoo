package com.inthemornin.ootd.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
	
	@Override
	public void login(CustomerVO vo, HttpSession session) {
		customerRepository.login(vo, session);
	}
	
	@Override
	public boolean loginCheck(CustomerVO vo, HttpSession session) {
		boolean result = customerRepository.loginCheck(vo, session);
		if (result == true) {
			session.setAttribute("custId", vo.getCustId());
		}
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		customerRepository.logout(session);
		
	}
	
	@Override
	public List<Map<String, Object>> getAllGender() {
		return customerRepository.getAllGender();
	}
	
}
