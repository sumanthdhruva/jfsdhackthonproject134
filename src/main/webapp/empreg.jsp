<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <link rel="stylesheet" href="stu.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /* General styles */
        body {
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            font-family: 'Roboto', Arial, sans-serif; /* Consistent font */
        }

       .container {
    margin-top: 50px;
    background-color: #ffffff; /* White background for the form */
    padding: 30px;
    border-radius: 8px; /* Rounded corners */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
    position: relative;
    background: linear-gradient(to top, rgba(255, 255, 255, 0.8), rgba(255, 255, 255, 0)); /* Keeps background gradient */
    z-index: 1; /* Ensure the container is above the background image */
}


		

        /* Form styles */
        .form-row {
            margin-bottom: 20px;
        }

        /* Equal width for form controls */
        .form-group {
            flex: 1;
            margin-right: 10px; /* Space between columns */
        }

        .form-group:last-child {
            margin-right: 0; /* No margin on the last element */
        }

        .form-control {
            border-radius: 8px; /* Rounded input fields */
            border: 1px solid #ced4da; /* Light gray border */
            transition: border-color 0.3s ease; /* Transition effect */
        }

        .form-control:focus {
            border-color: #4a90e2; /* Highlight border on focus */
            box-shadow: 0 0 5px rgba(74, 144, 226, 0.5); /* Focus shadow effect */
        }

        /* Button styles */
        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn {
            padding: 12px 20px; /* Padding for buttons */
            font-size: 16px;
            font-weight: 500;
            border-radius: 8px; /* Rounded corners */
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease; /* Transition effects */
        }

        /* Primary button styles */
        .btn-primary {
            background-color: #4a90e2;
            color: #fff;
            border: none; /* Remove default border */
        }

        .btn-primary:hover {
            background-color: #357abd;
            transform: translateY(-2px); /* Lift effect on hover */
        }

        /* Secondary button styles */
        .btn-secondary {
            background-color: #999;
            color: #fff;
            border: none; /* Remove default border */
        }
        img.background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
             position: fixed;
            object-fit: cover; /* Ensures the image covers the full screen */
            z-index: -1; /* Sends the image behind the content */
        }

        .btn-secondary:hover {
            background-color: #777;
            transform: translateY(-2px); /* Lift effect on hover */
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .form-row {
                flex-direction: column; /* Stack inputs vertically */
            }
            
            .form-group {
                margin-right: 0; /* Reset margin for single column */
                width: 100%; /* Full width for form groups */
            }
            
            .btn-container {
                flex-direction: column; /* Stack buttons vertically */
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
    <img src="images/emp.jpg" alt="Background" class="background">
    <div class="container">
    
        <h2 class="text-center mb-4">Employee Registration</h2>
        <form action="insertemp" method="post">
            <div class="form-row">
                <!-- Employee ID -->
                <div class="form-group">
                    <label for="eid">Employee ID:</label>
                    <input type="text" class="form-control" id="eid" name="eid" maxlength="10" required>
                </div>

                <!-- Name -->
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" maxlength="50" required>
                </div>
            </div>
            <div class="form-row">
                <!-- Gender -->
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <select class="form-control" id="gender" name="gender" required>
                        <option value="" disabled selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <!-- Date of Birth -->
                <div class="form-group">
                    <label for="dob">Date of Birth:</label>
                    <input type="date" class="form-control" id="dob" name="dob" required>
                </div>
            </div>
            <div class="form-row">
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
                        <option value="aeronaticalengeneering">Aeronatical Engineering</option>
                        <option value="chemicalengeneering">Chemical Engineering</option>
                    </select>                       
                </div>
                <!-- Salary -->
                <div class="form-group">
                    <label for="salary">Enter Salary:</label>
                    <input type="number" class="form-control" id="salary" name="salary" step="0.01" required>
                </div>
            </div>
            <div class="form-row">
                <!-- Email -->
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" maxlength="50" required>
                </div>
            </div>
            <div class="form-row">
                <!-- Password -->
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>

                <!-- Location -->
                <div class="form-group">
                    <label for="location">Location:</label>
                    <input type="text" class="form-control" id="location" name="location" maxlength="100" required>
                </div>
            </div>
            <div class="form-row">
                <!-- Contact -->
                <div class="form-group">
                    <label for="contact">Contact:</label>
    				<input type="tel" class="form-control" id="contact" name="contact" maxlength="10" pattern="[789][0-9]{9}" title="Contact must start with 7, 8, or 9 and be 10 digits long" required>
                </div>
            </div>
            <div class="form-row">
                <!-- Status -->
                <div class="form-group">
                    <label for="status">Status:</label>
                    <input type="text" class="form-control" id="status" name="status" maxlength="100" required>
                </div>

                <!-- Experience -->
                <div class="form-group">
                    <label for="experience">Experience (years):</label>
                    <input type="number" class="form-control" id="experience" name="experience" min="0" required>
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
