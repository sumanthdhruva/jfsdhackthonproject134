<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JobsNest - Your Career Gateway</title>
    <link rel="stylesheet" href="mainnav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
</head>
<body>
    <header class="header">
        <div class="logo-container">
            <a href="/" class="logo">
                <i class="fa-solid fa-user-tie"></i>
                JobsNest
            </a>
        </div>

        <input type="checkbox" id="checkbox">
        <label for="checkbox" class="icons">
            <i class="fa-solid fa-bars" id="menu-icon"></i>
            <i class="fa-solid fa-xmark" id="close-icon"></i>
        </label>

        <nav class="navbar">
            <ul>
                <li class="nav-item">
                    <a href="/" class="menu-item">
                        <i class="fa-solid fa-house"></i>
                        <span>Home</span>
                        <span class="nav-indicator"></span>
                    </a>
                </li>
                <li class="dropdown nav-item">
                    <span class="dropdown-trigger">
                        <i class="fas fa-user-graduate"></i>
                        <span>Student</span>
                        <i class="fas fa-chevron-down arrow-icon"></i>
                        <span class="nav-indicator"></span>
                    </span>
                    <div class="dropdown-content">
                        <a href="stureg" class="dropdown-item">
                            <i class="fas fa-user-plus"></i>
                            <span>Registration</span>
                        </a>
                        <a href="stulogin" class="dropdown-item">
                            <i class="fas fa-sign-in-alt"></i>
                            <span>Login</span>
                        </a>
                    </div>
                </li>
                <li class="dropdown nav-item">
                    <span class="dropdown-trigger">
                        <i class="fas fa-briefcase"></i>
                        <span>Employee</span>
                        <i class="fas fa-chevron-down arrow-icon"></i>
                        <span class="nav-indicator"></span>
                    </span>
                    <div class="dropdown-content">
                        <a href="empreg" class="dropdown-item">
                            <i class="fas fa-user-plus"></i>
                            <span>Registration</span>
                        </a>
                        <a href="emplogin" class="dropdown-item">
                            <i class="fas fa-sign-in-alt"></i>
                            <span>Login</span>
                        </a>
                    </div>
                </li>
                <li class="nav-item">
                    <a href="contactus" class="menu-item">
                        <i class="far fa-address-book"></i>
                        <span>Contact</span>
                        <span class="nav-indicator"></span>
                    </a>
                </li>
            </ul>
        </nav>

        <div class="premium">
            <a href="payment" class="premium-button">
                <i class="fas fa-crown"></i>
                <span>Go Premium</span>
            </a>
        </div>
    </header>
</body>
</html>