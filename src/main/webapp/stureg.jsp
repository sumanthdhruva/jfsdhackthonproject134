<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <link rel="stylesheet" href="stu.css">
    <style>
        /* Additional styles for side-by-side layout */
        .form-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        /* Transparent background for the form */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            position: fixed;
            background: url('images/stu.jpg') no-repeat center center/cover;
            z-index: -1; /* Sends the image behind the content */
        }
		.container {
		    position: relative;
		    padding: 60px;
		    background: rgba(255, 255, 255, 0.7); /* Semi-transparent background */
		    border-radius: 10px; /* Rounded corners */
		    max-width: 900px;
		    margin: 50px auto 0; /* Add top margin for spacing after navbar */
		    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
		}


        .form-group {
            flex: 1;
            margin-bottom: 20px;
            padding: 0 10px; /* Adds some space between columns */
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
        }

        /* Ensures equal width for all form controls */
        .form-control {
            width: 100%;
        }

        /* Button Styles */
        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn {
            padding: 12px 24px;
            font-size: 16px;
            font-weight: 500;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
            border: none; /* Remove default border */
            color: #fff; /* Text color for buttons */
            font-family: 'Roboto', Arial, sans-serif; /* Font family */
            position: relative; /* Position for pseudo-element */
            overflow: hidden; /* Hide overflow for pseudo-element */
        }

        .btn-primary {
            background-color: #4a90e2;
        }

        .btn-primary:hover {
            background-color: #357abd;
            transform: scale(1.05); /* Scale on hover */
            box-shadow: 0 4px 12px rgba(74, 144, 226, 0.4);
        }

        .btn-primary::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.2); /* Light overlay */
            border-radius: 50%; /* Circular effect */
            transform: translate(-50%, -50%) scale(0); /* Start hidden */
            transition: transform 0.5s ease; /* Animation for the overlay */
        }

        .btn-primary:hover::after {
            transform: translate(-50%, -50%) scale(1); /* Show overlay on hover */
        }

        .btn-secondary {
            background-color: #999;
        }

        .btn-secondary:hover {
            background-color: #777;
            transform: scale(1.05); /* Scale on hover */
            box-shadow: 0 4px 12px rgba(153, 153, 153, 0.4);
        }

        .btn-secondary::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.2); /* Light overlay */
            border-radius: 50%; /* Circular effect */
            transform: translate(-50%, -50%) scale(0); /* Start hidden */
            transition: transform 0.5s ease; /* Animation for the overlay */
        }

        .btn-secondary:hover::after {
            transform: translate(-50%, -50%) scale(1); /* Show overlay on hover */
        }

        @media (max-width: 768px) {
            .form-group {
                flex: 100%; /* Stack on smaller screens */
            }

            .btn-container {
                flex-direction: column; /* Stack buttons on small screens */
                align-items: center;
            }

            .btn {
                width: 100%; /* Full width for buttons on small screens */
                margin: 5px 0; /* Space between buttons */
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <div class="background"></div> <!-- Background image -->
    <div class="container">
        <h2 class="text-center mb-4">Student Registration</h2>
        <form action="insertstu" method="post">
            <div class="form-row">
                <!-- Name -->
                <div class="form-group">
                    <label for="sname">Name:</label>
                    <input type="text" class="form-control" id="sname" name="sname" maxlength="50" required>
                </div>

                <!-- Gender -->
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <select class="form-control" id="gender" name="gender" required>
                        <option value="">Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <!-- Date of Birth -->
                <div class="form-group">
                    <label for="dob">Date of Birth:</label>
                    <input type="date" class="form-control" id="dob" name="dateofbirth" required>
                </div>

                <!-- Department -->
                <div class="form-group">
                    <label for="department">Department:</label>
                    <select class="form-control" id="department" name="department" required>
                        <option value="">Select Department</option>
                        <option value="cse">CSE</option>
                        <option value="cs&it">CS&IT</option>
                        <option value="ai&ds">AI&DS</option>
                        <option value="ece">ECE</option>
                        <option value="mech">Mech</option>
                        <option value="civil">Civil</option>
                        <option value="aeronaticalengeneering">Aeronatical Engeneering</option>
                        <option value="chemicalengeneering">Chemical Engeneering</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <!-- Graduation Type -->
                <div class="form-group">
                    <label for="graduationtype">Graduation Type:</label>
                    <select class="form-control" id="graduationtype" name="graduationtype" required>
                        <option value="">Select Graduation Type</option>
                        <option value="UnderGraduate">Under Graduate</option>
                        <option value="PostGraduate">Post Graduate</option>
                        <option value="Doctarate">Doctarate</option>
                    </select>
                </div>

                <!-- Year of Passing -->
                <div class="form-group">
                    <label for="ypassout">Year of Passing:</label>
                    <input type="number" class="form-control" id="ypassout" name="ypassout" min="1900" max="2099" required>
                </div>
            </div>

            <div class="form-row">
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
            </div>

            <div class="form-row">
                <!-- Location -->
                <div class="form-group">
                    <label for="location">Location:</label>
                    <input type="text" class="form-control" id="location" name="location" maxlength="50" required>
                </div>

                <!-- Contact -->
                <div class="form-group">
                    <label for="contact">Contact:</label>
                    <input type="text" class="form-control" id="contact" name="contact" maxlength="10" pattern="[0-9]{10}" title="Please enter a valid 10-digit contact number" required>
                </div>
            </div>

            <!-- Submit and Clear Buttons -->
            <div class="btn-container">
                <button type="reset" class="btn btn-secondary">Clear</button>
                <button type="submit" class="btn btn-primary">Register</button>
            </div>
        </form>
    </div>
</body>
</html>
