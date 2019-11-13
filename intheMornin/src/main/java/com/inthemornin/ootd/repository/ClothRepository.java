package com.inthemornin.ootd.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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
			cloth.setClothId(rs.getInt("clothId"));
			cloth.setOutfitsType(rs.getString("outfitsType"));
			cloth.setCustId(rs.getString("custId"));
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
	
	@Override
	public int getCustClothCount(int deptid) {
		String sql = "select count(*) from clothes where cust_id=?";
		return jdbcTemplate.queryForObject(sql,  Integer.class, deptid);
	}
	
	@Override
	public List<ClothesVO> getClothList() {
		String sql = "select * from clothes";	
		return jdbcTemplate.query(sql, new RowMapper<ClothesVO> () {	
			@Override
			public ClothesVO mapRow(ResultSet rs, int count) throws SQLException {		
				ClothesVO cloth = new ClothesVO();		
				cloth.setClothId(rs.getInt("clothId"));
				cloth.setOutfitsType(rs.getString("outfitsType"));
				cloth.setCustId(rs.getString("custId"));
				cloth.setColor(rs.getString("color"));
				cloth.setSeason(rs.getString("season"));		
				return cloth;
			}
		});
	}
	
	@Override
	public List<Map<String, Object>> getAllCloth() {
		String sql = "select cloth_id as clothId, outfits_type as outfitsType, cust_id as custId, color, season from clothes";
		return jdbcTemplate.queryForList(sql);
	}
	
	@Override
	public List<Map<String, Object>> getCustCloth() {
		String sql = "select cloth_id as clothId, outfits_type as outfitsType, color, season "
				+ "from clothes "
				+ "where custId=?";
		return jdbcTemplate.queryForList(sql);
	}

}
