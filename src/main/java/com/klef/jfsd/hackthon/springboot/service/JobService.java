package com.klef.jfsd.hackthon.springboot.service;

import java.util.List;
import com.klef.jfsd.hackthon.springboot.model.Jobdetails;

public interface JobService
{
	public String addJobDetails(Jobdetails jobdetails);
	public List<Jobdetails> ViewAllJobs();
	public Jobdetails ViewJobByID(int jobid);
	public Jobdetails ViewJobByeID(int eid);

}
