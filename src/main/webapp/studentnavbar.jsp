<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Responsive Dashboard with Icons</title>
<!-- Font Awesome CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
    body {
        font-family: 'Verdana', sans-serif;
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
        color: #3F51B5; /* Light Indigo */
        transition: var(--transition);
    }

    .logo-icon {
        font-size: 1.5rem;
        background: linear-gradient(135deg, #FF4081, #03A9F4); /* Pink to Light Blue gradient */
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
        width: 100%;
        background-color: #E1F5FE; /* Very light blue */
        color: #333333; /* Dark grey text for contrast */
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px;
        position: fixed;
        top: 0;
        z-index: 1000;
    }

    .topnav .logo {
        font-size: 20px;
        font-weight: bold;
    }

    .topnav .logout {
        color: #333333; /* Dark text */
        text-decoration: none;
        font-size: 16px;
        display: initial;
        align-items: center;
        gap: 30px;
        background-color: #FFEB3B; /* Light yellow */
        padding: 8px 25px;
        border-radius: 20px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        transition: all 0.3s;
        margin-left: 100px;
    }

    .topnav .logout:hover {
        background-color: #FFCA28; /* Darker yellow */
        transform: scale(1.05);
        box-shadow: 0 6px 10px rgba(0, 0, 1, 0.3);
    }

    /* Side Navigation */
    .sidenav {
        width: 200px;
        background-color: #B3E5FC; /* Light sky blue */
        padding-top: 60px; /* Push below top nav */
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
        overflow-x: hidden;
        transition: width 0.3s, transform 0.3s;
        margin-top: 50px;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
    }

    .sidenav a {
        padding: 15px 20px;
        display: flex;
        align-items: center;
        gap: 10px;
        color: #333333;
        text-decoration: none;
        font-size: 18px;
        transition: padding-left 0.3s, background-color 0.3s;
    }

    .sidenav a i {
        font-size: 18px;
    }

    .sidenav a:hover {
        background-color: #FF4081; /* Pink */
        padding-left: 30px;
    }

    /* Toggle button */
    .sidenav-toggle {
        display: none;
        background-color: transparent;
        color: black;
        border: none;
        font-size: 24px;
        padding: 10px;
        cursor: pointer;
        position: fixed;
        top: 60px;
        left: 10px;
        z-index: 1000;
        transition: transform 0.3s;
    }

    .sidenav-toggle:hover {
        transform: scale(1.1);
    }

    /* Main Content */
    .main-content {
        margin-left: 200px;
        margin-top: 60px;
        padding: 20px;
        flex: 1;
        background-color: #F3F4F6; /* Light grey background */
        transition: margin-left 0.3s;
    }

    /* Adjust for small screens */
    @media (max-width: 768px) {
        .sidenav {
            width: 200px;
            transform: translateX(-100%);
        }

        .sidenav.open {
            transform: translateX(0);
        }

        .sidenav-toggle {
            display: block;
        }

        .main-content {
            margin-left: 0;
        }

        .main-content.shifted {
            margin-left: 200px;
        }
    }
</style>


<script>
    // JavaScript for toggle functionality
    document.addEventListener("DOMContentLoaded", () => {
        const toggleButton = document.querySelector('.sidenav-toggle');
        const sidenav = document.querySelector('.sidenav');
        const mainContent = document.querySelector('.main-content');

        toggleButton.addEventListener('click', () => {
            sidenav.classList.toggle('open');
            mainContent.classList.toggle('shifted');
        });
    });
</script>
</head>
<body>
    <!-- Top Navigation Bar -->
    <div class="topnav">
        <div class="logo-container">
            <a href="stuhome" class="logo">
                <i class="fa-solid fa-user-tie"></i>
                JobsNest
            </a>
        </div>
        <a href="stulogout" class="logout">
            <i class="fas fa-power-off"></i> Logout
        </a>
    </div>

    <!-- Toggle Button -->
    <button class="sidenav-toggle" aria-label="Toggle navigation">☰</button>

    <!-- Side Navigation Bar -->
    <div class="sidenav">
        <a href="stuhome"><i class="fas fa-home"></i>Home</a>
        <a href="viewallstujobs"><i class="fas fa-briefcase"></i>View All Jobs</a>
        <a href="stuprofile"><i class="fas fa-user"></i>Profile</a>
        <a href="updatestu"><i class="fas fa-user-edit"></i>Update Profile</a>
    </div>

</body>
</html>
