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
	// count the number of all customer's clothes
	@Override
	public int getCount() {
		String sql = "select count(*) from clothes";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	// count  the number of one customer's clothes
	@Override
	public int getCustClothCount(String custId) {
		String sql = "select count(*) from clothes where cust_id=?";
		return jdbcTemplate.queryForObject(sql,  Integer.class, custId);
	}
	
	// getting all customer's clothes lists
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
	
	// getting one certain customer's clothes info
	@Override
	public ClothesVO getClothInfo(String custId) {
		String sql = "select cloth_id, outfits_type, color, season "
				+ "from clothes "
				+ "where cust_id as custId=?";
		return jdbcTemplate.queryForObject(sql,  new ClothMapper(), custId);
	}
	
	@Override
	public List<Map<String, Object>> getAllCloth() {
		String sql = "select cloth_id as clothId, outfits_type as outfitsType, cust_id as custId, color, season "
				+ "from clothes";
		return jdbcTemplate.queryForList(sql);
	}
	
	@Override
	public List<Map<String, Object>> getCustCloth() {
		String sql = "select cloth_id as clothId, outfits_type as outfitsType, color, season "
				+ "from clothes "
				+ "where custId=?";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public void updateCloth(ClothesVO cloth) {
		String sql = "update clothes "
				+ "set outfits_type=?, color=?, season=? "
				+ "where cust_id=";
		jdbcTemplate.update(sql, cloth.getOutfitsType(),
				cloth.getColor(),
				cloth.getSeason(),
				cloth.getCustId());
	}
	
	@Override
	public void insertCloth(ClothesVO cloth) {
		String sql = "insert into clothes "
				+ "(cloth_id, outfits_type, cust_id, color, season) "
				+ "values (cloth_seq.nextval, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, cloth.getCustId(),
				cloth.getOutfitsType(),
				cloth.getColor(),
				cloth.getSeason());
	}
	
	@Override
	public void deleteCloth(int clothId, String custId) {
		String sql = "delete from clothes where cloth_id as clothId=? and cust_id as custId=?";
		jdbcTemplate.update(sql, clothId, custId);
	}
	
}
