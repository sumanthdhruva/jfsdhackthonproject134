package com.klef.jfsd.hackthon.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.hackthon.springboot.model.Admin;
import com.klef.jfsd.hackthon.springboot.model.Employee;
import com.klef.jfsd.hackthon.springboot.model.Jobdetails;
import com.klef.jfsd.hackthon.springboot.model.Student;
import com.klef.jfsd.hackthon.springboot.service.AdminService;
import com.klef.jfsd.hackthon.springboot.service.EmployeeService;
import com.klef.jfsd.hackthon.springboot.service.JobService;
import com.klef.jfsd.hackthon.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private JobService jobService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("deleteemp")
	  public ModelAndView deleteemp() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Employee> emplist = adminService.viewAllEmployees();
	    mv.setViewName("deleteemp");
	    mv.addObject("emplist", emplist);
	    return mv;
	  }
	@GetMapping("delete")
	  public String delete(@RequestParam("id") int id)
	  {
		  adminService.deleteemp(id);
		  return "redirect:/deleteemp";
	  }
	@GetMapping("deletestu")
	  public ModelAndView deletestu() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Student> stulist = adminService.viewAllStudents();
	    mv.setViewName("deletestu");
	    mv.addObject("stulist", stulist);
	    return mv;
	  }
	@GetMapping("deletes")
	  public String deletes(@RequestParam("id") int id)
	  {
		  adminService.deletestu(id);
		  return "redirect:/deletestu";
	  }
	
	@GetMapping("viewallemps")
	  public ModelAndView viewallemps() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Employee> emplist = adminService.viewAllEmployees();
	    mv.setViewName("viewallemps");
	    mv.addObject("emplist", emplist);
	    return mv;
	  }
	@GetMapping("viewallstus")
	  public ModelAndView viewallstus() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Student> stulist = adminService.viewAllStudents();
	    mv.setViewName("viewallstus");
	    mv.addObject("stulist", stulist);
	    return mv;
	  }
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	@GetMapping("adminsessionexpiry")
	public ModelAndView empsessionexpiry()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("adminsessionexpiry");
		return mv;
	}
	@PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(HttpServletRequest request)
	  {
	   ModelAndView mv = new ModelAndView();
	   
	   String uname =  request.getParameter("auname");
	   String apwd =  request.getParameter("apwd");
	   
	   Admin admin = adminService.checkadminlogin(uname, apwd);
	   
	   if(admin!= null)
	   {
		    HttpSession session = request.getSession();
			session.setAttribute("admin", admin);
			mv.setViewName("adminhome");
	   }
	   else
	   {
	    mv.setViewName("adminloginfail");
	    mv.addObject("message", "Login Failed");
	   }
	   
	   return mv;
	  }
	@GetMapping("count")
	public ModelAndView count() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("count");
	    
	    long empcount = employeeService.empcount();
	    long stucount = studentService.stucount();
	    
	    mv.addObject("empcount", empcount); // Separate key for employee count
	    mv.addObject("stucount", stucount); // Separate key for student count
	    
	    return mv;
	}
	@GetMapping("adminviewjob")
	 public ModelAndView adminviewjob()
	 {
		List<Jobdetails> jobdetailslist = jobService.ViewAllJobs();
		ModelAndView mv = new ModelAndView("adminviewjob");
		mv.addObject("jobdetailslist", jobdetailslist);
		return mv;
	 }
	@GetMapping("adminjobDetails")
	 public ModelAndView adminjobDetails(@RequestParam int id)
	 {
		Jobdetails job = jobService.ViewJobByID(id);
		ModelAndView mv = new ModelAndView("adminjobDetails");
		mv.addObject("job", job);
		return mv;
	 }

}
