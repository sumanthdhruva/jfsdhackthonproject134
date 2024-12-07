<%@page import="com.klef.jfsd.hackthon.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Employee e = (Employee) session.getAttribute("employee");
	if(e==null)
	{
		response.sendRedirect("empsessionexpiry");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Profile</title>
<style type="text/css">
    /* Additional inline styling for structure */
    .profile-card {
        background-color: #ffffff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        max-width: 600px;
        margin: auto;
    }
    .profile-header {
        text-align: center;
        margin-bottom: 20px;
    }
    .profile-info {
        line-height: 1.8;
        font-size: 18px;
        color: #333333;
    }
    .profile-info span {
        font-weight: bold;
    }
</style>
</head>
<body>
<%@include file="jobprovidernavbar.jsp" %>
<div class="main-content">
    <div class="profile-card">
        <div class="profile-header">
            <h1>Welcome, <%= e.getName() %></h1>
        </div>
        <div class="profile-info">
            <p><span>ID:</span> <%= e.getId() %></p>
            <p><span>Name:</span> <%= e.getName() %></p>
            <p><span>Gender:</span> <%= e.getGender() %></p>
            <p><span>Date of Birth:</span> <%= e.getDateofbirth() %></p>
            <p><span>Department:</span> <%= e.getDepartment() %></p>
            <p><span>Salary:</span> <%= e.getSalary() %></p>
            <p><span>Email:</span> <%= e.getEmail() %></p>
            <p><span>Location:</span> <%= e.getLocation() %></p>
            <p><span>Contact:</span> <%= e.getContact() %></p>
            <p><span>Status:</span> <%= e.getStatus() %></p>
        </div>
    </div>
</div>
</body>
</html>
