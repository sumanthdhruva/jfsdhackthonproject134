package com.klef.jfsd.hackthon.springboot.service;

import java.util.List;

import com.klef.jfsd.hackthon.springboot.model.Admin;
import com.klef.jfsd.hackthon.springboot.model.Employee;
import com.klef.jfsd.hackthon.springboot.model.Student;

public interface AdminService 
{
	public List<Employee> viewAllEmployees();
	public Admin checkadminlogin(String uname,String pwd);
	public List<Student> viewAllStudents(); 
	public String deleteemp(int id);
	public String deletestu(int id);

}
