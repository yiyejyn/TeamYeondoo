package com.inthemornin.ootd.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inthemornin.ootd.model.CustomerVO;
import com.inthemornin.ootd.repository.IRepository;

@Service
public class CustomerService implements IService{
	
	@Autowired
	IRepository customerRepository;
	
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
	public boolean loginCheck(CustomerVO vo, HttpSession session) {
		boolean result = customerRepository.loginCheck(vo);
		if (result == true) {
			session.setAttribute("cust_id", vo.getCust_id());
		}
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		customerRepository.logout(session);
		
	}
	
	
}
