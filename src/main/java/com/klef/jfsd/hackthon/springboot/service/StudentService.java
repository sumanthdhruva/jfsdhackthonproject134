package com.klef.jfsd.hackthon.springboot.service;

import com.klef.jfsd.hackthon.springboot.model.Student;

public interface StudentService
{
	public String StudentRegistration(Student student);
	public Student checkstulogin(String email,String password);
	public String updatestu(Student s);
	public String updateStudentProfile(Student stu);
	public long stucount();
}
