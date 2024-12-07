package com.klef.jfsd.hackthon.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Pattern;

@Entity
@Table(name = "student_table")
public class Student 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // you can take this manually also through form
	@Column(name="student_id")
	private int id;
	@Column(name="student_name",nullable=false,length = 50)
	private String name;
	@Column(name="student_gender",nullable=false,length = 20)
    private String gender;
	@Column(name="student_dob",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name="student_department",nullable=false,length = 50)
	private String department;
	@Column(name = "student_graduationtype",nullable = false)
	private String gratuationtype;
	@Column(name="student_ypassout",nullable=false,length = 4)
	private int ypassout;
	@Column(name="student_email",nullable=false,unique = true,length = 50)
	private String email;
	@Column(name="student_password",nullable=false,length = 50)
	private String password;
	@Column(name="student_location",nullable=false,length=50)
	private String location;
	@Column(name="student_contact",nullable=false,unique = true,length = 20)
    @Pattern(regexp = "^[0-9]{10}$", message = "Contact must be a 10-digit number")
	private String contact;
	@Column(name="student_status",nullable=false,length=50)
	private String status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getGratuationtype() {
		return gratuationtype;
	}
	public void setGratuationtype(String gratuationtype) {
		this.gratuationtype = gratuationtype;
	}
	public int getYpassout() {
		return ypassout;
	}
	public void setYpassout(int ypassout) {
		this.ypassout = ypassout;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
