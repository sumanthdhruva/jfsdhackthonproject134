package com.klef.jfsd.hackthon.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.hackthon.springboot.model.Jobdetails;
import com.klef.jfsd.hackthon.springboot.model.Student;
import com.klef.jfsd.hackthon.springboot.service.JobService;
import com.klef.jfsd.hackthon.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
//@RequestMapping("student")
public class StudentController 
{
	@Autowired
	private StudentService studentService;
	@Autowired
	private JobService jobService;
	
	@GetMapping("stureg")
	public ModelAndView stureg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("stureg");
		return mv;
	}
	@GetMapping("stulogin")
	public ModelAndView stulogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("stulogin");
		return mv;
	}
	@GetMapping("stuhome")
	public ModelAndView stuhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("stuhome");
		return mv;
	}
	@GetMapping("stuprofile")
	public ModelAndView stuprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("stuprofile");
		return mv;
	}
	@GetMapping("updatestu")
	public ModelAndView updatestu()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatestu");
		return mv;
	}
	@PostMapping("updates")
    public ModelAndView updates(HttpServletRequest request)
    {
     int id =Integer.parseInt(request.getParameter("sid"));
     String name = request.getParameter("sname");
     String gender = request.getParameter("sgender");
     String dob = request.getParameter("sdob");
     String dept = request.getParameter("sdept");
     int passout = Integer.parseInt(request.getParameter("sypassout"));
     String location = request.getParameter("slocation");
     String password = request.getParameter("spwd");
     String contact = request.getParameter("scontact");

       Student stu = new Student();
       stu.setId(id);
       stu.setName(name);
       stu.setGender(gender);
       stu.setDepartment(dept);
       stu.setDateofbirth(dob);
       stu.setYpassout(passout);
       stu.setLocation(location);
       stu.setPassword(password);
       stu.setContact(contact);
       
       String msg = studentService.updatestu(stu);
       
       ModelAndView mv = new ModelAndView("updatesuccessstu");
       mv.addObject("message", msg);
     
       return mv;

    }
	@PostMapping("updatestuprofile")
	   public ModelAndView updatestuprofile(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	    try
	    {
	      int id = Integer.parseInt(request.getParameter("sid"));
	      String name = request.getParameter("sname");
	      String gender = request.getParameter("sgender");
	      String dob = request.getParameter("sdob");
	      String dept = request.getParameter("sdept");
	      int ypassout = Integer.parseInt(request.getParameter("sypassout"));
	      String password = request.getParameter("spwd");
	      String location = request.getParameter("slocation");
	      String contact = request.getParameter("scontact");
	      
	        Student stu = new Student();
	        stu.setId(id);
	        stu.setName(name);
	        stu.setGender(gender);
	        stu.setDepartment(dept);
	        stu.setDateofbirth(dob);
	        stu.setYpassout(ypassout);
	        stu.setPassword(password);
	        stu.setLocation(location);
	        stu.setContact(contact);
	        
	        String msg = studentService.updateStudentProfile(stu);
	       
	        mv.setViewName("updatesuccessstu");
	        mv.addObject("message", msg);
	    }
	    catch(Exception e)
	    {
	      mv.setViewName("updateerror");
	      mv.addObject("message", e);
	    }
	  return mv;
	}
	@GetMapping("stulogout")
	public ModelAndView stulogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		session.removeAttribute("student");
		//session.invalidate() - to remove all session attributes

		ModelAndView mv= new ModelAndView();
		mv.setViewName("stulogin");
		return mv;
	}
	@GetMapping("stusessionexpiry")
	public ModelAndView stusessionexpiry()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("stusessionexpiry");
		return mv;
	}
	@PostMapping("insertstu")
    public ModelAndView insertstu(HttpServletRequest request)
    {
		String name = request.getParameter("sname");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dateofbirth");
        String dept = request.getParameter("department");
        String gradType = request.getParameter("graduationtype");
        int yearOfPassing = Integer.parseInt(request.getParameter("ypassout"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String location = request.getParameter("location");
        String contact = request.getParameter("contact");
        String status = "Registered";
        
        Student student = new Student();
        student.setName(name);
        student.setGender(gender);
        student.setDepartment(dept);
        student.setDateofbirth(dob);
        student.setGratuationtype(gradType);
        student.setYpassout(yearOfPassing);
        student.setEmail(email);
        student.setPassword(password);
        student.setLocation(location);
        student.setContact(contact);
        student.setStatus(status);
        
        String msg = studentService.StudentRegistration(student);
        
        ModelAndView mv = new ModelAndView("sturegsuccess");
        mv.addObject("message", msg);
		
		return mv;
    }
	
	@PostMapping("checkstulogin")
	public ModelAndView checkstulogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String semial = request.getParameter("email");
		String spwd = request.getParameter("password");
		Student student = studentService.checkstulogin(semial, spwd);
		
		if(student != null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("student", student);
			mv.setViewName("stuhome");
		}
		else
		{
			mv.setViewName("stuloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	@GetMapping("viewallstujobs")
	 public ModelAndView viewalljobs()
	 {
		List<Jobdetails> jobdetailslist = jobService.ViewAllJobs();
		ModelAndView mv = new ModelAndView("viewallstujobs");
		mv.addObject("jobdetailslist", jobdetailslist);
		return mv;
	 }
	@GetMapping("displayjoblogo")
	 public ResponseEntity<byte[]> displayjoblogo(@RequestParam int id) throws Exception
	 {
	   Jobdetails jobdetails =  jobService.ViewJobByID(id);
	   byte [] imageBytes = null;
	   imageBytes = jobdetails.getCompanylogo().getBytes(1,(int) jobdetails.getCompanylogo().length());

	   return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	   
	 // Response Body, HTTP Status Code, Headers
	 }
	 @GetMapping("stujobDetails")
	 public ModelAndView jobDetails(@RequestParam int id)
	 {
		Jobdetails job = jobService.ViewJobByID(id);
		ModelAndView mv = new ModelAndView("stujobDetails");
		mv.addObject("job", job);
		return mv;
	 }
	
}
