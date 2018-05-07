package com.projectmanagementsystem.daoImp;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.projectmanagementsystem.model.Employee;

public class EmpRowMapper implements RowMapper<Employee> {

	@Override
	public Employee mapRow(ResultSet rs, int num) throws SQLException {
		 Employee e=new Employee();  
         e.setId(rs.getInt(1));  
         e.setIdCard(rs.getInt(2));
         e.setName(rs.getString(3));  
         e.setSurname(rs.getString(4));
         e.setPosition(rs.getString(5));
		return e;
	}





}
