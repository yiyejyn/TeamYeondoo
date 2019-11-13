package com.inthemornin.ootd.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.inthemornin.ootd.model.CustomerVO;

public interface ICustomerService {
	int getCount();
	int getCount(int deptid);
	void insertCust(CustomerVO cust);
	boolean loginCheck(CustomerVO vo, HttpSession session);
	void logout(HttpSession session);
	void login(CustomerVO vo, HttpSession session);
	List<Map<String, Object>> getAllGender();
}
