<%@ page import="com.klef.jfsd.hackthon.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Student stu = (Student) session.getAttribute("student");
    if (stu == null) {
        response.sendRedirect("stusessionexpiry");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* General styling */
        html, body {
            height: 100%;
            margin: 0;
            font-family: 'Verdana', sans-serif;
            background-color: #f9f9f9;
        }

        /* Navigation bar styling (optional override for navbar) */
        nav {
            background-color: #333;
            padding: 10px;
            color: #fff;
        }

        /* Container styling */
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        /* Welcome message styling */
        .welcome-header {
            text-align: center;
            padding: 20px;
            margin-bottom: 20px;
            font-size: 1.8rem;
            font-weight: bold;
            color: #333;
            background-color: #f0f8ff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        /* Job description section styling */
        .job-description {
            flex: 1;
            padding: 15px;
            color: #555;
        }

        .job-description h2 {
            color: #444;
            font-size: 1.5rem;
            margin-bottom: 15px;
        }

        .job-description ul {
            list-style: none;
            padding: 0;
            margin-bottom: 10px;
        }

        .job-description li {
            margin-bottom: 10px;
            font-size: 1rem;
            line-height: 1.5;
        }

        /* Static image section styling */
        .static-image {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .static-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Layout for job content */
        .job-content {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        /* Media query for responsiveness */
        @media screen and (max-width: 768px) {
            .job-content {
                flex-direction: column;
            }

            .static-image {
                margin-top: 20px;
            }
        }
        .main-content {
        margin-left: 200px; /* Aligns content after nav bar initially */
        padding: 20px;
        flex: 1;
        background-color: #f2f2f2;
        transition: margin-left 0.3s;
    }
    /* Adjust main content margin when sidenav is hovered */
    .sidenav:hover ~ .main-content {
        margin-left: 250px;
    }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <%@ include file="studentnavbar.jsp" %>
<div class="main-content">
    <!-- Main Content -->
    <div class="container">
        <!-- Welcome Message -->
        <div class="welcome-header">
            Welcome, <%= stu.getName() %>!
        </div>

        <!-- Job Opportunities Section -->
        <div class="job-content">
            <div class="job-description">
                <h2>Explore Job Opportunities</h2>
                <ul>
                    <li>💼 Software Development Roles at Top Tech Firms</li>
                    <li>📊 Data Analyst Positions with Industry Leaders</li>
                    <li>🌐 Web Development Internships</li>
                    <li>🔍 Research and Development Opportunities</li>
                    <li>🚀 Entry-level Jobs in AI and Machine Learning</li>
                    <li>🛠 Core Engineering Roles in Top Companies</li>
                </ul>
            </div>
            <div class="static-image">
                <img src="images/job.jpg" alt="Job Opportunities">
            </div>
        </div>
    </div>
   </div>
</body>
</html>
