<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard with Hover Nav</title>
<!-- Font Awesome for icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        height: 100vh;
    }
    /* Logo Styles */
    .logo-container {
        display: flex;
        align-items: center;
    }

    .logo {
        display: flex;
        align-items: center;
        gap: 0.75rem;
        font-family: 'Playfair Display', serif;
        font-size: 1.75rem;
        font-weight: 700;
        color: #ffffff;
        transition: var(--transition);
    }

    .logo-icon {
        font-size: 1.5rem;
        background: linear-gradient(135deg, #6a82fb, #fc5c7d); /* Cool gradient color */
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        transition: var(--transition);
    }

    .logo:hover {
        transform: scale(1.05);
    }

    .logo:hover .logo-icon {
        transform: rotate(-15deg);
    }

    /* Top Navigation Bar */
    .topnav {
        background-color: #3a7ca5;  /* Cool blue color */
        color: #ffffff;
        padding: 10px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 1000;
    }

    .topnav .logo {
        font-size: 24px;
        font-weight: bold;
        color: #ffffff;
    }

    .topnav .logout {
        font-size: 18px;
        color: #ffffff;
        text-decoration: none;
        padding: 10px 20px;
        background-color: #57a7d1; /* Cool blue button color */
        border-radius: 25px;
        transition: background-color 0.3s;
    }

    .topnav .logout:hover {
        background-color: #3a7ca5; /* Darker blue on hover */
    }

    /* Side Navigation (Fixed) */
    .sidenav {
        width: 200px;
        background-color: #57a7d1; /* Cool blue color */
        padding-top: 20px;
        position: fixed;
        top: 50px; /* Adjusted to below top nav */
        bottom: 0;
        left: 0;
        overflow: hidden;
        transition: width 0.3s;
        z-index: 999;
    }

    .sidenav a {
        padding: 15px 20px;
        display: block;
        color: #ffffff;
        text-decoration: none;
        font-size: 18px;
        transition: padding-left 0.3s;
        display: flex;
        align-items: center;
    }

    .sidenav a i {
        margin-right: 10px;
    }

    .sidenav a:hover {
        background-color: #3a7ca5; /* Cool blue hover */
        padding-left: 30px;
    }

    /* Main Content */
    .main-content {
        margin-left: 200px;
        padding: 20px;
        flex: 1;
        background-color: #f4f8fa;  /* Light cool gray background */
        transition: margin-left 0.3s;
        margin-top: 50px; /* Adjust for the space taken by the top nav */
    }

    /* Toggle Button */
    .toggle-btn {
        font-size: 24px;
        color: #ffffff;
        cursor: pointer;
        display: none;
        padding: 10px 15px;
    }

    /* Adjust main content margin when sidenav is active */
    .sidenav-active ~ .main-content {
        margin-left: 0;
    }

    /* Responsive Sidebar */
    @media screen and (max-width: 768px) {
        .sidenav {
            width: 0;
        }

        .sidenav a {
            font-size: 16px;
        }

        .topnav {
            flex-direction: column;
            justify-content: center;
        }

        .main-content {
            margin-left: 0;
            margin-top: 100px; /* Adjust for the top nav height */
        }

        /* Show toggle button for mobile screens */
        .toggle-btn {
            display: block;
        }

        /* When sidenav is active on smaller screens */
        .sidenav-active {
            width: 200px;
        }
    }
</style>


</head>
<body>
    <!-- Top Navigation Bar -->
    <div class="topnav">
        <div class="logo-container">
            <a href="emphome" class="logo">
                <i class="fa-solid fa-user-tie"></i>
                JobsNest
            </a>
        </div>
        <a href="emplogout" class="logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
        <span class="toggle-btn" onclick="toggleNav()"><i class="fas fa-bars"></i></span>
    </div>
	    
	<!-- Side Navigation Bar -->
	<div id="sidenav" class="sidenav">
	    <a href="emphome"><i class="fas fa-home"></i> Home</a>
	    <a href="addjob"><i class="fas fa-plus-circle"></i> Add Job</a>
	    <a href="viewalljobs"><i class="fas fa-list"></i> View All Jobs</a>
	    <!--         <a href="empviewmyJobById">View My Posted Jobs</a> -->
	    <a href="empprofile"><i class="fas fa-user"></i> Profile</a>
	    <a href="updateemp"><i class="fas fa-user-edit"></i> Update Profile</a>
	</div>


    <!-- JavaScript for toggling the sidebar -->
    <script>
        function toggleNav() {
            var sidenav = document.getElementById("sidenav");
            sidenav.classList.toggle("sidenav-active");
        }
    </script>
</body>
</html>
