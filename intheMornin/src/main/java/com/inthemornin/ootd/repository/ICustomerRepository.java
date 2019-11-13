package com.inthemornin.ootd.repository;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.inthemornin.ootd.model.CustomerVO;


public interface ICustomerRepository {
	int getCount();
	int getCount(int deptid);
	public void insertCust(CustomerVO cust);
	List<CustomerVO> getCustList();
	CustomerVO getCustInfo(int empid);
	void login(CustomerVO vo, HttpSession session);
	boolean loginCheck(CustomerVO vo, HttpSession session);
	void logout(HttpSession session);
}