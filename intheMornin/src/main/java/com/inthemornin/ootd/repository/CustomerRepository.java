package com.inthemornin.ootd.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.inthemornin.ootd.model.CustomerVO;

@Repository
public class CustomerRepository implements ICustomerRepository{

	@Autowired
	JdbcTemplate jdbcTemplate;
	private class CustomerMapper implements RowMapper<CustomerVO> {
		@Override
		public CustomerVO mapRow(ResultSet rs, int count) 
				throws SQLException {
			CustomerVO customer = new CustomerVO();
			customer.setCust_id(rs.getString("cust_id"));
			customer.setCust_password(rs.getString("cust_password"));
			customer.setCust_name(rs.getString("cust_name"));
			customer.setCust_address(rs.getString("cust_address"));
			customer.setCust_gender(rs.getString("cust_gender"));
			customer.setCust_rank(rs.getString("cust_rank"));
			customer.setCust_point(rs.getInt("cust_point"));			
			
			return customer;
		}			
	}
	
	@Override
	public int getCount() {
		String sql = "select count(*) from customers";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public int getCount(int deptid) {
		String sql = "select count(*) from customers where cust_id=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, deptid);
	}
	
	@Override
	public void insertCust(CustomerVO cust) {
		String sql = "insert into customers (cust_id, cust_password, "
				+ "cust_name, cust_address, cust_gender, cust_rank, cust_point) "
				+ "values (?,?,?,?,?,'Lv1',0)";
		jdbcTemplate.update(sql, 
				cust.getCust_id(), 
				cust.getCust_password(), 
				cust.getCust_name(),
				cust.getCust_address(),
				cust.getCust_gender(),
				cust.getCust_rank(),
				cust.getCust_point()
		);
	}
	
	@Override
	public List<CustomerVO> getCustList() {
		String sql = "select * from customers";
		return jdbcTemplate.query(sql, new RowMapper<CustomerVO>() {
			@Override
			public CustomerVO mapRow(ResultSet rs, int count) 
					throws SQLException {
				CustomerVO customer = new CustomerVO();
				customer.setCust_id(rs.getString("cust_id"));
				customer.setCust_password(rs.getString("cust_password"));
				customer.setCust_name(rs.getString("cust_name"));
				customer.setCust_address(rs.getString("cust_address"));
				customer.setCust_gender(rs.getString("cust_gender"));
				customer.setCust_rank(rs.getString("cust_rank"));
				customer.setCust_point(rs.getInt("cust_point"));			
				
				return customer;
			}			
		});
	}
	
	@Override
	public CustomerVO getCustInfo(int custid) {
		String sql = "select cust_id, cust_password, cust_name, "
				+ "cust_address, cust_gender, cust_rank, cust_point "
				+ "from customers where cust_id=?";
		return jdbcTemplate.queryForObject(sql,  new CustomerMapper(), custid);
	}
	
}


