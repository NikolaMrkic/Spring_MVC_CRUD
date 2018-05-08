package com.projectmanagementsystem.dao;

import java.util.List;

import com.projectmanagementsystem.model.Employee;
import com.projectmanagementsystem.model.Team;

public interface EmployeeDao {
	
	public abstract int save(Employee employee);
	public abstract void update(Employee employeeId);
	public abstract int delete(int id);
	public abstract Employee getEmpById(int id);
	public abstract List<Employee> getEmployees();
	public abstract void insertEmployeInTeam(Team team);

}
