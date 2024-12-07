<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ecf0f1;
        }

        /* Top Navbar */
        .top-navbar {
            width: 100%;
            height: 70px;
            background-color: #004d61;
            color: #ffffff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1001;
        }

        .top-navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .top-navbar .logout {
            text-decoration: none;
            color: #ffffff;
            font-size: 16px;
            display: flex;
            align-items: center;
            gap: 5px;
            transition: all 0.3s ease-in-out;
        }

        .top-navbar .logout:hover {
            color: #ff6b6b;
            transform: scale(1.1);
        }

        /* Sidebar Styles */
        .sidebar {
            position: fixed;
            top: 70px;
            left: 0;
            width: 250px;
            height: calc(100% - 70px);
            background-color: #2c3e50;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            padding: 20px 10px;
            z-index: 1000;
            box-shadow: 4px 0px 8px rgba(0, 0, 0, 0.2);
        }

        .sidebar a, .dropdown button {
            color: #ffffff;
            text-decoration: none;
            padding: 15px 20px;
            width: 100%;
            text-align: left;
            font-size: 16px;
            display: flex;
            align-items: center;
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
        }

        .sidebar a:hover, .dropdown button:hover {
            background-color: #3498db;
            transform: translateX(10px);
        }

        .sidebar a i, .dropdown button i {
            margin-right: 10px;
        }

        .menu {
            display: flex;
            flex-direction: column;
            width: 100%;
        }

        .dropdown {
            width: 100%;
        }

        .dropdown button {
            background-color: transparent;
            border: none;
            cursor: pointer;
            font-size: 16px;
            text-align: left;
        }

        .dropdown-content {
            display: none;
            background-color: #34495e;
            flex-direction: column;
            margin-left: 20px;
            border-left: 3px solid #3498db;
            border-radius: 8px;
            padding: 10px;
        }

        .dropdown-content a {
            padding: 10px;
            color: #ffffff;
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
        }

        .dropdown-content a:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }

        .dropdown:hover .dropdown-content {
            display: flex;
        }

        /* Main Content */
        .content {
            margin-left: 260px;
            margin-top: 90px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .content:hover {
            box-shadow: 0px 6px 16px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #004d61;
        }

        p {
            color: #2c3e50;
            line-height: 1.6;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .content {
                margin-left: 0;
                margin-top: 100px;
            }
        }
    </style>
</head>
<body>

<!-- Top Navbar -->
<div class="top-navbar">
    <div class="logo">Admin Panel</div>
    <a href="adminlogin" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>

<!-- Sidebar -->
<div class="sidebar">
    <div class="menu">
        <a href="adminhome"><i class="fas fa-home"></i> Home</a>
        <div class="dropdown">
            <button><i class="fas fa-users"></i> Employee</button>
            <div class="dropdown-content">
                <a href="viewallemps"><i class="fas fa-eye"></i> View All Employees</a>
                <a href="deleteemp"><i class="fas fa-trash"></i> Delete Employees</a>
            </div>
        </div>
        <div class="dropdown">
            <button><i class="fas fa-user-graduate"></i> Student</button>
            <div class="dropdown-content">
                <a href="viewallstus"><i class="fas fa-eye"></i> View All Students</a>
                <a href="deletestu"><i class="fas fa-trash"></i> Delete All Students</a>
            </div>
        </div>
        <a href="count"><i class="fas fa-chart-bar"></i> Total Count</a>
        <a href="adminviewjob"><i class="fas fa-chart-bar"></i> JOBS </a>
    </div>
</div>

</body>
</html>
