<%@page import="com.klef.jfsd.hackthon.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Employee emp = (Employee) session.getAttribute("employee");
    if (emp == null) {
        response.sendRedirect("empsessionexpiry");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Dashboard</title>
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
    <%@ include file="jobprovidernavbar.jsp" %>
    
    <div class="main-content">
        <!-- Main Content -->
        <div class="container">
            <!-- Welcome Message -->
            <div class="welcome-header">
                Welcome, <%= emp.getName() %>!
            </div>

            <!-- Job Opportunities Section -->
            <div class="job-content">
                <div class="job-description">
                    <h2>Explore Job Opportunities</h2>
                    <ul>
                        <li>💼 Leading the new software development initiative</li>
                        <li>📈 Overseeing data analysis for quarterly financial report</li>
                        <li>🌐 Managing a cross-functional team for a web development project</li>
                        <li>🔍 Researching machine learning models for upcoming product release</li>
                        <li>📊 Leading the business intelligence dashboard implementation</li>
                        <li>🚀 Working with AI specialists on predictive analytics</li>
                    </ul>
                    <h2>Employee Development</h2>
                    <ul>
                        <li>🎓 Access to online courses for skill enhancement</li>
                        <li>🔧 Training on new software tools and technologies</li>
                        <li>🏆 Monthly performance reviews and recognition programs</li>
                        <li>📚 Employee wellness initiatives and stress management workshops</li>
                    </ul>
                </div>

                <!-- Static Image Section -->
                <div class="static-image">
                    <img src="images/employee.jpg" alt="Employee Dashboard">
                </div>
            </div>
        </div>
    </div>
</body>
</html>
