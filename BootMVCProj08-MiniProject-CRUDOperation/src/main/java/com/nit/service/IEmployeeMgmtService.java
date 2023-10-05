package com.nit.service;

import com.nit.model.Employee;

public interface IEmployeeMgmtService {

	public Iterable<Employee> getAllEmployees();

	public String insertEmployee(Employee emp);

	public Employee getEmployeeById(int eno);

	public String updateEmployee(Employee emp);

	public String deleteEmployee(int eno);

}
