package com.klef.jfsd.hackthon.springboot.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "jobdetails_table")
public class Jobdetails 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="job_id",nullable=false)
	private int jobid;
	@Column(name="company_name",nullable = false,length = 180)
	private String companyname;
	@Column(name="role_name",nullable = false,length = 200)
	private String rolename;
	@Column(name="company_location",nullable = false,length = 200)
	private String companylocation;
	@Column(name="job_stipened",nullable = false)
	private double stipened;
	@Column(name="job_location",nullable = false,length = 200)
	private String joblocation;
	@Column(name="job_applydate",nullable = false,length = 200)
	private String jobapplyby;
	@Column(name="job_duration",nullable = false,length = 200)
	private String duration;
	@Column(name="job_eligibilitycriteria",nullable = false,length = 200)
	private String eligibilitycriteria;
	@Column(name="job_note",nullable = false,length = 800)
	private String Note;
	@Column(name="aboutcompany",nullable = false,length = 900)
	private String aboutcompany;
	@Column(name="company_url",length = 200,nullable=false)
	private String companyurl;
	@Column(name="job_requirements",nullable = false,length = 1000)
	private String requirements;
	@Column(name="job_interviewprocess",nullable = false,length = 500)
	private String interviewprocess;
	@Column(name="job_skills",nullable = false,length = 400)
	private String skillsrequired;
	@Column(name="company_logo",nullable = false)
	private Blob companylogo;
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	public String getCompanylocation() {
		return companylocation;
	}
	public void setCompanylocation(String companylocation) {
		this.companylocation = companylocation;
	}
	public double getStipened() {
		return stipened;
	}
	public void setStipened(double stipened) {
		this.stipened = stipened;
	}
	public String getJoblocation() {
		return joblocation;
	}
	public void setJoblocation(String joblocation) {
		this.joblocation = joblocation;
	}
	public String getJobapplyby() {
		return jobapplyby;
	}
	public void setJobapplyby(String jobapplyby) {
		this.jobapplyby = jobapplyby;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getEligibilitycriteria() {
		return eligibilitycriteria;
	}
	public void setEligibilitycriteria(String eligibilitycriteria) {
		this.eligibilitycriteria = eligibilitycriteria;
	}
	public String getNote() {
		return Note;
	}
	public void setNote(String note) {
		Note = note;
	}
	public String getAboutcompany() {
		return aboutcompany;
	}
	public void setAboutcompany(String aboutcompany) {
		this.aboutcompany = aboutcompany;
	}
	public String getCompanyurl() {
		return companyurl;
	}
	public void setCompanyurl(String companyurl) {
		this.companyurl = companyurl;
	}
	public String getRequirements() {
		return requirements;
	}
	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}
	public String getInterviewprocess() {
		return interviewprocess;
	}
	public void setInterviewprocess(String interviewprocess) {
		this.interviewprocess = interviewprocess;
	}
	public String getSkillsrequired() {
		return skillsrequired;
	}
	public void setSkillsrequired(String skillsrequired) {
		this.skillsrequired = skillsrequired;
	}
	public Blob getCompanylogo() {
		return companylogo;
	}
	public void setCompanylogo(Blob companylogo) {
		this.companylogo = companylogo;
	}
}
