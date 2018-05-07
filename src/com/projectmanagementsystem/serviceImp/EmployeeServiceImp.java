package com.projectmanagementsystem.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.projectmanagementsystem.dao.EmployeeDao;
import com.projectmanagementsystem.model.Employee;
import com.projectmanagementsystem.service.EmployeeService;
	
@Service
public class EmployeeServiceImp implements EmployeeService{
	
	@Autowired
	private EmployeeDao employeDao;
	
	public void setEmployeDao(EmployeeDao employeDao) {
		this.employeDao = employeDao;
	}
	
	@Override
	public void addEmployee(Employee employee) {
		employeDao.save(employee);
	}

	@Override
	public Employee fetcEmployeeById(int employeeId) {
		// TODO Auto-generated method stub
		return employeDao.getEmpById(employeeId);
	}

	@Override
	public void deleteEmployeeById(int employeeId) {
		employeDao.delete(employeeId);
	}

	@Override
	public void updateEmployeeById( Employee employeeId) {
		employeDao.update(employeeId);
	}

	@Override
	public List<Employee> getAllEmployeesInfo() {
		return employeDao.getEmployees();
	}
	
	

}
