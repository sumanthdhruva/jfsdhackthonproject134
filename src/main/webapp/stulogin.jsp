<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <link rel="stylesheet" href="stu.css">
    <style>
        /* Style to position the image as a background */
        body {
            margin: 0;
            padding: 0;
            position: relative; /* Needed for absolute positioning */
            height: 100vh;
            overflow: hidden;
        }

        img.background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ensures the image covers the full screen */
            z-index: -1; /* Sends the image behind the content */
        }

        /* Container for the login form */
        .container {
            width: 40%; /* Reduced width */
            margin: 120px auto; /* Adjusted margin to center vertically */
            padding: 15px; /* Reduced padding */
            background-color: rgba(255, 255, 255, 0.6); /* Transparent background */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: relative;
            z-index: 1; /* Keeps content above the image */
            display: flex;
            flex-direction: column;
            justify-content: center; /* Centers form fields */
            align-items: center; /* Centers form fields horizontally */
            height: auto; /* Adjust the height */
        }

        /* Flexbox style for form fields */
        .form-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 12px; /* Reduced margin */
            width: 100%;
        }

        label {
            font-weight: bold;
            color: #555;
            width: 30%; /* Fixed width for the label */
            display: inline-block;
        }

        input {
            width: 65%; /* Adjusted width for the input field */
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Submit button style */
        button {
            width: 50%; /* Button width */
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            display: block;
            margin: 20px auto; /* Centered the button */
        }

        button:hover {
            background-color: #0056b3;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    
    <!-- Background Image -->
    <img src="images/stu.jpg" alt="Background Image" class="background">

    <!-- Login Form Container -->
    <div class="container">
        <h2 class="text-center mb-4">Student Login</h2>
        <form action="../checkstulogin" method="post">
            <!-- Email -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" maxlength="50" required>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" maxlength="50" required>
            </div>

            <!-- Submit and Clear Buttons -->
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Login</button>
            </div>
        </form>
    </div>
</body>
</html>
