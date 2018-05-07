package com.projectmanagementsystem.service;

import java.util.List;

import com.projectmanagementsystem.model.Employee;

public interface EmployeeService {

	public abstract void addEmployee(Employee employee);
	public abstract Employee fetcEmployeeById(int employeeId);
	public abstract void deleteEmployeeById(int employeeId);
	//public abstract void updateEmployeeById(int employeeId);
	public abstract List<Employee> getAllEmployeesInfo();
	public abstract void updateEmployeeById(Employee employeeId);
}
