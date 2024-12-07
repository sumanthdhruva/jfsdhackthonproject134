<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>JOB PORTAL</title>
    <!-- Include Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style type="text/css">
        /* Basic styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: transparent; /* Made the body background transparent */
            margin: 0;
            padding: 0;
        }
        
        /* Transparent background for the form */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            position: fixed;
            background: url('images/main.jpg') no-repeat center center/cover;
            z-index: -1; /* Sends the image behind the content */
            opacity: 0.7; /* Make the background slightly transparent */
        }

        /* Heading styling */
        .h11 {
            padding-top: 70px;
            font-size: 3em;
            color: #1f3c88;
            text-align: center;
            font-weight: bold;
            letter-spacing: 1px;
        }

        /* Container for additional content */
        .content-container {
            text-align: center;
            padding: 40px;
            max-width: 900px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        .content-container p {
            font-size: 1.2em;
            color: #555;
        }

        /* Job search section */
        .job-search {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 30px;
        }

        .job-search input[type="text"] {
            width: 300px;
            padding: 12px;
            font-size: 1.1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        .job-search button {
            padding: 12px 25px;
            background-color: #1f3c88;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.1em;
            transition: background-color 0.3s;
        }

        .job-search button:hover {
            background-color: #154a96;
        }

        /* Job categories */
        .job-categories {
            display: flex;
            justify-content: space-evenly;
            margin-top: 50px;
            padding: 20px;
        }

        .job-category {
            text-align: center;
            width: 150px;
            transition: transform 0.3s;
        }

        .job-category:hover {
            transform: scale(1.1);
        }

        .job-category i {
            font-size: 3em;
            color: #1f3c88;
            margin-bottom: 15px;
            transition: color 0.3s;
        }

        .job-category:hover i {
            color: #154a96;
        }

        .job-category p {
            font-size: 1.1em;
            color: #333;
            font-weight: bold;
        }

        /* Explore button */
        .explore-button {
            display: inline-block;
            margin-top: 40px;
            padding: 15px 40px;
            background-color: #1f3c88;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 1.3em;
            transition: background-color 0.3s;
        }

        .explore-button:hover {
            background-color: #154a96;
        }

        /* Mobile responsiveness */
        @media (max-width: 768px) {
            .job-categories {
                flex-direction: column;
                gap: 30px;
            }

            .job-search input[type="text"] {
                width: 250px;
            }
        }
    </style>
</head>
<body>
    <!-- Include the navbar at the top -->
    <%@ include file="mainnavbar.jsp" %>
    <div class="background"></div> <!-- Background image -->
    <!-- Main content starts below the navbar -->
    <h3 class="h11"></h3>
    
    <div class="content-container">
    
        <p>Find your dream job with just a few clicks. Explore exciting opportunities across various industries!</p>

        <!-- Job Search Section -->
        <div class="job-search">
            <input type="text" placeholder="Search for jobs, companies, or keywords">
            <button>Search Jobs</button>
        </div>

        <!-- Job Categories Section -->
        <div class="job-categories">
            <div class="job-category">
                <i class="fas fa-laptop-code"></i>
                <p>Tech Jobs</p>
            </div>
            <div class="job-category">
                <i class="fas fa-palette"></i>
                <p>Design Jobs</p>
            </div>
            <div class="job-category">
                <i class="fas fa-bullhorn"></i>
                <p>Marketing Jobs</p>
            </div>
            <div class="job-category">
                <i class="fas fa-chart-line"></i>
                <p>Finance Jobs</p>
            </div>
        </div>

        <!-- Explore Button -->
        <a href="#" class="explore-button">Explore All Jobs</a>
    </div>
</body>
</html>
