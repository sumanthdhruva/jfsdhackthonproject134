<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            position: relative;
            background: rgba(0, 0, 0, 0.6); /* Dark overlay */
        }

        /* Background image with blur effect */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://media.istockphoto.com/id/1284549946/photo/digital-marketing-concept-online-advertisement.jpg?s=612x612&w=0&k=20&c=KWrdOaQbNF41m3TDDSn9JqvKDeHuMtvDiMPJOCGP4d0=') no-repeat center center/cover;
            filter: blur(2px); /* Blur effect */
            z-index: 0;
            opacity: 0.7; /* Optional: adjust opacity for effect */
        }

        /* Container for login box with glassmorphism */
        .container {
            position: relative;
            z-index: 1;
            max-width: 380px;
            width: 100%;
            padding: 20px;
        }

        .login-box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            border-radius: 15px;
            padding: 40px 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            transition: transform 0.3s ease;
            color: white;
            text-align: center;
        }

        .login-box:hover {
            transform: scale(1.05);
        }

        .logo {
            font-size: 40px;
            color: #fff;
            margin-bottom: 15px;
        }

        h2 {
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 4px;
        }

        .subtitle {
            font-size: 17px;
            color: #ddd;
            margin-bottom: 30px;
        }

        .input-group {
            position: relative;
            margin-bottom: 25px;
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.2);
            padding: 10px;
            border-radius: 10px;
            transition: background 0.3s;
        }

        .input-group i {
            color: #ddd;
            margin-right: 10px;
        }

        .input-group input {
            width: 100%;
            border: none;
            outline: none;
            background: transparent;
            color: #fff;
            font-size: 14px;
        }

        .input-group input::placeholder {
            color: #ddd;
            opacity: 0.7;
        }

        .input-group:hover {
            background: rgba(255, 255, 255, 0.3);
        }

        .toggle-password {
            color: #ddd;
            cursor: pointer;
            transition: color 0.3s;
        }

        .toggle-password:hover {
            color: #fff;
        }

        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 15px 0;
        }

        .remember input {
            margin-right: 5px;
        }

        .forgot {
            color: #b0c4de;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s;
            align: center;
        }

        .forgot:hover {
            color: #fff;
            align-items: center;
        }

        .error-message {
            color: #ff3333;
            font-size: 14px;
            margin-bottom: 15px;
            text-align: center;
            padding: 5px;
            border-radius: 5px;
            background-color: rgba(255, 51, 51, 0.1);
            display: none;
        }

        .error-message:not(:empty) {
            display: block;
        }

		h2, .input-group input,  .button-text {
		        color: #fff;
		        font-weight: 600; /* Increase font weight for thickness */
		    }
		    .subtitle{
		    	color: #fff;
		        font-weight: 300; 
		    }
		    .forgot{
		    	color: lightblue;
		        font-weight: 300;
		        align-content: center;
		    }
		
		    h2 {
		        font-size: 28px;
		        color: #fff;
		        font-weight: 700; /* Extra thickness for heading */
		    }
		
		    .forgot:hover {
		        color: #f2f2f2; /* Slightly lighter white for hover effect */
		    }
		
		    button {
		        color: #fff;
		        font-weight: 600;
		    }
		
		    .login-box i, .input-group i, .toggle-password {
		        color: #ddd; /* Adjust icon color */
		    }
		
		    .toggle-password:hover {
		        color: #fff; /* White on hover */
		    }
        button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            font-weight: 500;
            transition: all 0.3s ease;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 8px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.5);
        }

        .button-text {
            font-weight: 500;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-box">
            <div class="logo">
                <i class="fas fa-user-shield"></i>
            </div>
            <h2>Welcome</h2>
            <p class="subtitle">Enter your credentials to access the admin panel</p>
            
            <form method="post" action="checkadminlogin">
                <div class="input-group">
                    <i class="fas fa-user"></i>
					<input type="text" id="auname" name="auname" placeholder="Username" required="required">                </div>
                <div class="input-group">
                    <i class="fas fa-lock"></i>
					<input type="password" id="apwd" name="apwd" placeholder="Password" required="required">
                    <i class="fas fa-eye toggle-password" id="togglePassword"></i>
                </div>
                <div class="remember-forgot">
<!--                     <label class="remember"> -->
<!--                         <input type="checkbox" id="remember"> -->
<!--                         Remember me -->
<!--                     </label> -->
					<a href="#" class="forgot" onclick="forgotPassword()">Forgot password?</a>   
                </div>
                <div class="error-message" id="errorMessage"></div>
                <button type="submit">
                    <span class="button-text">Login</span>
                    <i class="fas fa-arrow-right"></i>
                </button>
            </form>
        </div>
    </div>
    <script>
	    const togglePassword = document.getElementById("togglePassword");
	    const passwordInput = document.getElementById("apwd");
	
	    function forgotPassword() {
	        alert("Please contact Owner at jsumanth19@gmail.com for password assistance.");
	    }
	    
	    togglePassword.addEventListener("click", () => {
	        const type = passwordInput.getAttribute("type") === "password" ? "text" : "password";
	        passwordInput.setAttribute("type", type);
	        togglePassword.classList.toggle("fa-eye-slash");
	    });
	</script>
</body>
</html>
