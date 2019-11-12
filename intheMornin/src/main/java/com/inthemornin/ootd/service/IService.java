package com.inthemornin.ootd.service;

import javax.servlet.http.HttpSession;

import com.inthemornin.ootd.model.CustomerVO;

public interface IService {
	int getCount();
	int getCount(int deptid);
	void insertCust(CustomerVO cust);
	
	boolean loginCheck(CustomerVO vo, HttpSession session);
	void logout(HttpSession session);
}
