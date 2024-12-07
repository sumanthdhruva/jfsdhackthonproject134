package com.klef.jfsd.hackthon.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.hackthon.springboot.model.Student;
import com.klef.jfsd.hackthon.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{

	@Autowired
	private	StudentRepository studentRepository;
	
	@Override
	public String StudentRegistration(Student student) 
	{
		studentRepository.save(student);
		return "Student registered Successfully";
	}

	@Override
	public Student checkstulogin(String email, String password)
	{
		return studentRepository.checkemplogin(email, password);
	}

	@Override
	public String updatestu(Student s) {
		Student stu = studentRepository.findById(s.getId()).get();
		stu.setContact(s.getContact());
		stu.setDateofbirth(s.getDateofbirth());
		stu.setDepartment(s.getDepartment());
		stu.setEmail(s.getEmail());
		stu.setGender(s.getGender());
		stu.setGratuationtype(s.getGratuationtype());
		stu.setId(s.getId());
		stu.setLocation(s.getLocation());
		stu.setName(s.getName());
		stu.setPassword(s.getPassword());
		stu.setStatus(s.getStatus());
		stu.setYpassout(s.getYpassout());
		studentRepository.save(stu);
		return "Student Updated Successfully";
	}

	@Override
	public String updateStudentProfile(Student stu) {
		Student s = studentRepository.findById(stu.getId()).get();
		{
			s.setContact(s.getContact());
			s.setDateofbirth(s.getDateofbirth());
			s.setDepartment(s.getDepartment());
			s.setEmail(s.getEmail());
			s.setGender(s.getGender());
			s.setGratuationtype(s.getGratuationtype());
			s.setId(s.getId());
			s.setLocation(s.getLocation());
			s.setName(s.getName());
			s.setPassword(s.getPassword());
			s.setStatus(s.getStatus());
			s.setYpassout(s.getYpassout());
			studentRepository.save(s);
			return "Student Successfully Updated";
		}
	}

	@Override
	public long stucount() {
		return studentRepository.count();
	}

}
