<%@page import="com.klef.jfsd.hackthon.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Student s = (Student) session.getAttribute("student");
	if(s==null)
	{
		response.sendRedirect("stusessionexpiry");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Profile</title>
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
<%@include file="studentnavbar.jsp" %>
<div class="main-content">
    <div class="profile-card">
        <div class="profile-header">
            <h1>Welcome, <%= s.getName() %></h1>
        </div>
        <div class="profile-info">
            <p><span>ID:</span> <%= s.getId() %></p>
            <p><span>Name:</span> <%= s.getName() %></p>
            <p><span>Gender:</span> <%= s.getGender() %></p>
            <p><span>Date of Birth:</span> <%= s.getDateofbirth() %></p>
            <p><span>Department:</span> <%= s.getDepartment() %></p>
            <p><span>Year of Passed Out:</span> <%= s.getYpassout() %></p>
            <p><span>Email:</span> <%= s.getEmail() %></p>
            <p><span>Location:</span> <%= s.getLocation() %></p>
            <p><span>Contact:</span> <%= s.getContact() %></p>
            <p><span>Status:</span> <%= s.getStatus() %></p>
        </div>
    </div>
</div>
</body>
</html>
