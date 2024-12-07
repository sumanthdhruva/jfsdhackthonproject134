<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Job</title>
    <style type="text/css">
        .main-content {
			    body {
			    display: flex;
			    justify-content: flex-start; /* Align content to the start of the page */
			    align-items: flex-start; /* Align items to the top */
			    min-height: 400vh; /* Ensure full height */
			    background-color: #f4f4f4; /* Background color */
			    margin: 0;
			    height: 3030px;
			    height: fit-content;
			}
			
			.main-content {
			    	padding: 60px;
				    max-width: 800px;
				    font-family: Arial, sans-serif;
				    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
				    border-radius: 15px;
				    border: 1px solid rgba(255, 255, 255, 0.3);
				    background-color: rgba(255, 255, 255, 0.9); /* White background with slight opacity */
				    backdrop-filter: blur(10px); /* Apply blur effect */
				    -webkit-backdrop-filter: blur(10px); /* For Safari */
				    position: relative;
				    margin-left: auto;
				    margin-right: 5%; /* Adjusts the right margin to move it left from the edge */
				    top: 100px; /* Gives some top margin */
				    width: 100%;
				    background-color: #ffffff; /* Set the background color for the main content */
			}
			
			h1 {
			    color: #333;
			    text-align: center;
			    margin-bottom: 20px;
			    font-size: 1.8em;
			}
			textarea {
		            resize: vertical;
		            min-height: 100px;
		            max-height: 250px;
		        }
		
		        .short-textarea {
		            min-height: 50px;
		            max-height: 100px;
		        }
			form {
			    background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque background for form */
			    padding: 25px;
			    border-radius: 10px;
			    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
			}
			
			/* Form Elements */
			label {
			    font-weight: bold;
			    display: block;
			    margin-top: 10px;
			    color: #555;
			}
			
			input[type="text"], input[type="number"], input[type="url"], input[type="date"], select, textarea {
			    width: 99%;
			    padding: 11px;
			    margin: 5px 0 13px 0;
			    border: 1px solid #ccc;
			    border-radius: 10px;
			    font-size: 1.1em;
			    background-color: rgba(255, 255, 255, 0.7); /* Slight transparency */
			    transition: background-color 0.3s ease-in-out;
			}
			
			input[type="text"]:focus, input[type="number"]:focus, input[type="url"]:focus, input[type="date"]:focus, select:focus, textarea:focus {
			    background-color: rgba(255, 255, 255, 0.9); /* Solid background on focus */
			    border-color: #4CAF50;
			    outline: none;
			}
			
			textarea {
			    resize: vertical;
			    min-height: 100px;
			    max-height: 250px;
			}
			
			.short-textarea {
			    min-height: 50px;
			    max-height: 100px;
			}
			
			button {
			    background-color: #4CAF50;
			    color: white;
			    padding: 14px 22px;
			    border: none;
			    border-radius: 8px;
			    cursor: pointer;
			    width: 100%;
			    font-size: 16px;
			    margin-top: 10px;
			    transition: background-color 0.3s ease;
			}
			
			button:hover {
			    background-color: #45a049;
			}
			
}
    </style>
</head>
<body>
    <%@include file="jobprovidernavbar.jsp" %>
    <div class="main-content">
        <h1>Add Job Details</h1>
        <form action="insertjob" method="post" enctype="multipart/form-data">
            <label for="companyname">Company Name:</label>
            <input type="text" id="companyname" name="companyname" required maxlength="180">

            <label for="rolename">Role Name:</label>
            <input type="text" id="rolename" name="rolename" required maxlength="200">

            <label for="companylocation">Company Location:</label>
            <input type="text" id="companylocation" name="companylocation" required maxlength="200">

            <label for="stipened">Stipend:</label>
            <input type="number" id="stipened" name="stipened" required step="0.01">

            <label for="joblocation">Job Location:</label>
            <select id="joblocation" name="joblocation" required>
            	<option value="">Select</option>
                <option value="remote">Remote</option>
                <option value="home-office">Home Office</option>
                <option value="Onsite">Onsite</option>
            </select>

            <label for="jobapplyby">Apply By (Date):</label>
            <input type="date" id="jobapplyby" name="jobapplyby" required>

            <label for="duration">Duration:</label>
            <input type="text" id="duration" name="duration" required maxlength="200">

            <label for="eligibilitycriteria">Eligibility Criteria:</label>
            <input type="text" id="eligibilitycriteria" name="eligibilitycriteria" required maxlength="200">

            <label for="note">Additional Note:</label>
            <textarea id="note" name="note" required maxlength="800" class="short-textarea"></textarea>

            <label for="aboutcompany">About Company:</label>
            <textarea id="aboutcompany" name="aboutcompany" required maxlength="900"></textarea>

            <label for="companyurl">Company URL:</label>
            <input type="url" id="companyurl" name="companyurl" required maxlength="200">

            <label for="requirements">Job Requirements:</label>
            <textarea id="requirements" name="requirements" required maxlength="1000"></textarea>

            <label for="interviewprocess">Interview Process:</label>
            <textarea id="interviewprocess" name="interviewprocess" required maxlength="500"></textarea>

            <label for="skillsrequired">Skills Required:</label>
            <textarea id="skillsrequired" name="skillsrequired" required maxlength="400" class="short-textarea"></textarea>

            <label for="companylogo">Company Logo:</label>
            <input type="file" id="companylogo" name="companylogo" required="required">

            <button type="submit">Add Job</button>
        </form>
    </div>
</body>
</html>
