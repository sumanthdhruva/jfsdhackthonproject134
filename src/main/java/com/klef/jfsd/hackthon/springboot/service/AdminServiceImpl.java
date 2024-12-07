package com.klef.jfsd.hackthon.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.hackthon.springboot.model.Admin;
import com.klef.jfsd.hackthon.springboot.model.Employee;
import com.klef.jfsd.hackthon.springboot.model.Student;
import com.klef.jfsd.hackthon.springboot.repository.AdminRepository;
import com.klef.jfsd.hackthon.springboot.repository.EmployeeRepository;
import com.klef.jfsd.hackthon.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Override
	public List<Employee> viewAllEmployees() 
	{
		return employeeRepository.findAll();
		
	}
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}
	@Override
	public List<Student> viewAllStudents() 
	{
		return studentRepository.findAll();
	}
	@Override
	public String deleteemp(int id)
	{
		employeeRepository.deleteById(id);
		return "Employee Dleeted Sucessfully";
	}
	@Override
	public String deletestu(int id) {
		studentRepository.deleteById(id);
		return "Student Deleted Successfully";
	}

}
