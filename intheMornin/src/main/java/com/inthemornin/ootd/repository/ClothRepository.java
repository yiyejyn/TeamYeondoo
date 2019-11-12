package com.inthemornin.ootd.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.inthemornin.ootd.model.ClothesVO;
import com.inthemornin.ootd.model.CustomerVO;

@Repository
public class ClothRepository implements IClothRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	private class ClothMapper implements RowMapper<ClothesVO> {
		@Override
		public ClothesVO mapRow(ResultSet rs, int count) 
				throws SQLException {
			ClothesVO cloth = new ClothesVO();
			cloth.setCloth_id(rs.getInt("cloth_id"));
			cloth.setCloth_type(rs.getString("cloth_type"));
			cloth.setOutfits_type(rs.getString("outfits_type"));
			cloth.setCust_id(rs.getString("cust_id"));
			cloth.setColor(rs.getString("color"));
			cloth.setSeason(rs.getString("season"));			
			
			return cloth;
		}			
	}
	
	@Override
	public int getCount() {
		String sql = "select count(*) from clothes";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public int getCount(int deptid) {
		String sql = "select count(*) from clothes where cloth_id=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, deptid);
	}
	

}
