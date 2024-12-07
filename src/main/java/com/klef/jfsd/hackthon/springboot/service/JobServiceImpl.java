package com.klef.jfsd.hackthon.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.hackthon.springboot.model.Jobdetails;
import com.klef.jfsd.hackthon.springboot.repository.JobDetailsRepository;

@Service
public class JobServiceImpl implements JobService
{
	@Autowired
	private JobDetailsRepository jobDetailsRepository;
	
	@Override
	public String addJobDetails(Jobdetails jobdetails) 
	{
		jobDetailsRepository.save(jobdetails);
		return "Job Details addded Successfully....!!!!";
	}

	@Override
	public List<Jobdetails> ViewAllJobs()
	{
		return (List<Jobdetails>) jobDetailsRepository.findAll();
	}

	@Override
	public Jobdetails ViewJobByID(int jobid) 
	{
		return jobDetailsRepository.findById(jobid).get();
	}

	@Override
	public Jobdetails ViewJobByeID(int eid) 
	{
		return jobDetailsRepository.findById(eid).get();
	}

}
