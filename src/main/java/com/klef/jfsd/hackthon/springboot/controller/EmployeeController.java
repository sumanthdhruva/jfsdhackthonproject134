package com.klef.jfsd.hackthon.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.hackthon.springboot.model.Employee;
import com.klef.jfsd.hackthon.springboot.service.EmployeeService;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("payment")
	public ModelAndView payment()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("payment");
		return mv;
	}
	@GetMapping("contactus")
	public ModelAndView contactus()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contactus");
		return mv;
	}
	@GetMapping("empsessionexpiry")
	public ModelAndView empsessionexpiry()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("empsessionexpiry");
		return mv;
	}
	@GetMapping("empreg")
	public ModelAndView empreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empreg");
		return mv;
	}
	@GetMapping("emphome")
	public ModelAndView emphome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("emphome");
		return mv;
	}
	@GetMapping("empprofile")
	public ModelAndView empprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empprofile");
		return mv;
	}
	@GetMapping("updateemp")
	public ModelAndView updateemp()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateemp");
		return mv;
	}
	@PostMapping("update")
    public ModelAndView update(HttpServletRequest request)
    {
     int id =Integer.parseInt(request.getParameter("eid"));
     String name = request.getParameter("ename");
     String gender = request.getParameter("egender");
     String dob = request.getParameter("edob");
     String dept = request.getParameter("edept");
     double salary = Double.parseDouble(request.getParameter("esalary"));
     String location = request.getParameter("elocation");
     String password = request.getParameter("epwd");
     String contact = request.getParameter("econtact");


       Employee emp = new Employee();
       emp.setId(id);
       emp.setName(name);
       emp.setGender(gender);
       emp.setDepartment(dept);
       emp.setDateofbirth(dob);
       emp.setSalary(salary);
       emp.setLocation(location);
       emp.setPassword(password);
       emp.setContact(contact);
       
       String msg = employeeService.updateemp(emp);
       
       ModelAndView mv = new ModelAndView("updatesuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
	@PostMapping("updateempprofile")
	   public ModelAndView updateempprofile(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	    try
	    {
	      int id = Integer.parseInt(request.getParameter("eid"));
	      String name = request.getParameter("ename");
	      String gender = request.getParameter("egender");
	      String dob = request.getParameter("edob");
	      String dept = request.getParameter("edept");
	      double salary = Double.parseDouble(request.getParameter("esalary"));
	      String password = request.getParameter("epwd");
	      String location = request.getParameter("elocation");
	      String contact = request.getParameter("econtact");
	      
	        Employee emp = new Employee();
	        emp.setId(id);
	        emp.setName(name);
	        emp.setGender(gender);
	        emp.setDepartment(dept);
	        emp.setDateofbirth(dob);
	        emp.setSalary(salary);
	        emp.setPassword(password);
	        emp.setLocation(location);
	        emp.setContact(contact);
	        
	        String msg = employeeService.updateEmployeeProfile(emp);
	       
	        mv.setViewName("updatesuccess");
	        mv.addObject("message", msg);
	    }
	    catch(Exception e)
	    {
	      mv.setViewName("updateerror");
	      mv.addObject("message", e);
	    }
	  return mv;
	}
	@GetMapping("emplogin")
	public ModelAndView emplogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("emplogin");
		return mv;
	}
	@GetMapping("emplogout")
	public ModelAndView emplogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		session.removeAttribute("employee");
		//session.invalidate() - to remove all session attributes

		ModelAndView mv= new ModelAndView();
		mv.setViewName("emplogin");
		return mv;
	}
	@PostMapping("insertemp")
	public ModelAndView insertEmployee(HttpServletRequest request) {
	    int eid = Integer.parseInt(request.getParameter("eid"));
	    String name = request.getParameter("name");
	    String gender = request.getParameter("gender");
	    String dob = request.getParameter("dob");
	    String department = request.getParameter("department");
	    double salary = Double.parseDouble(request.getParameter("salary"));
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    String location = request.getParameter("location");
	    String contact = request.getParameter("contact");
	    String status = request.getParameter("status");
	    int experience = Integer.parseInt(request.getParameter("experience"));

	    Employee employee = new Employee();
	    employee.setId(eid);
	    employee.setName(name);
	    employee.setGender(gender);
	    employee.setDateofbirth(dob);
	    employee.setDepartment(department);
	    employee.setSalary(salary);
	    employee.setEmail(email);
	    employee.setPassword(password);
	    employee.setLocation(location);
	    employee.setContact(contact);
	    employee.setStatus(status);
	    employee.setExperience(experience);

	    String msg = employeeService.empRegistration(employee);

	    ModelAndView mv = new ModelAndView("empregsuccess");
	    mv.addObject("message", msg);

	    return mv;
	}
	
	@PostMapping("checkemplogin")
	public ModelAndView cheackemplogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String eemial = request.getParameter("email");
		String epwd = request.getParameter("password");
		Employee employee = employeeService.checkemplogin(eemial, epwd);
		
		if(employee!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("employee", employee);
			mv.setViewName("emphome");
		}
		else
		{
			mv.setViewName("emploginfail");
			mv.addObject("message", "Login failed");
		}
		
		return mv;
	}
	 @Autowired 
	   private JavaMailSender mailSender; 
	 
	   @PostMapping("sendemail") 
	   public ModelAndView sendEmail(HttpServletRequest request) throws Exception  
	   { 
	       String name = request.getParameter("name"); 
	       String toemail = request.getParameter("email"); 
	       String subject = request.getParameter("subject"); 
	       String msg = request.getParameter("message"); 
	 
	        MimeMessage mimeMessage = mailSender.createMimeMessage(); 
	        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true); 
	         
	        int otp = (int)(Math.random() * 99999); // random number generation         
	 
	        helper.setTo(toemail); 
	        helper.setSubject(subject); 
	        helper.setFrom("jsumanth19@gmail.com"); 
	 
	        String htmlContent =  
	                   "<h3>Contact Form Details</h3>" + 
	                   "<p><strong>Name:</strong> " + name + "</p>" + 
	                   "<p><strong>Email:</strong> " + toemail + "</p>" + 
	                   "<p><strong>Subject:</strong> " + subject + "</p>" + 
	                   "<p><strong>Message:</strong> " + msg + "</p>" + 
	                   "<p><strong>OTP:</strong> " + otp + "</p>"; 
	 
	 
	           helper.setText(htmlContent, true); 
	           mailSender.send(mimeMessage); 
	          
	           ModelAndView mv = new ModelAndView("mailsuccess"); 
	           mv.addObject("message", "Email Sent Successfully"); 
	 
	           return mv; 
	   } 

}
