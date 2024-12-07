package com.klef.jfsd.hackthon.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.hackthon.springboot.model.Employee;
import com.klef.jfsd.hackthon.springboot.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService
{

	@Autowired
	private EmployeeRepository employeeRepository;
	@Override
	public String empRegistration(Employee employee)
	{
		employeeRepository.save(employee);
		return "Employee Added successfully";
	}
	@Override
	public Employee checkemplogin(String email, String password) 
	{
		return employeeRepository.checkemplogin(email, password);
	}
	@Override
	public String updateemp(Employee e) {
		Employee emp = employeeRepository.findById(e.getId()).get();
		emp.setContact(e.getContact());
		emp.setDateofbirth(e.getDateofbirth());
		emp.setDepartment(e.getDepartment());
		emp.setEmail(e.getEmail());
		emp.setExperience(e.getExperience());
		emp.setGender(e.getGender());
		emp.setLocation(e.getLocation());
		emp.setName(e.getName());
		emp.setPassword(e.getPassword());
		emp.setSalary(e.getSalary());
		emp.setStatus(e.getStatus());
		
		employeeRepository.save(emp);
		return "Employee Successfully updated";
	}
	@Override
	public String updateEmployeeProfile(Employee emp) 
	{
		Employee e = employeeRepository.findById(emp.getId()).get();
		{	    
		 e.setContact(emp.getContact());
		 e.setDateofbirth(emp.getDateofbirth());
		 e.setDepartment(emp.getDepartment());
		 e.setGender(emp.getGender());
		 e.setLocation(emp.getLocation());
		 e.setName(emp.getName());
		 e.setPassword(emp.getPassword());
		 e.setSalary(emp.getSalary());
		    
		 employeeRepository.save(e);
		 
		    
		 return "Employee Updated Successfully";
		}
	}
	@Override
	public long empcount() 
	{
		return employeeRepository.count();
	}
	
}
