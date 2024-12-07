package com.klef.jfsd.hackthon.springboot.controller;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.hackthon.springboot.model.Jobdetails;
import com.klef.jfsd.hackthon.springboot.service.JobService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class JobController 
{
	@Autowired
	private JobService jobService;
	
	 @GetMapping("addjob")
	 public ModelAndView addjob()
	 {
		ModelAndView mv = new ModelAndView("addjob");
		return mv;
	 }
	 @PostMapping("insertjob")
	   public ModelAndView insertjob(HttpServletRequest request,@RequestParam("companylogo") MultipartFile file) throws Exception
	   {
		   String msg = null;
		   ModelAndView mv = new ModelAndView();
		   try
		   {
			    String companyName = request.getParameter("companyname");
		        String roleName = request.getParameter("rolename");
		        String companyLocation = request.getParameter("companylocation");
		        Double stipend = Double.valueOf(request.getParameter("stipened"));
		        String jobLocation = request.getParameter("joblocation");
		        String applyBy = request.getParameter("jobapplyby");
		        String duration = request.getParameter("duration");
		        String eligibilityCriteria = request.getParameter("eligibilitycriteria");
		        String note = request.getParameter("note");
		        String aboutCompany = request.getParameter("aboutcompany");
		        String companyUrl = request.getParameter("companyurl");
		        String requirements = request.getParameter("requirements");
		        String interviewProcess = request.getParameter("interviewprocess");
		        String skillsRequired = request.getParameter("skillsrequired");
		        
		        byte[] bytes = file.getBytes();
		        Blob companyLogo = new javax.sql.rowset.serial.SerialBlob(bytes);
		        
		        Jobdetails j = new Jobdetails();
		       j.setCompanyname(companyName);
		       j.setRolename(roleName);
		       j.setCompanylocation(companyLocation);
		       j.setStipened(stipend);
		       j.setJoblocation(jobLocation);
		       j.setJobapplyby(applyBy);
		       j.setDuration(duration);
		       j.setEligibilitycriteria(eligibilityCriteria);
		       j.setNote(note);
		       j.setAboutcompany(aboutCompany);
		       j.setCompanyurl(companyUrl);
		       j.setRequirements(requirements);
		       j.setInterviewprocess(interviewProcess);
		       j.setSkillsrequired(skillsRequired);
		       j.setCompanylogo(companyLogo);
		       
		       msg = jobService.addJobDetails(j);
		       System.out.println(msg);
		       mv.setViewName("jobmsg");
		       mv.addObject("message", msg);
		   }	  
		   catch(Exception e)
		   {
			   msg = e.getMessage();
			   System.out.println(msg.toString());
			   mv.setViewName("joberror");
			   mv.addObject("message",msg);
		   }
		   return mv;
	   }
	 @GetMapping("viewalljobs")
	 public ModelAndView viewalljobs()
	 {
		List<Jobdetails> jobdetailslist = jobService.ViewAllJobs();
		ModelAndView mv = new ModelAndView("viewalljobs");
		mv.addObject("jobdetailslist", jobdetailslist);
		return mv;
	 }
	 @GetMapping("displayjobimage")
	 public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam int id) throws Exception
	 {
	   Jobdetails jobdetails =  jobService.ViewJobByID(id);
	   byte [] imageBytes = null;
	   imageBytes = jobdetails.getCompanylogo().getBytes(1,(int) jobdetails.getCompanylogo().length());

	   return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	   
	 // Response Body, HTTP Status Code, Headers
	 }
	 @GetMapping("jobDetails")
	 public ModelAndView jobDetails(@RequestParam int id)
	 {
		Jobdetails job = jobService.ViewJobByID(id);
		ModelAndView mv = new ModelAndView("jobDetails");
		mv.addObject("job", job);
		return mv;
	 }
	 
	 @GetMapping("empviewmyJobById")
	 public ModelAndView  empviewmyJobById()
	 {
		   List<Jobdetails> jobdetailslist = jobService.ViewAllJobs();
	 	   ModelAndView mv=new ModelAndView("empviewmyJobById");
	 	   mv.addObject("jobdetailslist", jobdetailslist);
	 	   return mv;
	 }
}
