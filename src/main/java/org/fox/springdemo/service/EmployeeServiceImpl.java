package org.fox.springdemo.service;

import org.fox.springdemo.dao.EmployeeDAO;
import org.fox.springdemo.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService
{

	@Autowired
	EmployeeDAO employeeDAO;

	@Transactional
	@Override
	public List<Employee> getEmployees()
	{
		return employeeDAO.getEmployees();
	}

	@Transactional
	@Override
	public Employee getEmployee(int id)
	{
		return employeeDAO.getEmployee(id);
	}

	@Transactional
	@Override
	public void saveEmployee(Employee employee)
	{
		employeeDAO.saveEmployee(employee);
	}

	@Transactional
	@Override
	public void deleteEmployee(int id)
	{
  		employeeDAO.deleteEmployee(id);
	}
}