package com.codegnan.service;

import java.util.List;

import com.codegnan.model.Employee;

public interface EmployeeService {
	Employee addEmployee(Employee employee);

	List<Employee> getAllEmployees();

	Employee getEmployeeById(Long id);

	void deleteEmployee(Long id);
}
