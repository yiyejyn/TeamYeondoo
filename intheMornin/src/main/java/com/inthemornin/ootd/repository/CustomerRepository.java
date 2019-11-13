package com.inthemornin.ootd.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
			customer.setCustId(rs.getString("custId"));
			customer.setCustPassword(rs.getString("custPassword"));
			customer.setCustName(rs.getString("custName"));
			customer.setCustAddress(rs.getString("custAddress"));
			customer.setCustGender(rs.getString("custGender"));
			customer.setCustRank(rs.getString("custRank"));
			customer.setCustPoint(rs.getInt("custPoint"));			
			
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
				+ "cust_name, cust_address, cust_gender) "
				+ "values (?,?,?,?,?)";
		jdbcTemplate.update(sql, 
				cust.getCustId(), 
				cust.getCustPassword(), 
				cust.getCustName(),
				cust.getCustAddress(),
				cust.getCustGender()
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
				customer.setCustId(rs.getString("custId"));
				customer.setCustPassword(rs.getString("custPassword"));
				customer.setCustName(rs.getString("custName"));
				customer.setCustAddress(rs.getString("custAddress"));
				customer.setCustGender(rs.getString("custGender"));
				customer.setCustRank(rs.getString("custRank"));
				customer.setCustPoint(rs.getInt("custPoint"));			
				
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
	
	@Override
	public void login(CustomerVO vo, HttpSession session) {
		System.out.println("===> 로그인 기능 처리");
		session.setAttribute("cust_id", vo);
	}
	
	@Override
	public boolean loginCheck(CustomerVO vo, HttpSession session) {
		System.out.println("===> 로그인 여부 확인");
		return (session.getAttribute("cust_id") == null)? false:true;
	}
	
	@Override
	public void logout(HttpSession session) {
		System.out.println("===> 로그아웃 기능 처리");
		session.invalidate();
	}
	
	@Override
	public List<Map<String, Object>> getAllGender() {
		String sql = "select cust_gender as custGender from customers";
		return jdbcTemplate.queryForList(sql);
	}
	
}


