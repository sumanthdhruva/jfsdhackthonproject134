<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View All Jobs</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Body and HTML Setup */
        html, body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f3f6fa;
            height: 100%;
            padding: 0;
        }

        /* Main Container for Job Listings */
        .main-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            background-color: #f3f6fa;
            font-family: Arial, sans-serif;
            max-width: 1000px;
            margin: 0;
        }

        /* Container for All Job Cards */
        .job-cards-container {
            display: flex;
            flex-direction: column;
            width: 100%;
            align-items: flex-end;
            margin-top: 10px;
            padding-right: 5%;
        }

        /* Job Card Styles */
        .job-card {
            width: 100%;
            max-width: 800px;
            background: linear-gradient(135deg, #ffffff, #f0f4f8);
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            margin: 15px 0;
            overflow: hidden;
            display: flex;
            padding: 18px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .job-card:hover {
            transform: scale(1.02);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
        }

        /* Logo and Content Wrapper */
        .job-card-content {
            display: flex;
            align-items: center;
            width: 100%;
        }

        .company-logo {
            flex-shrink: 0;
            width: 80px;
            height: 80px;
            border-radius: 8px;
            overflow: hidden;
            margin-right: 15px;
            border: 2px solid #ddd;
            background-color: #f7f7f7;
        }

        .company-logo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Job Details */
        .job-info {
            display: flex;
            flex-direction: column;
            width: 100%;
        }

        .job-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 8px;
        }

        .job-role {
            font-size: 1.3em;
            font-weight: bold;
            color: #333;
        }

        .job-location {
            font-size: 1em;
            color: #555;
        }

        .job-detail {
            font-size: 1em;
            margin: 5px 0;
            color: #555;
        }

        .job-detail span {
            font-weight: bold;
            color: #222;
        }

        /* Apply Button */
        .apply-button {
            margin-top: 10px;
            padding: 8px 16px;
            color: #ffffff;
            background-color: #007bff;
            text-align: center;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            width: fit-content;
            transition: background-color 0.3s;
        }

        .apply-button:hover {
            background-color: #0056b3;
        }

        /* Header Styles */
        h3 {
            text-align: center;
            margin-top: 20px;
            font-size: 1.8em;
            color: #333;
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
		        margin-left: 850px;
		    }
    </style>
</head>
<body>

<%@ include file="studentnavbar.jsp" %>

<div class="main-content">
    <h3><u>Available Job Listings</u></h3>
    <div class="job-cards-container">
        <c:forEach items="${jobdetailslist}" var="job">
            <div class="job-card">
                <div class="job-card-content">
                    <div class="company-logo">
                        <img src="../displayjoblogo?id=${job.jobid}" alt="Company Logo">
                    </div>
                    <div class="job-info">
                        <div class="job-header">
                            <div class="job-role"><c:out value="${job.rolename}"/></div>
                            <div class="job-location"><c:out value="${job.joblocation}"/></div>
                        </div>
                        <div class="job-detail"><span>Company:</span> <c:out value="${job.companyname}"/></div>
                        <div class="job-detail"><span>Duration:</span> <c:out value="${job.duration}"/></div>
                        <div class="job-detail"><span>Stipend:</span> <c:out value="${job.stipened}"/></div>
                        <div class="job-detail"><span>Apply By:</span> <c:out value="${job.jobapplyby}"/></div>
                        <a href="stujobDetails?id=${job.jobid}" class="apply-button">Apply Now</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
