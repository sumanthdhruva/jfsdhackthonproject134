package com.klef.jfsd.hackthon.springboot.service;

import com.klef.jfsd.hackthon.springboot.model.Employee;

public interface EmployeeService 
{
	public String empRegistration(Employee employee);
	public Employee checkemplogin(String email,String password);
	public String updateemp(Employee e);
	public String updateEmployeeProfile(Employee emp);
	public long empcount();

}
