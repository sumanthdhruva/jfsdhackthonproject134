<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Details</title>
    <style>
        /* Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    display: flex;
    justify-content: center;
    padding: 40px; /* Increased padding for top and sides */
    color: #333;
}

/* Container */
.job-details-container {
    width: 100%; /* Adjusted width to fit better */
    max-width: 1000px;
    margin-top: 50px; /* Added spacing at the top */
    margin-bottom: 100px;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: row;
}


        /* Back Button */
        .back-button {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            font-size: 16px;
            color: #0056b3;
            text-decoration: none;
        }

        .back-button:hover {
            color: #004092;
        }

        .back-button-icon {
            margin-right: 8px;
            font-size: 18px;
        }

        /* Left Side */
        .left-content {
            flex: 3;
            margin-right: 20px;
        }

        .job-title {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 15px;
            color: #0056b3;
        }

        .section {
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
        }

        .section-title {
            font-size: 20px;
            color: #0056b3;
            font-weight: bold;
            margin-bottom: 15px;
            border-bottom: 2px solid #eee;
            padding-bottom: 5px;
        }

        .detail-item {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }

        /* Right Side */
        .right-content {
            flex: 1;
            text-align: center;
        }

        .company-logo img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 20px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
        }

        /* Skills Section */
        .skills-section {
            background-color: #e6f2ff;
            padding: 20px;
            border-radius: 8px;
            text-align: left;
            margin-top: 30px;
            font-size: 16px;
            color: #333;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            line-height: 1.7;
        }

        /* Button */
        .apply-button {
            display: inline-block;
            background-color: #0056b3;
            color: white;
            padding: 12px 25px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .apply-button:hover {
            background-color: #004092;
        }
    </style>
</head>
<body>
<%-- <%@include file="jobprovidernavbar.jsp" %> --%>
<div class="job-details-container">
    <!-- Left Side Content -->
    <div class="left-content">
        <!-- Back Button -->
        <a href="viewalljobs" class="back-button">
            <span class="back-button-icon">&#8592;</span> Back 
        </a>

        <!-- Job Title -->
        <div class="job-title">
            Frontend Developer
        </div>

        <!-- About Company Section -->
        <div class="section">
            <div class="section-title">About Company</div>
            <div class="detail-item">
                <span><strong>Company Name:</strong></span>
                <span><c:out value="${job.companyname}" /></span>
            </div>
            <div class="detail-item">
                <span><strong>Location:</strong></span>
                <span><c:out value="${job.companylocation}" /></span>
            </div>
            <div class="detail-item">
                <span><strong>Website:</strong></span>
                <span><a href="${job.companyurl}" target="_blank" style="color: #0056b3;"><c:out value="${job.companyurl}" /></a></span>
            </div>
        </div>

        <!-- Job Details Section -->
        <div class="section">
            <div class="section-title">Job Details</div>
            <div class="detail-item">
                <span><strong>Duration:</strong></span>
                <span><c:out value="${job.duration}" /></span>
            </div>
            <div class="detail-item">
                <span><strong>Stipend:</strong></span>
                <span><c:out value="${job.stipened}" /></span>
            </div>
            <div class="detail-item">
                <span><strong>Apply By:</strong></span>
                <span><c:out value="${job.jobapplyby}" /></span>
            </div>
            <div class="detail-item">
                <span><strong>Location:</strong></span>
                <span><c:out value="${job.joblocation}" /></span>
            </div>
        </div>

        <!-- Eligibility and Requirements Section -->
        <div class="section">
            <div class="section-title">Eligibility and Requirements</div>
            <div class="detail-item">
                <span><strong>Eligibility:</strong></span>
                <span><c:out value="${job.eligibilitycriteria}" /></span>
            </div>
            <div class="detail-item">
                <span><strong>Requirements:</strong></span>
                <span><c:out value="${job.requirements}" /></span>
            </div>
        </div>

        <!-- Note Section -->
        <div class="section">
            <div class="section-title">Note</div>
            <div class="detail-item">
                <c:out value="${job.note}" />
            </div>
        </div>

<!--         Apply Button -->
<%--         <a href="updatejobDetails?id=${job.jobid}" class="apply-button">Edit</a> --%>
    </div>

    <!-- Right Side Content -->
    <div class="right-content">
        <!-- Company Logo -->
        <div class="company-logo">
            <img src="displayjobimage?id=${job.jobid}" alt="Company Logo" />
            
        </div>

        <!-- Skills Section as Paragraph -->
        <div class="skills-section">
            <strong>Skills Required:</strong>
            <p><c:out value="${job.skillsrequired}" /></p>
        </div>
    </div>
</div>

</body>
</html>
