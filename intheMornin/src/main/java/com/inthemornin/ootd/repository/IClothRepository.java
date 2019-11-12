package com.inthemornin.ootd.repository;

import java.util.List;
import java.util.Map;

import com.inthemornin.ootd.model.CustomerVO;


public interface IClothRepository {
	int getCount();
	int getCount(int deptid);

}